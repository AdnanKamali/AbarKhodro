import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({
    super.key,
    required this.text,
    required this.id,
    this.milisecond = 30,
  });
  final String text;
  final int id;
  final int milisecond;

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  static final Set<int> _animatedMessages = {};
  String _displayText = "";
  int _index = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    if (!_animatedMessages.contains(widget.id)) {
      _animatedMessages.add(widget.id);
      _startTypingAnimation();
    } else {
      _displayText = widget.text;
    }
  }

  void _startTypingAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (_index < widget.text.length) {
        setState(() {
          _displayText += widget.text[_index];
          _index++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: TextStyle(color: Colors.black),
      softWrap: true,
    );
  }
}
