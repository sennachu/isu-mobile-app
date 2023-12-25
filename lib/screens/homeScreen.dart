import 'package:application_1/widgets/abus.dart';
import 'package:application_1/widgets/anns.dart';
import 'package:application_1/widgets/header.dart';
import 'package:application_1/widgets/menuItem.dart';
import 'package:application_1/widgets/profileItem.dart';
import 'package:application_1/widgets/ring.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(227, 242, 253, 1),
          title: Text(
            "Istinye University",
            style: GoogleFonts.raleway(),
          )),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(227, 242, 253, 1),
        child: Column(
          children: [
            profileItem(
              avatar: "assets/images/IMG_3205.JPG",
              name: "Sena Bezirkan",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Divider(),
                  menuItem(
                    title: "Ana Sayfa",
                    icon: Icon(
                      Icons.home,
                      color: const Color.fromARGB(255, 123, 112, 10),
                    ),
                    onTap: () {},
                  ),
                  Divider(),
                  menuItem(
                    title: "Dersler",
                    icon: Icon(
                      Icons.school,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/yourclass");
                    },
                  ),
                  Divider(),
                  menuItem(
                    title: "Sınavlar",
                    icon: Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/exams");
                    },
                  ),
                  Divider(),
                  menuItem(
                    title: "Ödeme Planı",
                    icon: Icon(
                      Icons.euro,
                      color: Colors.green,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/payment");
                    },
                  ),
                  Divider(),
                  menuItem(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/welcome", (route) => false);
                    },
                    title: "Çıkış Yap",
                    icon: Icon(Icons.logout_outlined),
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Version 1.0.7",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.1,
            0.4,
            0.6,
            0.9,
          ],
          colors: [
            Color.fromRGBO(227, 242, 253, 1),
            Color.fromRGBO(187, 222, 251, 1),
            Color.fromRGBO(144, 202, 249, 1),
            Color.fromRGBO(100, 181, 246, 1)
          ],
        )),
        child: Expanded(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Header(title: "Duyurular"),
                          Anns(
                              number: "18",
                              date: "Aralık 2023, Pazartesi",
                              title:
                                  "İstinye Üniversitesi İnsan ve Toplum Bilimleri Fakültesi, Psikoloji Bölümü tarafından 18 Aralık 2023 Pazartesi günü saat 17:00'de Vadi AB Yerleşke 501'de gerçekleştirilecek seminere davetlisiniz. "),
                          SizedBox(
                            height: 10,
                          ),
                          Anns(
                              number: "18",
                              date: "Aralık 2023, Pazartesi",
                              title:
                                  "İstinye Üniversitesi Yaşlılık Çalışmaları Uygulama ve Araştırma Merkezi (GEROMER) tarafından 18 Aralık 2023 Pazartesi günü saat 15:00'te  gerçekleştirilecek konferansa davetlisiniz."),
                          SizedBox(
                            height: 10,
                          ),
                          Anns(
                              number: "19",
                              date: "Aralık 2023, Salı",
                              title:
                                  "İstinye Üniversitesi Temel Bilimler Bölümü ve İstinye Garage Incubation Hub tarafından 19 Aralık 2023 Salı günü saat 11:00'de Vadi Ana Yerleşke Konferans Salonunda gerçekleştirilecek seminere davetlisiniz. "),
                          SizedBox(
                            height: 10,
                          ),
                          Anns(
                              number: "28",
                              date: "Aralık 2023, Perşembe",
                              title:
                                  "İstinye Üniversitesi İktisadi, İdari ve Sosyal Bilimler Fakültesi Sağlık Yönetimi Bölümü tarafından 28 Aralık Perşembe günü saat 13.30'da Topkapı Kampüs Kongre Merkezinde gerçekleştirilecek etkinliğe davetlisiniz. "),
                          SizedBox(
                            height: 10,
                          ),
                          Header(title: "Topkapı Kampüs İçin Ring Saatleri"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ring(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Header(title: "Hakkımızda"),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                abus(
                                    photo: "assets/images/ab1.png",
                                    name: "Detaylar için mail atınız..",
                                    title: "Hastanelerimiz"),
                                abus(
                                    photo: "assets/images/ab2.jpg",
                                    name: "Detaylar için mail atınız..",
                                    title: "Uluslararası Anlaşmalar"),
                                abus(
                                    photo: "assets/images/ab3.jpg",
                                    name: "Detaylar için mail atınız..",
                                    title: "Programlar"),
                                abus(
                                    photo: "assets/images/ab4.png",
                                    name: "Detaylar için mail atınız..",
                                    title: "Etkinlikler"),
                                abus(
                                    photo: "assets/images/ab5.png",
                                    name: "Detaylar için mail atınız..",
                                    title: "Burslar"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
