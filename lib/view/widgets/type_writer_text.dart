import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/resume_constants.dart';

class TypeWriterText extends StatefulWidget {
  const TypeWriterText({
    Key? key,
  }) : super(key: key);

  @override
  State<TypeWriterText> createState() => _TypeWriterTextState();
}

class _TypeWriterTextState extends State<TypeWriterText> {
  String _textToType = "";
  int jobTitleIndex = 0;
  int _nextToTypeIndex = 0;
  String _typedText = "";

  @override
  void initState() {
    super.initState();
    _textToType = jobTitles[jobTitleIndex];
    _nextToTypeIndex = 0;
    _typedText = "";

    _typeNewText();
  }

  Future<void> _typeNewText() async {
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) {
      return;
    }

    await _typeForward();

    await Future.delayed(const Duration(seconds: 2));
    await _eraseToIndex(0);
    if (mounted) {
      typeNextJobTitle();
    }
  }

  Future<void> _typeForward() async {
    for (int i = _nextToTypeIndex; i < _textToType.length; ++i) {
      await Future.delayed(const Duration(milliseconds: 50));

      if (!mounted) {
        return;
      }

      setState(() {
        _typedText = _textToType.substring(0, i + 1);
      });
    }
  }

  Future<void> _eraseToIndex(int index) async {
    for (int i = _typedText.length - 1; i >= index; --i) {
      await Future.delayed(const Duration(milliseconds: 40));

      if (!mounted) {
        return;
      }

      setState(() {
        _typedText = _typedText.substring(0, i);
        _nextToTypeIndex = i;
      });
    }
  }

  void typeNextJobTitle() {
    jobTitleIndex =
        jobTitleIndex < jobTitles.length - 1 ? jobTitleIndex + 1 : 0;
    _textToType = jobTitles[jobTitleIndex];
    _nextToTypeIndex = 0;
    _typedText = "";
    setState(() {});
    _typeNewText();
  }

  // Duration _generateTypingPauseDuration() {
  //   return _lerpDuration(
  //     _minTypingPauseDelay,
  //     _maxTypingPauseDelay,
  //     Random().nextDouble(),
  //   );
  // }
  //
  // Duration _lerpDuration(Duration d1, Duration d2, double percent) {
  //   return Duration(
  //     milliseconds: lerpDouble(
  //       d1.inMilliseconds,
  //       d2.inMilliseconds,
  //       percent,
  //     )?.round(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text(
            _typedText,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: kWhiteColor,
                  fontWeight: FontWeight.w400,
                ),
          ),
          Text(
            "|",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: kWhiteColor,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
