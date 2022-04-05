import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_getx/controller/create_controller.dart';
import 'package:patterns_getx/views/itemOfTextField.dart';

class CreatePage extends StatefulWidget {
  static String id = "CreatePage";
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  CreateController createController = CreateController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){
              createController.apiCreatePost(context);
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Obx(
          () => Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                texFormField(hintText: 'Title', controller: createController.titleController()),
                texFormField(hintText: 'Body', controller: createController.bodyController()),
              ],
            ),
          )
      ),
    );

  }
}
