part of 'view.dart';

class _messageModel extends StatelessWidget {
  final bool isSend;
  final String msg, time;

  const _messageModel(
      {required this.isSend, required this.msg, required this.time});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSend ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.70,
        ),
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSend ? Color(0xFF3366FF) : Color(0xFFE5E7EB),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment:
              isSend ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              msg,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: isSend ? Color(0xFFF4F4F5) : Color(0xFF1F2937)),
            ),
            SizedBox(height: 4),
            Text(
              time,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: isSend ? Color(0xFFE5E7EB) : Color(0xFF9CA3AF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
