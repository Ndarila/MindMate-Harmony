import from jac_client import *;
import models.user;
import models.mood;
import models.journal;
import models.suggestion;
import models.trigger;
import models.emotion;
import utility.helpers;

walker API {
    can login with `root entry;
    can log_mood with `root entry;
    can add_journal with `root entry;
    can get_advice with `root entry;
    can get_mood_graph with `root entry;
    can get_trends with `root entry;
}

impl API.login {
    existing_users = [root-->(`?User)];
    user_found = None;
    for u in existing_users {
        if u.username == visitor.username {
            user_found = u;
            break;
        }
    }
    if user_found == None {
        user_found = User(visitor.username);
        root ++> user_found;
    }
    report f"User logged in: {user_found.username}";
}

impl API.log_mood {
    existing_users = [root-->(`?User)];
    user = None;
    for u in existing_users {
        if u.username == visitor.username {
            user = u;
            break;
        }
    }
    if user == None {
        report "User not found. Please login first.";
        return;
    }
    mood_entry = Mood(visitor.mood, visitor.intensity, visitor.timestamp);
    user ++> mood_entry;
    for trig in visitor.triggers {
        trigger_node = Trigger(trig);
        mood_entry +>:influenced_by:+> trigger_node;
    }
    report f"Mood '{visitor.mood}' logged with intensity {visitor.intensity}";
}

impl API.add_journal {
    existing_users = [root-->(`?User)];
    user = None;
    for u in existing_users {
        if u.username == visitor.username {
            user = u;
            break;
        }
    }
    if user == None {
        report "User not found. Please login first.";
        return;
    }
    journal_entry = JournalEntry(visitor.content, visitor.timestamp);
    user ++> journal_entry;
    report "Journal entry added";
}

impl API.get_advice {
    advice_text = generate_supportive_advice(visitor.mood, visitor.journal_text);
    existing_users = [root-->(`?User)];
    user = None;
    for u in existing_users {
        if u.username == visitor.username {
            user = u;
            break;
        }
    }
    if user != None {
        suggestion = Suggestion(advice_text);
        user ++> suggestion;
    }
    report advice_text;
}

impl API.get_mood_graph {
    existing_users = [root-->(`?User)];
    user = None;
    for u in existing_users {
        if u.username == visitor.username {
            user = u;
            break;
        }
    }
    if user == None {
        report {};
        return;
    }
    moods = [user --> (`?Mood)];
    triggers = [user --> (`?Trigger)];
    mood_counts = {};
    for m in moods {
        if m.mood in mood_counts {
            mood_counts[m.mood] += 1;
        } else {
            mood_counts[m.mood] = 1;
        }
    }
    trigger_counts = {};
    for t in triggers {
        if t.name in trigger_counts {
            trigger_counts[t.name] += 1;
        } else {
            trigger_counts[t.name] = 1;
        }
    }
    report {"mood_counts": mood_counts, "trigger_counts": trigger_counts};
}

impl API.get_trends {
    existing_users = [root-->(`?User)];
    user = None;
    for u in existing_users {
        if u.username == visitor.username {
            user = u;
            break;
        }
    }
    if user == None {
        report {};
        return;
    }
    moods = [user --> (`?Mood)];
    last_moods = moods[-7:];
    trend_counts = {};
    for m in last_moods {
        if m.mood in trend_counts {
            trend_counts[m.mood] += 1;
        } else {
            trend_counts[m.mood] = 1;
        }
    }
    report trend_counts;
}

def generate_supportive_advice(mood: str, journal_text: str) -> str by llm();

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);