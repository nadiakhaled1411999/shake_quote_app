import 'package:flutter/material.dart';
import 'shake_listener.dart';
import 'quote_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<QuoteWidgetState> _quoteKey = GlobalKey<QuoteWidgetState>();

  final List<String> quotes = [
    "Believe in yourself and all that you are. 💪✨",
    "Small steps every day lead to big changes. 🌱🌟",
"I LOVE My small Brother mohamed 😍💖",
    "Don't stop until you're proud. 🚀🔥",
    "Progress, not perfection. 🏆🌈",
    "One more try is all it takes sometimes. 💡💖",
    "Your only limit is your mind. 🧠💫",
    "Dream it. Wish it. Do it. ✨🎯",
    "Stay positive, work hard, make it happen. 💪🌸",
    "Every day is a second chance. 🌞💛",
    "Great things never come from comfort zones. 🏔️🔥",
    "Push yourself, because no one else is going to do it for you. 🚀💥",
  ];

  @override
  void initState() {
    super.initState();


    ShakeListener.startListening(() {
      _quoteKey.currentState?.showRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shake for Quote',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shake to Get a Quote'),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: QuoteWidget(key: _quoteKey, quotes: quotes),
        ),
      ),
    );
  }
}
