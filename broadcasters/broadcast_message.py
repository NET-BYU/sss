from dataclasses import dataclass


class BroadcastType:
    SOUND = "sound"
    TEXT = "text"


@dataclass
class BroadcastMessage:
    """
    A dataclass to hold a broadcast message.
    """

    type: BroadcastType
    message: str
