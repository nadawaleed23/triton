import 'package:flutter/material.dart';
import 'package:triton/core/constant/color.dart';

class CustonTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String? labeltext;
  final IconData? iconData;
  final TextEditingController? mycontroller;
  final void Function()? onTapIcon;
  final bool? obscureText;
final TextInputType textInputType;
 final String? Function(String?)? valid;
  const CustonTextFormAuth(
      {Key? key,

        required this.hinttext,
         this.labeltext,
         this.iconData,
       required this.mycontroller, required this.textInputType,required this.valid,  this.obscureText, this.onTapIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.only(left: 20,right: 20),
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false  ? false : true,
        keyboardType:textInputType ,
        controller: mycontroller,
        validator: valid,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle:  TextStyle(fontSize: 12,color: AppColors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext!)),
            suffixIcon: InkWell(onTap:onTapIcon ,child: Icon(iconData),),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}