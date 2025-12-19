\# Mindmate Harmony - Jac Project



Mindmate Harmony is an advanced Jac application inspired by LittleX, designed to support emotional well-being through AI-powered mood tracking and supportive interactions.



\## Features



\### Backend:

\- Uses Jac nodes to model emotions, triggers, activities, suggestions, and journal entries.

\- Walkers log mood entries, update emotional graphs, and detect mood trends.

\- AI-powered supportive advice generation via by llm() functions.



\### Frontend:

\- Interfaces for mood logging via emoji wheels, text, and voice inputs using jac-client.

\- Secure journaling and insights timeline.

\- Visualization of emotion-trigger-habit graphs to identify patterns and track progress.

\- Real-time supportive tips and weekly plans delivered through spawned walkers.



\## Project Structure

MindMate-Harmony/

├── main.jac

├── backend/

│ ├── backend.jac

│ └── api.jac

├── frontend/

│ ├── frontend.jac

│ └── ui.jac

├── models/

│ ├── user.jac

│ ├── mood.jac

│ ├── journal.jac

│ ├── suggestion.jac

│ ├── trigger.jac

│ └── emotion.jac

└── utility/

├── helpers.jac

└── constants.jac





\## Getting Started

1\. Clone this repository.

2\. Install the Jac environment as per the Jac documentation.

3\. Run the application:

```bash

jac run main.jac

The backend server and frontend UI will launch.



Usage

Use the frontend UI to log moods, add journal entries, and view supportive advice.



Visualize mood trends and emotional graphs.



Receive real-time tips and weekly plans.



Key Components

Nodes: Define core entities such as User, Mood, JournalEntry, Suggestion, Trigger, and Emotion.



Walkers: Implement backend API abilities for user login, mood logging, journaling, advice retrieval, mood graphing, and trend detection.



AI Integration: by llm() functions generate personalized supportive advice.



Frontend: jac-client based UI walkers handle user interactions and display insights.



Contribution

Contributions are welcome! Please fork the repository and submit pull requests.



License

This project is licensed under the MIT License - see the LICENSE file for details.



For more details, refer to the source Jac files and the official Jac documentation.





---



\## \*\*Step 4: Commit and push to GitHub\*\*



```powershell

git add -A

git commit -m "Added full MindMate-Harmony Jac project structure with code"

git push origin main

