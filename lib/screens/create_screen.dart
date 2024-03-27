import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override

  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override

  final _formKey = GlobalKey<FormState>();
  TextEditingController _activityController = TextEditingController();
  TextEditingController _typeController = TextEditingController();
  TextEditingController _participantsController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _linkController = TextEditingController();
  TextEditingController _accessibilityController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Activity"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _activityController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Activity',
              ),
            ),
            TextFormField(
              controller: _typeController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Type',
              ),
            ),
            TextFormField(
              controller: _participantsController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Participants',
              ),
            ),
            TextFormField(
              controller: _priceController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            TextFormField(
              controller: _linkController,
              decoration: const InputDecoration(
                labelText: 'Link (optional)',
              ),
            ),
            TextFormField(
              controller: _accessibilityController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Accessibility',
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, submit the data
                  _submitForm();
                }
              }, 
              child: Text("Submit"),
            ),
          ],
        )
      ),
    );
  }

  void _submitForm() {
    return;
  }

  @override
  void dispose() {
    _activityController.dispose();
    _typeController.dispose();
    _participantsController.dispose();
    _priceController.dispose();
    _linkController.dispose();
    _accessibilityController.dispose();

    super.dispose();
  }
}
