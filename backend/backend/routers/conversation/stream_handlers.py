import asyncio
import io
import logging
import os
from dataclasses import dataclass
from datetime import datetime
from typing import Iterator, List, Union

import aiofiles
from fastapi import (APIRouter, FastAPI, Query, Request, WebSocket,
                     WebSocketDisconnect)
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates

import backend.eleven_labs.client as TTSClient
import backend.openai.client as LLMClient
from backend.conf import (get_jinja_templates_path, get_openai_api_key,
                          get_openai_model, get_openai_organisation,
                          get_root_package_path, initialise_app)
from backend.constants import STOP_MESSAGE_PATTERN
from backend.db.dao import interviews_dao
from backend.db.schemas.interviews import (ConversationEntryEmbedded,
                                           ConversationEntryRole)
from backend.openai.models import GPTMessageEntry, GPTMessages

LOGGER = logging.getLogger(__name__)
CURRENT_CONVERSATION = interviews_dao.get_last_generated_interview_session().id

async def handle_audio_stream(websocket: WebSocket, user_id: str) -> str:
    """
    Handles incoming audio stream until a stop message is received.
    Returns the full text data based of the transcribed audio.
    """
    ret = []
    while True:
        audio_data = await websocket.receive_bytes()
        if is_stop_message(audio_data):  # Define how to recognize a stop message
            break
        text_chunk = await handle_audio_input(user_id, audio_data)
        ret.append(text_chunk)
    return "".join(ret)


async def handle_audio_input(user_id: str, audio_data: bytes) -> str:
    """
    Handles incoming audio data.
    """
    return str(audio_data)[
        :10
    ]  # TODO Dummy implementation, replace with actual implementation


async def handle_text_stream(websocket: WebSocket, user_id: str) -> str:
    """
    Handles incoming text stream until a stop message is received.
    Returns the full text data.
    """
    ret = []
    start_timestamp = datetime.now()
    while True:
        text_data = await websocket.receive_text()
        if is_stop_message(text_data):
            break
        text_chunk = await handle_text_input(user_id, text_data)
        ret.append(text_chunk)
    user_response = "".join(ret)
    end_timestamp = datetime.now()

    # Save reponse to db
    interviews_dao.add_message_to_interview_session(
        session_id=CURRENT_CONVERSATION,
        conversation_entry=ConversationEntryEmbedded(
            role=ConversationEntryRole.CANDIDATE.value,
            message=user_response,
            tokens=len(user_response.split(" ")),
            start_timestamp=start_timestamp,
            end_timestamp=end_timestamp,
            model=get_openai_model(),
        ),
    )
    return user_response


async def handle_text_input(user_id: str, text_data: str) -> str:
    """
    Handles incoming text data.
    """
    LOGGER.info(f"Received text data: {text_data}")
    return text_data


def is_stop_message(data: Union[str, bytes]) -> bool:
    """
    Checks if the given data is a stop message based on the configured stop message pattern.
    """

    if isinstance(data, bytes):
        try:
            return data.decode("utf-8") == STOP_MESSAGE_PATTERN
        except UnicodeDecodeError:
            return False
    elif isinstance(data, str):
        return data == STOP_MESSAGE_PATTERN

    return False
