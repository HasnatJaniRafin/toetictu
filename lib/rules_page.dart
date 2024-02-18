import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Rules & Policy'),
        backgroundColor: Colors.deepPurple, // You can choose a color that fits your app theme
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Game Rules',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. The game is played on a grid that\'s 3 squares by 3 squares.\n'
                  '2. You are X, your friend (or the computer in this case) is O. '
                  'Players take turns putting their marks in empty squares.\n'
                  '3. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.\n'
                  '4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a draw.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Our Multiplayer Tic Tac Toe game respects your privacy and is committed to protecting any personal information you provide while using our service. We may collect certain information for the purpose of enhancing your gaming experience, such as your username, gameplay statistics, and device information. This information is used solely for internal purposes and will not be shared with third parties without your consent.\n\n'
              'We may also collect non-personal information through the use of cookies and similar technologies to improve our service and analyze user trends. This information is aggregated and used for statistical purposes only.\n\n'
              'By using our Multiplayer Tic Tac Toe game, you consent to the collection and use of your information as outlined in this Privacy Policy. We reserve the right to update or modify this policy at any time, and any changes will be reflected on this page. If you have any questions or concerns about our Privacy Policy, please contact us.\n',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            // Add more Text Widgets for additional sections as needed.
          ],
        ),
      ),
    );
  }
}
