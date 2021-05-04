import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/model/profile.dart';

class ProfileTop extends StatefulWidget {
  final Profile profile;

  ProfileTop(this.profile);

  @override
  _ProfileTopState createState() => _ProfileTopState();
}

class _ProfileTopState extends State<ProfileTop> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: widget.profile.profileImages
                .map((e) => Image.network(
                      e,
                      width: MediaQuery.of(context).size.width,
                      height: 370,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
              height: 370,
              viewportFraction: 1,
              initialPage: 0,
              autoPlay: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _index = index;
                });
              },
            )),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.profile.profileImages.asMap().entries.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: e.key == _index ? Colors.red : Colors.white,
                    ),
                  ),
                );
              }).toList(),
            )),
      ],
    );
  }
}
