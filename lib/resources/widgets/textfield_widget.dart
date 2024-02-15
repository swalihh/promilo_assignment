import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';

class SignUpTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final String? label;
  final String? labeltwo;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final bool obscureText;
  final TextInputType keyboardType;

  const SignUpTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.validator,
    this.label,
    this.labelStyle,
    this.hintStyle,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.labeltwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: labelStyle,
          ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          // style: AppText.labeltext,
          decoration: InputDecoration(
          
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 12),

            //   fillColor: AppColors.backgroundColor,
            hintText: hintText,
            hintStyle: hintStyle,
            labelStyle: const TextStyle(color: AppColors.labelcolor),
            focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
            ),
          ),
          validator: validator,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              Text(
                labeltwo??'',
                style: Apptext.secondlabel,
              ),
            ],
          ),
        )
      ],
    );
  }
}
