import 'package:flutter/material.dart';

class Utils {
  static List<T> modelBuilder<M, T>(
    List<M> models, T Function(int index, M model) builder) =>
  models
      .asMap()
      .map((index, model) => MapEntry(index, builder(index, model)))
      .values
      .toList();
}

class MessageNotification extends StatelessWidget {
  final VoidCallback onReplay;

  const MessageNotification({Key? key, required this.onReplay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: SafeArea(
        child: ListTile(
          leading: SizedBox.fromSize(
              size: const Size(40, 40),
              child: ClipOval(child: Text('beat'))),
          title: Text('Lily MacDonald'),
          subtitle: Text('Do you want to see a movie?'),
          trailing: IconButton(
              icon: Icon(Icons.reply),
              onPressed: () {
                ///TODO i'm not sure it should be use this widget' BuildContext to create a Dialog
                ///maybe i will give the answer in the future
                if (onReplay != null) onReplay();
              }),
        ),
      ),
    );
  }
}