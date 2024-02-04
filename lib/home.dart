import 'package:flutter/material.dart';
import 'package:forum_app/space.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image5.png',
  ];
  List headerImage = [
    'assets/images/system.png',
    'assets/images/food.png',
    'assets/images/makeup.png',
    'assets/images/pills.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forum',
                      style: TextStyle(
                          color: Color(0xFF002E63),
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Text(
                          'Create',
                          style: TextStyle(
                              color: Color(0xFF00A6CA),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.drag_indicator,
                          size: 24,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 160,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF002E63),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF002E63).withOpacity(0.1),
                            blurRadius: 1,
                            offset: const Offset(0, 8),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(headerImage[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Column(
                                children: [
                                  const Text(
                                    'Women In Tech',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Expanded(
                                    child: Text(
                                      'This is a forum for discussing and empower women for the tech world, An train upcoming Muslimah who have the desire to go into tech',
                                      style: TextStyle(
                                        fontSize: 11,
                                        letterSpacing: 0.1,
                                        height: 1.25,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          for (int i = 0;
                                              i < images.length;
                                              i++)
                                            Align(
                                              widthFactor: 0.8,
                                              child: CircleAvatar(
                                                radius: 9,
                                                backgroundImage:
                                                    AssetImage(images[i]),
                                              ),
                                            ),
                                          const CircleAvatar(
                                            radius: 9,
                                            child: Text(
                                              '+2',
                                              style: TextStyle(
                                                  color: Color(0xFF002E63),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const SpaceScreen();
                                        })),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Join',
                                              style: TextStyle(
                                                  color: Color(0xFF002E63),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
