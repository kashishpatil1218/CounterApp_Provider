
import 'package:adv_provider/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../provider/themeProvider.dart';
import 'component/contactMethode.dart';

import 'component/socialmedia_methode.dart';

class UrlScreen extends StatelessWidget {
  const UrlScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "If you have any queries, get in touch with us. We will be happy to help you!",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('tel:+91 97242-12106');
                await launchUrl(uri);
              },
              child: cotactUsDetail(
                icon: Icons.phone_iphone,
                information: '+91 9724212106',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('mailto: patilkashish649@gmail.com');
                await launchUrl(uri);
              },
              child: cotactUsDetail(
                  icon: Icons.mail, information: 'patilkashish649@gmail.com'),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                Uri uri = Uri.parse('sms: 9724212106');
                await launchUrl(uri);
              },
              child: cotactUsDetail(
                  icon: Icons.sms_outlined, information: '97242 12106'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Social Media',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Divider(color: Colors.blue.shade200),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () async {
                                Uri uri = Uri.parse(
                                    'https://github.com/kashishpatil1218');
                                await launchUrl(uri,
                                    mode: LaunchMode.inAppWebView);
                              },
                              child: SocialMedia(
                                img: image1,
                                text: 'kashishpatil1218',
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () async {
                                  Uri uri = Uri.parse(
                                      'https://www.linkedin.com/feed/');
                                  await launchUrl(uri,
                                      mode: LaunchMode.inAppWebView);
                                },
                                child: SocialMedia(
                                    img: image, text: 'kashish patil')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () async {
                                Uri uri = Uri.parse(
                                    'https://www.instagram.com/elonmusk__official__');
                                await launchUrl(uri,
                                    mode: LaunchMode.inAppWebView);
                              },
                              child: SocialMedia(img: image2, text: 'Elone_Musk'),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




}
