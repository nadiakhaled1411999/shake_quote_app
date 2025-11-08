 🌀 Shake Quote App

A simple yet powerful motivational app built with Flutter and Kotlin, showing a random motivational quote every time you shake your phone! 💪✨

✨ Overview

This feature mixes Flutter UI with native Android (Kotlin) sensors using communication channels.

You’ll detect phone shakes using Android’s SensorManager, then send that event to Flutter, which displays a random quote with a smooth animation and a short toast message.

🧠 How It Works

Kotlin (Native Android)

Detects device shakes using the accelerometer sensor.

Sends an "onShakeDetected" event to Flutter through an EventChannel.

All logic is handled inside MainActivity.kt.

Flutter (Dart)

Listens for shake events from the Kotlin side.

Displays a new random quote inside an animated card.

Shows a toast message with the same quote for extra feedback.

📱 Example Quotes

Each quote comes with fun emojis for extra motivation 🎯💪

"Believe in yourself and all that you are. 💪✨",
"Small steps every day lead to big changes. 🌱🌟",
"Don't stop until you're proud. 🚀🔥",
"Progress, not perfection. 🏆🌈",
"One more try is all it takes sometimes. 💡💖",
"Your only limit is your mind. 🧠💫",
"Dream it. Wish it. Do it. ✨🎯",
"Stay positive, work hard, make it happen. 💪🌸",
"Every day is a second chance. 🌞💛",
"Great things never come from comfort zones. 🏔️🔥",
"Push yourself, because no one else is going to do it for you. 🚀💥",

⚙️ Tech Stack
Layer	Language	Role
Frontend (UI)	Flutter (Dart)	Displays quotes & animations
Native Layer	Kotlin	Detects phone shake via sensors
Communication	EventChannel	Bridges Flutter & Android
🚀 How to Run

Clone the repository

git clone https://github.com/nadiakhaled1411999/shake_quote_app.git
cd shake_quote_app


Run on a physical Android device
⚠️ Make sure USB Debugging is enabled on your phone.

flutter run


Shake your phone!
Every shake = a brand new motivational quote 🎉
---

🧩 Kotlin Sensor Logic (Simplified)
if (gForce > 12) {
    if (now - lastShakeTime > 500) {
        lastShakeTime = now
        eventSink?.success("onShakeDetected")
    }
}

🎨 Flutter Integration (Simplified)
ShakeListener.startListening(() {
  _quoteKey.currentState?.showRandomQuote();
});


Each shake triggers a new animated quote with a toast 💫

💛 Developer

👩‍💻 Nadia Khaled
Flutter Developer passionate about blending Flutter with Native Android to create unique and dynamic app experiences 🚀💛
