import 'package:books_store_app/providers/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  TextEditingController _titleEditingController = TextEditingController();

  TextEditingController _descriptionEditingController = TextEditingController();

  TextEditingController _priceEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a book"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Fill those field to add a book"),
            SizedBox(
              height: 30,
            ),
            Text("add Title: "),
            SizedBox(
              width: 20,
            ),
            TextField(
              controller: _titleEditingController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("add Description: "),
            SizedBox(
              width: 20,
            ),
            TextField(
              controller: _descriptionEditingController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("add Price: "),
            SizedBox(
              width: 20,
            ),
            TextField(controller: _priceEditingController),
            SizedBox(
              height: 50,
            ),
            IconButton(
                onPressed: () {
                  context.read<BooksProvider>().createNewBook(
                      _titleEditingController.text,
                      _descriptionEditingController.text,
                      _priceEditingController.text);
                  context.pop();
                },
                icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
