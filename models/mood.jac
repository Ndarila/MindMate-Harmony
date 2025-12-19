node Mood {
    has mood: str;
    has intensity: int;
    has timestamp: str;
    can influenced_by with Trigger entry;
}