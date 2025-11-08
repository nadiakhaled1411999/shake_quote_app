import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuoteWidget extends StatefulWidget {
  final List<String> quotes;
  const QuoteWidget({Key? key, required this.quotes}) : super(key: key);

  @override
  QuoteWidgetState createState() => QuoteWidgetState();
}

class QuoteWidgetState extends State<QuoteWidget>
    with SingleTickerProviderStateMixin {
  String currentQuote = '';
  late AnimationController _controller;
  late Animation<Offset> _offsetAnim;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    _offsetAnim = Tween<Offset>(begin: const Offset(0, 0.4), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showRandomQuote() {
    final r = Random();
    final q = widget.quotes[r.nextInt(widget.quotes.length)];
    setState(() {
      currentQuote = q;
    });
    _controller.forward(from: 0);
    Fluttertoast.showToast(msg: q, toastLength: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (currentQuote.isEmpty)
          const Text('Shake your phone to get motivated!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black))
        else
          SlideTransition(
            position: _offsetAnim,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Card(
                color: Colors.yellow,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(currentQuote,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ),
        const SizedBox(height: 24),
        // ElevatedButton.icon(
        //   icon: Icon(Icons.refresh),
        //   label: Text('Show random'),
        //   onPressed: showRandomQuote,
        // )
      ],
    );
  }
}
