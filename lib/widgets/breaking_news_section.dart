import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BreakingNewsSection extends StatefulWidget {
  const BreakingNewsSection({
    super.key,
  });

  @override
  State<BreakingNewsSection> createState() => _BreakingNewsSectionState();
}

class _BreakingNewsSectionState extends State<BreakingNewsSection> {
  //imgs of the carousel
  final List<String> imgList = [
    "https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg",
    "https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg",
    "https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg",
    "https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg",
    "https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg",
  ];

  int _currentCarouselIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    //carousel items
    final List<Widget> imageSliders = imgList
        .map((item) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(13, 5, 13, 5),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Sports",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  top: 107,
                  left: 15,
                  child: Row(
                    children: const [
                      Text(
                        "CNN Indonisia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        size: 14,
                        Icons.verified_rounded,
                        color: Colors.blue,
                      ),
                      Text(
                        "  • 6 hours ago",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  top: 123,
                  left: 15,
                  width: 200,
                  child: Text(
                    "Alexander wears modified helmet in road races",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                )
              ],
            )))
        .toList();

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Breaking News",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    debugPrint("view all link clicked");
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentCarouselIndex = index;
                    });
                  }),
            ),
            //carousel postion indecators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: _currentCarouselIndex == entry.key
                        ? Container(
                            width: 20,
                            height: 7,
                            margin: const EdgeInsets.fromLTRB(3, 10, 3, 0),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(200)))
                        : Container(
                            width: 7,
                            height: 7,
                            margin: const EdgeInsets.fromLTRB(3, 10, 3, 0),
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromRGBO(173, 173, 173, 0.45),
                                borderRadius: BorderRadius.circular(200)),
                          ));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
