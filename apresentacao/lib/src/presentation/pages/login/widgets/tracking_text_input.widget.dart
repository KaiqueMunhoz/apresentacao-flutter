import 'dart:async';

import 'package:apresentacao/src/presentation/pages/login/utils/input_helper.dart';
import 'package:apresentacao/src/presentation/pages/login/widgets/custom_text_form_field.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef CaretMoved = void Function(Offset globalCaretPosition);
typedef TextChanged = void Function(String text);

// Helper widget to track caret position.
class TrackingTextInput extends StatefulWidget {
  final String label;
  final String hint;
  final CaretMoved? onCaretMoved;
  final TextChanged? onTextChanged;
  final bool isObscured;

  const TrackingTextInput({
    Key? key,
    required this.label,
    required this.hint,
    this.onCaretMoved,
    this.onTextChanged,
    this.isObscured = false,
  }) : super(key: key);

  @override
  _TrackingTextInputState createState() => _TrackingTextInputState();
}

class _TrackingTextInputState extends State<TrackingTextInput> {
  final GlobalKey _fieldKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();
  Timer? _debounceTimer;

  @override
  initState() {
    _textController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject fieldBox =
              _fieldKey.currentContext?.findRenderObject() as RenderObject;
          Offset? caretPosition = getCaretPosition(fieldBox as RenderBox);

          if (caretPosition != null && widget.onCaretMoved != null) {
            widget.onCaretMoved!(caretPosition);
          }
        }
      });
      if (widget.onTextChanged != null) {
        widget.onTextChanged!(_textController.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: CustomTextFormField(
        key: _fieldKey,
        labelText: widget.label,
        controller: _textController,
        obscureText: widget.isObscured,
      ),
    );
  }
}
