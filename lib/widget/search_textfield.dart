import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String? hinttext;
  const SearchTextField({Key? key,this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 40,
      child: TextField(
        cursorHeight: 25,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search,color: Colors.grey,),
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14.0),
          contentPadding: const EdgeInsets.only(top: 10.0),
          fillColor: Colors.grey[300],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
