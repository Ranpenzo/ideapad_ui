import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();
  final bool _enabled = true;

  @override
  void initState() {
    super.initState();
  
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection =
            TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              child: Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(8),
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  const Text(
                    "Note Title",
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          "Creation Date",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const SizedBox(height: 8),
                        Expanded(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              TextField(
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(0),
                                    fillColor: Color.fromRGBO(255, 255, 255, 0),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Type here..."),
                                maxLines: null,
                                focusNode: _focusNode,
                                controller: _controller,
                                enabled: _enabled,
                                enableInteractiveSelection: true,
                                readOnly: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.black54,
                        child: const Icon(Icons.save),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
