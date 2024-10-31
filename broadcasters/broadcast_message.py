from dataclasses import dataclass


@dataclass
class BroadcastSoundMessage:
    """
    A dataclass to hold a broadcast message.
    """

    file: str
    # channel: int


@dataclass
class BroadcastTextMessage:
    """
    A dataclass to hold a broadcast message.
    """

    text: str
