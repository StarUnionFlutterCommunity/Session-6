// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String name = "";

  @override
  void initState() {
    nameController.text = "John Doe";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  } else if (value.length < 3) {
                    return "Name is too short";
                  }
                  return null;
                },
                controller: nameController,
                // onSubmitted: (value){
                //   setState(() {
                //     name = value;

                //   });

                // },
                // onChanged: (value) {
                //   setState(() {
                //     name = value;
                //   });

                // },
                maxLength: 11,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text("Name"),
                  hintText: "Enter your name",
                  helper: Text("Name is required"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone is required";
                  } else if (value.length < 11) {
                    return "Phone is too short";
                  }
                  return null;
                },
                controller: phoneController,
                // onSubmitted: (value){
                //   setState(() {
                //     name = value;

                //   });

                // },
                // onChanged: (value) {
                //   setState(() {
                //     name = value;
                //   });

                // },

                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text("phone"),
                  hintText: "Enter your phone",
                  // helper: Text("Name is required"),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                 setState(() {
                    if(formKey.currentState!.validate()){
                    name = nameController.text;
                    

                    }
                  });
                },
                child: Text("Submit"),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text("Reset"),
              ),
              SizedBox(height: 20),
              Text("Name: $name"),
            ],
          ),
        ),
      ),
    );
  }
}
