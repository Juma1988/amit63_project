import 'package:app/core/design/image2.dart';
import 'package:app/core/design/navigator.dart';
import 'package:flutter/material.dart';

import '../03_preferred_ocation/View.dart';

class interestedInPage extends StatefulWidget {
  @override
  _interestedInPageState createState() => _interestedInPageState();
}

class _interestedInPageState extends State<interestedInPage> {
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'What type of work are you interested in?',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111827)),
              ),
              SizedBox(height: 10),
              Text(
                'Tell us what you are interested in so we can customise the app for your needs.',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF737379),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildOptionTile(
                      'UI/UX Designer',
                      'ux_designer_a.png',
                      'ux_designer_b.png',
                    ),
                    _buildOptionTile(
                      'Illustrator Designer',
                      'illustrator_a.png',
                      'illustrator_b.png',
                    ),
                    _buildOptionTile(
                      'Developer',
                      'developer_a.png',
                      'developer_b.png',
                    ),
                    _buildOptionTile(
                      'Management',
                      'management_a.png',
                      'management_b.png',
                    ),
                    _buildOptionTile(
                      'Information Technology',
                      'information_technology_a.png',
                      'information_technology_b.png',
                    ),
                    _buildOptionTile(
                      'Research and Analytics',
                      'research_analytics_a.png',
                      'research_analytics_b.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  onPressed: () {
                    AppGoto(PreferredLocationPage());                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(
      String title, String activePath, String unActivePath) {
    bool isSelected = selectedOptions.contains(title);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedOptions.remove(title);
          } else {
            selectedOptions.add(title);
          }});
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 14,right: 14),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              child: AppImage2(
                isSelected ? activePath : unActivePath,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Flexible(
                  child: Text(
                    softWrap: true,
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.blue : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
