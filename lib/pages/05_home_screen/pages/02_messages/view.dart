import 'package:flutter/material.dart';

part '_msg_model.dart';

part '_spacer.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/images/chat_page_twitter_logo.png'),
              radius: 15,
            ),
            SizedBox(width: 8),
            Text('Twitter', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Center(
                  child: _spacer(
                    date: 'Today, Nov 13',
                  ),
                ),
                SizedBox(height: 16),
                _messageModel(
                    isSend: false,
                    msg:
                    'Hi Mohamed!, Im Mohsen the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.',
                    time: '10.18'),
                _messageModel(
                    isSend: true,
                    msg:
                    'Hi Mohamed, thank you for considering me, this is good news for me.',
                    time: '10:18'),
                _messageModel(
                    isSend: false,
                    msg:
                    'Can we have an interview via google meet call today at 3pm?',
                    time: '10:18'),
                _messageModel(
                    isSend: true, msg: 'Of course, I can!', time: '10:18'),
                _messageModel(
                    isSend: false,
                    msg:
                    'Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!\nhttps://meet.google.com/dis-sxdu-ave',
                    time: '10:18')
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.attach_file),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                      hintText: 'Write a message...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
