part of 'view.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  final List<String> others = [
    'Accesibility',
    'Help Center',
    'Terms & Conditions',
    'Privacy Policy',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          height: 36,
          width: double.infinity,
          color: Color(0xFFE5E7EB),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'General',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF6B7280)),
          ),
        ),
        ...List.generate(
          others.length,
          (index) => GestureDetector(
            onTap: () {
              print('Tapped on ${others[index]}');
              //todo some work to do , get the pages as list then GoTo[index], still missing the animation
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey[300]!,
                    width: 1,
                  ))),
              child: ListTile(
                title: Text(
                  others[index],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF111827)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
