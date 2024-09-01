part of 'view.dart';

final int currentIndex = 1;
final List<String> images = [
  'on_boarding0.png',
  'on_boarding1.png',
  'on_boarding2.png'
];
final List<Widget> titles = [
  Align(
    alignment: AlignmentDirectional.topStart,
    child: RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'Find a job, and ',
          ),
          TextSpan(
            text: 'start ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(
            text: '\n',
          ),
          TextSpan(
              text: 'building ',
              style: TextStyle(
                color: Colors.blue,
              )),
          TextSpan(
            text: 'your career ',
          ),
          TextSpan(
            text: '\n',
          ),
          TextSpan(
            text: 'from now on',
          ),
        ],
      ),
    ),
  ),
  Align(
    alignment: AlignmentDirectional.topStart,
    child: RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Hundreds of jobs are\nwaiting for you to '),
          TextSpan(
            text: 'join\ntogether',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    ),
  ),
  Align(
    alignment: AlignmentDirectional.topStart,
    child: RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Get the best '),
          TextSpan(
            text: 'choice for\nthe job ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: "you've always\ndreamed of"),
        ],
      ),
    ),
  ),
];
final List<String> descriptions = [
  'Explore over 25,924 available job roles and upgrade your operator now.',
  'Immediately join us and start applying for the job you are interested in.',
  'The better the skills you have, the greater the good job opportunities for you.'
];
