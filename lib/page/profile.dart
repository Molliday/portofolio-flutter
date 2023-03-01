import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/number_widget.dart';

// final List<String> imgList = [
//   'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO156.jpg'
//       'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO158.jpg'
//       'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO159.jpg'
//       'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final double coverHeight = 280;
  final double profileHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildProfileTop(),
          buildProfileContent(),
        ],
      ),
    );
  }

  Widget buildProfileTop() {
    final List<String> imgList = [
      'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO156.jpg',
      'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO158.jpg',
      'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/01/27/NARUTO159.jpg',
      //   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SingleChildScrollView(
          // margin: EdgeInsets.only(bottom: bottom),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1,
                  // onPageChanged: ((index, reason) {}),
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.network(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  // Widget buildCoverImage() => Container(
  //       color: Colors.grey,
  //       child: Image.network(
  //         'https://cdn1-production-images-kly.akamaized.net/2jNeciXyH193r7jxfoUuzfeLlPg=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1439641/original/042027300_1482131661-reddit.jpg',
  //         width: double.infinity,
  //         height: coverHeight,
  //         fit: BoxFit.cover,
  //       ),
  //     );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 4,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
          'https://cdn.oneesports.id/cdn-data/sites/2/2022/03/Naruto-Uzumaki-1024x576.webp',
        ),
      );

  Widget buildProfileContent() => Column(
        children: [
          const SizedBox(height: 100),
          Text(
            'Figur Ulul Azmi',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 8),
          Text(
            'Software Developer',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.instagram),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
              const SizedBox(width: 12),
            ],
          ),
          const SizedBox(height: 16),
          Divider(),
          const SizedBox(height: 16),
          NumberWidget(),
          const SizedBox(height: 16),
          Divider(),
          const SizedBox(height: 16),
          buildAbout(),
          const SizedBox(height: 32),
          buildEducation(),
          const SizedBox(height: 32),
          buildWorkExp(),
          const SizedBox(height: 32),
          buildSkill(),
          const SizedBox(height: 32),
          buildHobby(),
          const SizedBox(height: 32),
        ],
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 32)),
      );

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Pribadi',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'IT Enthusiast and Software Developer with years of experience as a Software Developer for companies in Asia.',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildEducation() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pendidikan',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Universitas Informatika Dan Bisnis Indonesia (UNIBI) Bandung, JAWA BARAT',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildWorkExp() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pengalaman Bekerja',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Network Engginer di PT.GARUDA TELEKOMUNIKASI INDONESIA',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildSkill() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skill',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Memahami instalasi Software & Hardware Komputer & Jaringan, Memahami trouble shooting pada komputer, Mampu bekerja secara tim ataupun individu',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildHobby() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobi',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Membaca, Olahraga, Berenang, Sepakbola',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      );
}
