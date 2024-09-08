part of 'view.dart';

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(height: 141),
            CircleAvatar(radius: 45, backgroundColor: Colors.white),
            ClipOval(
                child: AppImage(
              'profile_image.png',
              height: 85,
              width: 85,
              fit: BoxFit.cover,
            )),
          ],
        ),
        Container(
          height: 50,
          child: Column(
            children: [
              Text(
                'Rafif Dian Axelingga',
                style: TextStyle(
                    color: Color(0xFF111827),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Senior UI/UX Designer',
                style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
