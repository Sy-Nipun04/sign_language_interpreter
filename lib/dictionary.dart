import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialButtonData {
  final String imagePath;
  final String title;
  final String url;

  TutorialButtonData(this.imagePath, this.title, this.url);
}

class NumberButtonData {
  final String imagePath;
  final String title;
  final String url;

  NumberButtonData(this.imagePath, this.title, this.url);
}

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _MyAppState();
}

class _MyAppState extends State<DictionaryPage> {
  final List<TutorialButtonData> tutorialButtons = [
    TutorialButtonData('assets/A.png', 'A',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=65s'),
    TutorialButtonData('assets/B.png', 'B',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=81s'),
    TutorialButtonData('assets/C.png', 'C',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=92s'),
    TutorialButtonData('assets/D.png', 'D',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=101s'),
    TutorialButtonData('assets/E.png', 'E',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=114s'),
    TutorialButtonData('assets/F.png', 'F',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=128s'),
    TutorialButtonData('assets/G.png', 'G',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=193s'),
    TutorialButtonData('assets/H.png', 'H',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=206s'),
    TutorialButtonData('assets/I.png', 'I',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=215s'),
    TutorialButtonData('assets/J.png', 'J',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=225s'),
    TutorialButtonData('assets/K.png', 'K',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=235s'),
    TutorialButtonData('assets/L.png', 'L',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=252s'),
    TutorialButtonData('assets/M.png', 'M',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=302s'),
    TutorialButtonData('assets/N.png', 'N',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=316s'),
    TutorialButtonData('assets/O.png', 'O',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=329s'),
    TutorialButtonData('assets/P.png', 'P',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=338s'),
    TutorialButtonData('assets/Q.png', 'Q',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=350s'),
    TutorialButtonData('assets/R.png', 'R',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=362s'),
    TutorialButtonData('assets/S.png', 'S',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=376s'),
    TutorialButtonData('assets/T.png', 'T',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=431s'),
    TutorialButtonData('assets/U.png', 'U',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=443s'),
    TutorialButtonData('assets/V.png', 'V',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=448s'),
    TutorialButtonData('assets/W.png', 'W',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=458s'),
    TutorialButtonData('assets/X.png', 'X',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=467s'),
    TutorialButtonData('assets/Y.png', 'Y',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=489s'),
    TutorialButtonData('assets/Z.png', 'Z',
        'https://www.youtube.com/watch?v=DBQINq0SsAw&t=499s'),
  ];

  final List<NumberButtonData> numberButtons = [
    NumberButtonData('assets/0.png', '0',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=84s'),
    NumberButtonData('assets/1.png', '1',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=90s'),
    NumberButtonData('assets/2.png', '2',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=96s'),
    NumberButtonData('assets/3.png', '3',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=103s'),
    NumberButtonData('assets/4.png', '4',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=114s'),
    NumberButtonData('assets/5.png', '5',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=123s'),
    NumberButtonData('assets/6.png', '6',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=132s'),
    NumberButtonData('assets/7.png', '7',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=145s'),
    NumberButtonData('assets/8.png', '8',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=153s'),
    NumberButtonData('assets/9.png', '9',
        'https://www.youtube.com/watch?v=Y4stD_ypaAI&t=160s'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          // Added SingleChildScrollView to handle overflow
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALPHABETS",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap:
                    true, // Prevents ListView from taking unlimited space
                physics:
                    const NeverScrollableScrollPhysics(), // Disable internal scrolling
                itemCount: tutorialButtons.length,
                itemBuilder: (context, index) {
                  final buttonData = tutorialButtons[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(buttonData.url);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch ${buttonData.url}';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            buttonData.imagePath,
                            height: 105,
                            width: 105,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  buttonData.title,
                                  style: const TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "NUMBERS",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap:
                    true, // Prevents ListView from taking unlimited space
                physics:
                    const NeverScrollableScrollPhysics(), // Disable internal scrolling
                itemCount: numberButtons.length,
                itemBuilder: (context, index) {
                  final buttonData = numberButtons[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(buttonData.url);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch ${buttonData.url}';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 3,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            buttonData.imagePath,
                            height: 105,
                            width: 105,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  buttonData.title,
                                  style: const TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
