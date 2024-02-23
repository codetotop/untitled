import 'package:flutter/material.dart';

void main() {
  runApp(ListMultiTypeExample(
      items: List.generate(
          1000,
          (index) => index % 6 == 0
              ? HeadingItem('Heading $index')
              : MessageItem('Sender $index', 'Body $index'))));
}

class ListMultiTypeExample extends StatelessWidget {
  final List<ListItem> items;
  const ListMultiTypeExample({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = "Mixed List";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubTitle(context),
              );
            }),
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubTitle(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildSubTitle(BuildContext context) => Text(body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);
}
