//The form that allows the user to create a new post.
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class CreatePostForm extends StatefulWidget {
  const CreatePostForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreatePostFormState createState() => _CreatePostFormState();
}

class _CreatePostFormState extends State<CreatePostForm> {
  final _formKey = GlobalKey<FormState>();
/*
  void _submitForm() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      bool success = await FirebaseService.createPost(_title, _body);
      if (success) {
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Error creating post.'),
          ),
        );
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title.';
                  }
                  return null;
                },
                onSaved: (value) {
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Body',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a body.';
                  }
                  return null;
                },
                onSaved: (value) {
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                //onPressed: _submitForm,
                onPressed: () {  },
                child: const Text('Create Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}