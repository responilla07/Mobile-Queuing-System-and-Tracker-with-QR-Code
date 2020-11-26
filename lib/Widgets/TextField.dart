
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    @required this.controller,
    @required this.hintText,
    @required this.inputFormatter,
    @required this.keyboardType,

  });

  final String hintText;
  final TextEditingController controller;
  final List<TextInputFormatter> inputFormatter;
  final TextInputType keyboardType;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  bool isTextObscure;
  bool isDisposed = false;

  @override
  void initState() {
    if (widget.hintText == "Password" || widget.hintText == "Confirm Password") {
      isTextObscure = false;
    } else {
      isTextObscure = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 40,
          child: new TextFormField(
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatter,
            controller: widget.controller,
            obscureText: !isTextObscure,
            decoration: new InputDecoration(
              filled: true,
              fillColor: Color(0xFFEFEFEF),
              hintText: widget.hintText,
              contentPadding: EdgeInsets.fromLTRB(10, 10, widget.hintText == "Password" || widget.hintText == "Confirm Password" ? 40 : 10, 10),
             border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xFFEFEFEF))
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Color(0xFFEFEFEF))
              ),
            ),
          ),
        ),
        widget.hintText == "Password" || widget.hintText == "Confirm Password" ? Positioned(
          right: 0,
          top: -5,
          child: Container(
            child: IconButton(
              icon: Icon(
                isTextObscure
                ? Icons.visibility
                : Icons.visibility_off,
                size: 20,
              ),
              onPressed: () {
                if(!isDisposed){
                  setState(() {
                      isTextObscure = !isTextObscure;
                  });
                }
              },
              color: Colors.grey,
            ),
          ),
        ) : Container(),
      ],
    );
  }
}

