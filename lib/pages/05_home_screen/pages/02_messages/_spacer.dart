part of 'view.dart';

class _spacer extends StatelessWidget {
  final String date;

  const _spacer({required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: 112, child: Divider(thickness: 1, color: Color(0xFF9CA3AF))),
        Text(
          '\t\t$date\t\t',
          style: TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 112,
          child: Divider(
            thickness: 1,
            color: Color(0xFF9CA3AF),
          ),
        )
      ],
    );
  }
}
