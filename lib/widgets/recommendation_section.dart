import 'package:flutter/material.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Recommaendation",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  debugPrint("view all link clicked");
                },
                child: Text(
                  "View all",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RecommendationItem(
            genre: "Sports",
            title: "What Training Do volyball Players Need?",
            author: "McKindney",
            postDate: "Feb27,2023",
            imgLink:
                "https://www.pakmen.com/wp-content/uploads/2018/04/13048268_252650438420825_3052789132820002856_o.jpg",
            authorImg:
                "https://sb.kaleidousercontent.com/67418/574x435/74d8ee5821/screenshot_2022-04-25_at_16-00-23-removebg-preview.png",
          ),
          SizedBox(
            height: 5,
          ),
          RecommendationItem(
            genre: "Sports",
            title: "What Training Do volyball Players Need?",
            author: "McKindney",
            postDate: "Feb27,2023",
            imgLink:
                "https://www.pakmen.com/wp-content/uploads/2018/04/13048268_252650438420825_3052789132820002856_o.jpg",
            authorImg:
                "https://sb.kaleidousercontent.com/67418/574x435/74d8ee5821/screenshot_2022-04-25_at_16-00-23-removebg-preview.png",
          )
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final String genre;
  final String title;
  final String author;
  final String postDate;
  final String imgLink;
  final String authorImg;
  const RecommendationItem(
      {super.key,
      required this.genre,
      required this.title,
      required this.author,
      required this.postDate,
      required this.imgLink,
      required this.authorImg});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(imgLink), fit: BoxFit.cover)),
      ),
      SizedBox(
        width: 10,
      ),
      SizedBox(
        height: 105,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10),
          Text(
            genre,
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 200,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, height: 1.5),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              author,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Text(
              " •",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "  $postDate",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            )
          ])
        ]),
      )
    ]);
  }
}
