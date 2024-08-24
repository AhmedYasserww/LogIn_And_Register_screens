
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,required this.labelText,this.onSaved,this.onChange, this.validator, this.prefixIcon,this.suffixIcon,  this.obscureText =false, this.controller});

  final  String  labelText;

   final void Function(String?)? onSaved;
   final void Function(String?)? onChange;
   final String? Function(String?)? validator;
   final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText ;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {

      return TextFormField(
        controller: controller ,
        obscureText:obscureText,
        onSaved:onSaved ,
        onChanged: onChange,

        validator: validator,




          decoration:InputDecoration(

            prefixIcon:prefixIcon ,
            suffixIcon: suffixIcon,
            labelText: labelText,
             labelStyle:TextStyle(fontSize: 22),
             // hintText: ,
              hintStyle:const TextStyle(fontSize: 20),
      //enabledBorder: buildBorder(),
         //  focusedBorder: buildBorder(kPrimaryColor),
            //errorBorder: buildBorder(Colors.red),
            //focusedErrorBorder: buildBorder(Colors.red),
            border: OutlineInputBorder()

          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white,width: 1.2),
    );
   }
}
