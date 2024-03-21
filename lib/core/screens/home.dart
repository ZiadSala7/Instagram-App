import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(125, 78, 91, 110),
                        ),
                        child: const CircleAvatar(
                          radius: 33,
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      const Text(
                        "Layla hassan",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Image.network(
              "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                width: double.infinity,
                child: const Text(
                  "10 Likes",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                )),
            const Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Text(
                  "USERNAME ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                ),
                Text(
                  " Sidi Bou Said ♥",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 13, 9, 10),
                  width: double.infinity,
                  child: const Text(
                    "view all 100 comments",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(214, 157, 157, 165)),
                    textAlign: TextAlign.start,
                  )),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
                width: double.infinity,
                child: const Text(
                  "10June 2022",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
    );
  }
}
