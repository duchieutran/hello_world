import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/screens/feed/widgets/feed_data.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedTabWidget();
  }
}

class FeedTabWidget extends StatefulWidget {
  const FeedTabWidget({super.key});

  @override
  State<FeedTabWidget> createState() => _FeedTabWidgetState();
}

class _FeedTabWidgetState extends State<FeedTabWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: FeedData().usersFeed.length,
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        autoPlay: false, // => Thuộc tính này auto lướt nè :))
      ),
      itemBuilder: (context, index, realIndex) {
        var user = FeedData().usersFeed[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/feedshowinfo',
                arguments: user['email']);
          },
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                user['logo'],
                fit: BoxFit.cover,
                height: 4000,
                width: 1000.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
