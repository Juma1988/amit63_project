part of 'view.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 149,
      width: 375,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF6B7280)),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    //todo goto edit profile
                  },
                  child: Text('Edit')),
            ],
          ),
          Text(
            'Im Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.',
            maxLines: 4,
            style: TextStyle(
                color: Color(0xFF6B7280),
                fontWeight: FontWeight.w400,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
