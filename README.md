# 🧠 MindMate Harmony (Jac Project)

MindMate Harmony is an advanced **Jac-based AI application** inspired by *LittleX*, designed to support **emotional well-being** through intelligent mood tracking, journaling, and AI-powered supportive interactions.

Built using **Jac’s object–spatial programming model**, MindMate Harmony demonstrates how **graph computing, AI, and human-centered design** can come together to promote mental wellness.

---

## ✨ Key Features

### 🔧 Backend (Jac Core)
- **Graph-based modeling of:**
  - Users, Moods, Emotions, Triggers, Journal entries, and Suggestions.
- **Walkers handle:**
  - User login & session flow.
  - Mood logging with trigger relationships.
  - Secure journal entry creation.
  - Mood trend analysis.
  - Emotion–trigger graph generation.
- 🤖 **AI-powered supportive advice** using `by llm()` functions.
- **Clean separation of concerns:**
  - `backend.jac` → server coordination.
  - `api.jac` → API walker logic.

---

### 🎨 Frontend (jac-client)
- Interactive UI walkers built with **jac-client**.
- **Supports:**
  - Mood logging (emoji / text–ready design).
  - Secure personal journaling.
  - Insights timeline.
- **Visualizes:**
  - Mood frequency, Trigger influence, and Emotional trends over time.
- **Delivers:**
  - Real-time supportive tips and weekly emotional wellness plans.

---

## 🗂️ Project Structure

```text
MindMate-Harmony/
├── main.jac                # Application entry point
├── backend/
│   ├── backend.jac         # Backend startup & coordination
│   └── api.jac             # API walker implementations
├── frontend/
│   ├── frontend.jac        # Frontend UI walker
│   └── ui.jac              # UI components & interactions
├── models/
│   ├── user.jac            # User node
│   ├── mood.jac            # Mood node
│   ├── journal.jac         # Journal entry node
│   ├── emotion.jac         # Emotion node
│   ├── trigger.jac         # Trigger node
│   └── suggestion.jac      # Suggestion node
├── utility/
│   ├── helpers.jac         # Helper functions
│   └── constants.jac       # Application constants
└── README.md               # Project documentation```

---

## 🚀 Getting Started
1️⃣ Clone the Repository
Bash

git clone [https://github.com/Ndarila/MindMate-Harmony.git](https://github.com/Ndarila/MindMate-Harmony.git)
cd MindMate-Harmony
2️⃣ Install Jac
Follow the official Jac documentation to set up your Jac environment.

3️⃣ Run the Application
Bash

jac run main.jac
✔️ This launches both the backend server and the frontend UI walkers.

---

## 🧭 Usage Guide
Log moods and emotional intensity.

Add private journal entries.

Receive AI-generated supportive advice.

View mood trends and trigger insights.

Get real-time tips and weekly emotional plans.

---

## 🧩 Core Concepts Used
🔹 Nodes (Core Graph Entities)
User, Mood, JournalEntry, Emotion, Trigger, Suggestion.

🔹 Walkers (Logic & Flow)
Authentication: User login and security.

Data Entry: Mood logging and journaling.

Intelligence: Advice generation and trend analysis.

🔹 AI & Frontend
AI Integration: Uses by llm() for personalized, context-aware support.

Frontend Logic: Event-driven interaction model via jac-client.

---

## 🤝 Contributing
Contributions are welcome!

Fork the repository.

Create a feature branch.

Commit changes and submit a pull request 🚀.

---

## 📄 License
This project is licensed under the MIT License.

---

## 🎥 Demo Video
🎬 Coming soon The demo will showcase mood logging, AI advice, and emotion graph visualization.

---

## ⭐ If you find this project useful, please consider giving it a GitHub star!