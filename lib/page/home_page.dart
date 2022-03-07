import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Map<String, dynamic>> examples = [
  {
    'username': 'gabriela77',
    'photo': 'assets/images/users/1.jpg',
    'location': 'Machu Picchu',
    'description': 'found a new friend',
    'likedCount': 213,
    'comments': 123,
    'date': DateTime.now(),
    'save': false,
  },
  {
    'username': 'gabrisela77',
    'photo': 'assets/images/users/2.jpg',
    'location': 'Machu Picchu',
    'description': 'Hello world new friend from the friend list',
    'likedCount': 123,
    'comments': 123,
    'date': DateTime.now(),
    'save': false,
  },
  {
    'username': 'gato21',
    'photo': 'assets/images/users/3.jpg',
    'location': 'Machu Picchu',
    'description': 'found a new friend',
    'likedCount': 1232,
    'comments': 23,
    'date': DateTime.now(),
    'save': false,
  },
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> actions = [
    IconButton(
      icon: SvgPicture.asset(
        'assets/icons/bell.svg',
        height: 22,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: SvgPicture.asset(
        'assets/icons/search.svg',
        height: 22,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: SvgPicture.asset(
        'assets/icons/my_account.svg',
        height: 22,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Momentos',
          style: TextStyle(color: Colors.black),
        ),
        actions: actions,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                const FeedHeader(),
                Row(
                  children: [
                    const Text('asdasdasdasdasdasdasdasdasdasdasd'),
                    TextButton(onPressed: () {}, child: const Text('ver más'))
                  ],
                ),
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/images/jim.png',
                      width: double.infinity),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FeedHeader extends StatelessWidget {
  const FeedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(backgroundImage: null),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Gabriela'),
              Row(children: const [
                Icon(Icons.abc_outlined),
                Text('Gabriela'),
              ])
            ],
          ),
        ),
        const Text('24 Dic'),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
