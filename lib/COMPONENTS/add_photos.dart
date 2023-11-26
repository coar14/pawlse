import 'package:flutter/material.dart';
import 'package:pawlse/COMPONENTS/default_images.dart';
import 'package:pawlse/THEMES/poppins.dart';

class AddPhotos extends StatelessWidget {
  const AddPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: PoppinsText(
              text: 'Add Photos / Videos',
              size: 16,
              font: FontWeight.w500,
              color: Colors.black87),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 40,
                  ),
                ),
              ),
            ),
            const Expanded(flex: 3, child: DefaultImages())
          ],
        )
      ],
    );
  }
}
