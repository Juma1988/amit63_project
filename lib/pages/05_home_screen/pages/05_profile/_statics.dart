part of 'view.dart';

class _Static extends StatelessWidget {
  const _Static();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 68,
        width: 327,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Color(0xFFFAFAFA)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 52,
              width: 91,
              child: Column(
                children: [
                  Text(
                    'Applied',
                    style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Text(
                    '46',
                    style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 44,
                child: VerticalDivider(
                  width: 20,
                  color: Color(0xFFD1D5DB),
                  thickness: 1,
                )),
            SizedBox(
              height: 52,
              width: 91,
              child: Column(
                children: [
                  Text(
                    'Reviewed',
                    style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Text(
                    '23',
                    style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 44,
                child: VerticalDivider(
                  width: 20,
                  color: Color(0xFFD1D5DB),
                  thickness: 1,
                )),
            SizedBox(
              height: 52,
              width: 91,
              child: Column(
                children: [
                  Text(
                    'Contacted',
                    style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Text(
                    '16',
                    style: TextStyle(
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
