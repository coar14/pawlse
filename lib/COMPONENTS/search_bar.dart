import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;
  const MySearchBar({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SearchBar(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        elevation: const MaterialStatePropertyAll(1),
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 10)),
        hintText: hintText,
        trailing: const [Icon(Icons.search_rounded, size: 30)],
      ),
    );
    // return Container(
    //   height: 60,
    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
    //   child: TextField(
    //     decoration: InputDecoration(
    //         contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    //         focusedBorder: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(16),
    //             borderSide:
    //                 const BorderSide(color: Color(0xFF8A98E1), width: 2)),
    //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    //         hintText: text,
    //         suffixIcon: const Icon(
    //           Icons.search,
    //           size: 30,
    //         )),
    //   ),
    // );
  }
}
