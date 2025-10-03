# DIT3-1-PJCR-Act02
MobileApp-Relente-Act02
---
1. What did you observe about the app lifecycle when switching between screens or minimizing the app?

When I switch between Screen 1 and Screen 2, I observed that the first screen goes through onPause and onStop, and the new screen runs onCreate, onStart, and onResume.

When I go back, the previous screen doesn’t start from scratch. Instead, it triggers a kind of onRestart and onResume.

When minimizing the app, the current screen lifecycle also pauses/stops, and when I open it again, it resumes where it left off

2. What did you learn about activity management in Android?
I learned that activity management in Android is not just about showing different screens, but also about handling the lifecycle of each activity properly. Each activity goes through stages like creation, start, resume, pause, stop, restart, and destroy.

Through the activity, I also realized that managing lifecycles is important to avoid errors, crashes, or memory leaks when switching between screens or minimizing the app.

I also learned that setting up the environment and tools (like Flutter, SDK, and emulator) is part of activity management in practice, because without them the app cannot run smoothly. Facing challenges made me understand how important correct configuration and lifecycle handling are in mobile app development.
