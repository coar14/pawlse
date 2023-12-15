import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawlse/COMPONENTS/add_photos.dart';
import 'package:pawlse/COMPONENTS/create_textfield.dart';
import 'package:pawlse/THEMES/poppins.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final TextEditingController time = TextEditingController();
  final TextEditingController place = TextEditingController();
  final TextEditingController details = TextEditingController();
  final TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const PoppinsText(
            text: 'Create Event',
            size: 24,
            font: FontWeight.w600,
            color: Colors.black87),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            const Divider(),
            Column(
              children: [
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: PoppinsText(
                          text: 'Select Date',
                          size: 16,
                          font: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        controller: _date,
                        onTap: () {
                          _selectDate();
                        },
                        readOnly: true,
                        maxLines: 1,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.create_rounded),
                          hintText: 'Date',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    )
                  ],
                ),
                MyTextField(
                    textcontroller: time,
                    text: 'Event Time',
                    lines: 1,
                    hintText: "00:00 AM - 00:00 PM"),
                MyTextField(
                    textcontroller: place,
                    text: 'Event Place',
                    lines: 1,
                    hintText: "Specifiy here..."),
                MyTextField(
                    textcontroller: details,
                    text: 'Event Details',
                    lines: 1,
                    hintText: "Type here..."),
                const SizedBox(height: 20),
                const AddPhotos(),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * .50,
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: const Align(
                    alignment: Alignment.center,
                    child: PoppinsText(
                        text: 'Create Event',
                        size: 16,
                        font: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2025));

    if (pickedDate != null) {
      setState(() {
        _date.text = pickedDate.toString().split(" ")[0];
      });
    }
  }
}
