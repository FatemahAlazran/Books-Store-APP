import 'package:books_store_app/providers/books_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({Key? key}) : super(key: key);
  TextEditingController _titleEditingController = TextEditingController();

  TextEditingController _descriptionEditingController = TextEditingController();

  TextEditingController _priceEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update a book"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Fill those field to update a book"),
            SizedBox(
              height: 30,
            ),
            Text("update Title: "),
            SizedBox(
              width: 20,
            ),
            TextField(
              controller: _titleEditingController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("update Description: "),
            SizedBox(
              width: 20,
            ),
            TextField(
              controller: _descriptionEditingController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("update Price: "),
            SizedBox(
              width: 20,
            ),
            TextField(controller: _priceEditingController),
            SizedBox(
              height: 50,
            ),
            Consumer<BooksProvider>(
              builder: (context, value, child) => IconButton(
                  onPressed: () {
                    // context.read<BooksProvider>().updateBook(
                    //     value.books{"id"}.,
                    //     _titleEditingController.text,
                    //     _descriptionEditingController.text,
                    //     _priceEditingController.text);
                    // context.pop();
                  },
                  icon: Icon(Icons.edit)),
            )
          ],
        ),
      ),
    );
  }
}
