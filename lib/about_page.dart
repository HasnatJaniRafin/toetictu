import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Game history'),
        backgroundColor: Colors.pink[300], // You can choose a color that fits your app theme
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CircleAvatar(
              radius:150,
              backgroundImage: AssetImage('assets/play_store_512.png'), // Replace with actual image path for ChuChu
            ),
            Text(
              'Tic Tac Toe: A Brief History',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tic Tac Toe, also known as Noughts and Crosses or Xs and Os, is a classic pencil-and-paper game enjoyed by people of all ages around the world. Its origins can be traced back thousands of years, with variations found in ancient civilizations such as Egypt and Rome.\n'
                  'The game simplicity belies its enduring popularity. With just a grid of nine squares, players aim to strategically place their Xs or Os to create a row of three symbols horizontally, vertically, or diagonally. Despite its straightforward rules, Tic Tac Toe offers a surprising depth of strategy, making it a timeless favorite for casual players and serious gamers alike.The earliest known version of Tic Tac Toe can be found in ancient Egypt, where archaeologists have discovered a game similar to the modern version carved into the floor of a temple dating back to around 1300 BCE. Known as "Three Men Morris," this game featured a grid of squares where players competed to align their pieces in rows of three.Centuries later, the game evolved in ancient Rome, where it was known as "Terni Lapilli," or "Three Stones." Played on a grid of nine squares, Terni Lapilli shared many similarities with modern Tic Tac Toe, including the objective of forming a row of three symbols.'

               'Tic Tac Toe gained widespread popularity in the 20th century, becoming a staple of schoolyards and family game nights around the world. Its accessibility and intuitive gameplay made it a favorite pastime for children and adults alike.'
              'The game\'s name, "Tic Tac Toe," is believed to have originated in the United States in the mid-20th century. The term "tic-tac-toe" is an onomatopoeic reference to the sound of the markers being placed on the grid.'
            'In addition to its traditional paper-and-pencil format, Tic Tac Toe has been adapted into various electronic versions, including computer games, mobile apps, and online platforms. These digital adaptations have introduced new features such as multiplayer modes, customizable themes, and AI opponents, further enhancing the game\'s appeal in the digital age.'
                  'Tic Tac Toe has also inspired numerous variations and spin-offs, with creative reinterpretations incorporating different themes, grid sizes, and gameplay mechanics. From themed versions featuring popular characters to complex strategic variants designed for competitive play, Tic Tac Toe continues to evolve while retaining its timeless charm.Despite its ancient origins, Tic Tac Toe remains as beloved and relevant today as it was thousands of years ago. Its simple yet engaging gameplay continues to captivate players of all ages, ensuring that this timeless classic will endure for generations to come. Whether played on a piece of paper, a digital screen, or in the sands of ancient Egypt, Tic Tac Toe continues to bring joy and entertainment to players around the world.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'The Epic Battle of Tic Tac Toe Titans',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 10),
            Text(
'Once upon a lazy Sunday afternoon, in the quaint town of Noughts and Crossesville, two formidable foes found themselves locked in an epic battle of Tic Tac Toe. The contenders? None other than Timmy "X" McLaughlin and Olivia "O" Johnson, the reigning champions of their neighborhood.'
    'The stage was set in Timmy\'s backyard, where a makeshift Tic Tac Toe grid was drawn in chalk on the patio. With a piece of chalk clenched in one hand and determination gleaming in their eyes, Timmy and Olivia squared off for what promised to be the most intense game of Tic Tac Toe in history.'
    'As the game commenced, the air crackled with tension. Timmy made the first move, confidently placing his X in the center square. Olivia countered with an O in the top left corner, setting the stage for a battle of wits that would rival the greatest strategic minds of all time.\n\n'
    'Back and forth they went, each move met with cheers or groans from the peanut gallery of neighborhood kids who had gathered to witness the showdown. Timmy and Olivia employed cunning strategies, blocking each other\'s attempts to form a winning row while simultaneously plotting their own path to victory.\n\n'
            'But as the game progressed, something unexpected happened. With every move, the tension melted away, replaced by laughter and camaraderie. The stakes may have been high, but the joy of friendly competition outweighed any desire for victory.\n\n'

              'As the sun dipped below the horizon, casting a warm glow over the backyard battlefield, Timmy and Olivia reached a stalemate. With no clear winner in sight, they declared the match a draw and shook hands, acknowledging each other as worthy adversaries.\n\n'

            'As they packed up the chalk and bid farewell to their friends, Timmy and Olivia knew that their epic battle of Tic Tac Toe would be remembered for years to come. And though the game may have ended in a tie, the bond of friendship forged on that fateful afternoon would endure forever.\n\n'
              ,
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
