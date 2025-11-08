 🌟 Shake Quote App

A fun motivational app that reacts to your phone’s movement!
Built with ❤️ using Flutter + Kotlin integration.

⚡️⚡️⚡️

🧩 About the Project

Shake Quote is a cross-platform mobile app that combines Flutter’s smooth UI with Android’s native sensors (Kotlin) through an EventChannel.
Each time you shake your phone, a new motivational quote pops up with animation and emoji power ⚡💫

🌈🌈🌈

🎥 Demo

📱 Watch the full demo video below 👇


 [app1_20251108_040419.zip](https://github.com/user-attachments/files/23429934/app1_20251108_040419.zip)


🖼️ Screenshots  

![screen1](https://github.com/user-attachments/assets/8dbba78c-4e07-4a7b-b94d-0eb39c0cf543)

![screen2](https://github.com/user-attachments/assets/d2504b9a-7b02-44bc-9a77-cd31e0b9e630)

![screen3](https://github.com/user-attachments/assets/7e3ce987-36cb-4ee8-9a14-c346c6645b96)


🔥🔥🔥

🚀 Features

✅ Detects real phone shakes using Android’s SensorManager
✅ Sends sensor data to Flutter through EventChannel
✅ Displays animated motivational quotes with fun emojis
✅ Built with clean code and native–Flutter communication

💫💫💫

🛠️ Tech Stack
Layer	Technology	Purpose
🧠 Native Layer	Kotlin	Detects shake events using accelerometer
🎨 UI Layer	Flutter (Dart)	Displays quotes with animation & toast
🔗 Bridge	EventChannel	Connects Flutter with Android native logic

✨✨✨

💬 Example Quotes

Every quote comes alive with motivational emojis 🌟💪

"Believe in yourself and all that you are. 💪✨"
"Small steps every day lead to big changes. 🌱🌟"
"Don't stop until you're proud. 🚀🔥"
"Progress, not perfection. 🏆🌈"
"One more try is all it takes sometimes. 💡💖"
"Your only limit is your mind. 🧠💫"
"Dream it. Wish it. Do it. ✨🎯"
"Stay positive, work hard, make it happen. 💪🌸"
"Every day is a second chance. 🌞💛"
"Great things never come from comfort zones. 🏔️🔥"
"Push yourself, because no one else is going to do it for you. 🚀💥"


🎯🎯🎯

⚙️ How It Works

1️⃣ Kotlin detects the shake gesture:

if (gForce > 12) {
    if (now - lastShakeTime > 500) {
        lastShakeTime = now
        eventSink?.success("onShakeDetected")
    }
}


2️⃣ Flutter receives it through the EventChannel and shows an animated quote:

ShakeListener.startListening(() {
  _quoteKey.currentState?.showRandomQuote();
});


📱📱📱

📲 How to Run

Step 1: Clone the project

git clone https://github.com/nadiakhaled1411999/shake_quote_app.git
cd shake_quote_app


Step 2: Connect your Android phone

Enable Developer Options → USB Debugging

Then run:

flutter run


Step 3: Shake your phone!

You’ll see a new motivational quote appear with animation 🌈

💛💛💛

👩‍💻 Credits

Developed by Nadia Khaled

✨ Passionate about merging Flutter magic with native Android power (Kotlin) to create interactive apps 🚀💛
