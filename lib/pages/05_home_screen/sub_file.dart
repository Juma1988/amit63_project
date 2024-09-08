part of 'view.dart';

int selectedIndex = 0;

List<String> icons = [
  'assets/images/navigation_bar/0_home.png',
  'assets/images/navigation_bar/0_message.png',
  'assets/images/navigation_bar/0_applied.png',
  'assets/images/navigation_bar/0_saved.png',
  'assets/images/navigation_bar/0_profile.png',
];
List<String> icons2 = [
  'assets/images/navigation_bar/1_home.png',
  'assets/images/navigation_bar/1_message.png',
  'assets/images/navigation_bar/1_applied.png',
  'assets/images/navigation_bar/1_saved.png',
  'assets/images/navigation_bar/1_profile.png',
];

final List<IconData> icons3 = [
  (Icons.home),
  (Icons.message_rounded),
  (Icons.cases_outlined),
  (Icons.save),
  (Icons.person)
];

List<String> title = ['Home', 'Messages', 'Applied', 'Saved', 'Profile'];

List<String> tooltip = [
  'Go Home',
  'Send and Resave Messages',
  'Applied for Jobs',
  'Saved for later ',
  'Edit and update Profile'
];

List<Widget> pages = [
  HomePage(),
  MessageView(),
  AppliedPage(),
  SavedPage(),
  ProfilePage()
];
