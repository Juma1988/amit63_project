part of 'view.dart';

Widget _Welcome() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Mohamed Dian👋', //todo get the name from API
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF111827)),
          ),
          Text(
            'Create a better future for yourself here',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF6B7280),
            ),
          ),
        ],
      ),
      IconButton(
        icon: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              child: Icon(
                Icons.notifications_outlined,
                color: Color(0xFF111827),
              ),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  border: Border.all(color: Color(0xFFD1D5DB), width: 2.0)),
            ),
            // todo by using if and if there notification from the API determine the red dot
            Container(
              alignment: AlignmentDirectional.topEnd,
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(6)),
            )
          ],
        ),
        onPressed: () {
          //todo GoTo Notifications page
        },
      ),
    ],
  );
}
