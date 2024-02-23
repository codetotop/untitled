import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DungLV'),
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text('Pink River Campground',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'Ha Noi, Vietnam',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              )),
          Icon(Icons.star, color: Colors.amber[500]),
          const Text('88')
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, "CALL"),
        buildButtonColumn(color, Icons.near_me, "ROUTE"),
        buildButtonColumn(color, Icons.share, "SHARE"),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return ListView(
      children: [
        Image.asset('assets/images/pink_river.jpeg',
            height: 240, fit: BoxFit.cover),
        titleSection,
        buttonSection,
        textSection
      ],
    );
  }

  Widget buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}
