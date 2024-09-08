part of 'view.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  final List<String> general = [
    'Edit Profile',
    'Portfolio',
    'Langauge',
    'Notification',
    'Login and security',
  ];
  final List<IconData> icons = [
    Icons.person_outline,
    Icons.folder_copy_outlined,
    Icons.language,
    Icons.notifications_active,
    Icons.security,
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
          general.length,
          (index) => InkWell(
            onTap: () {
              //todo the same list of pages, then GoTo[index]
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.grey[300]!,
                    width: 1,
                  ))),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFD6E4FF),
                  child: Icon(
                    icons[index],
                    color: Color(0xFF3366FF),
                  ),
                ),
                title: Text(
                  general[index],
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
                onTap: () {
                  // Add your navigation logic here
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
