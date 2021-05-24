part of flutter_mapbox_autocomplete;

class CustomTextField extends StatelessWidget {
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String initialValue;
  final TextInputType inputType;
  final TextEditingController textController;
  final String hintText;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int maxLines;
  final TextInputAction keyboardAction;
  final FocusNode focusNode;
  final Function validator;
  final Function onSaved;
  final Function onTap;
  final Function onChanged;
  final Function onFieldSubmitted;
  final Function onEditComplete;

  CustomTextField({
    @required this.hintText,
    this.initialValue,
    this.textController,
    this.inputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines,
    this.keyboardAction = TextInputAction.next,
    this.focusNode,
    this.validator,
    this.onSaved,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditComplete,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.end,
      initialValue: initialValue,
      decoration: InputDecoration(
        focusColor: Color(0xFF00796B),
        hoverColor: Color(0xFF00796B),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        filled: true,
        hintStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Lemonada', //grey[800]
        ),
        hintText: hintText,
        fillColor: Color(0xFF1ABC9C),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        errorStyle: TextStyle(
          color: Theme.of(context).backgroundColor,
          fontSize: 14,
        ),
      ),
      enabled: enabled,
      obscureText: obscureText,
      readOnly: readOnly,
      keyboardType: inputType,
      textInputAction: keyboardAction,
      validator: validator,
      onSaved: onSaved,
      focusNode: focusNode,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      controller: textController,
      onEditingComplete: onEditComplete,
      maxLines: obscureText ? 1 : maxLines,
    );
  }
}
