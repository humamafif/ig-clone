import 'package:cobacoba/story_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> urlImage = [
    "https://picsum.photos/id/237/400/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
    "https://picsum.photos/id/237/400/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.message,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // STORIES
            Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              // color: Colors.amber,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: urlImage.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryPage(),
                          ));
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(urlImage[index]),
                    ),
                  );
                },
              ),
            ),

            //POST
            ListView.builder(
              shrinkWrap: true,
              itemCount: urlImage.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // header postingan
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(urlImage[index]),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Username",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.menu,
                          ),
                        ],
                      ),
                    ),
                    // Image Post
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(urlImage[index]),
                            fit: BoxFit.fill),
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
