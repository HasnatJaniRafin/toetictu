import 'package:flutter/material.dart';
import 'custom_dialog.dart';
import 'game_button.dart'; // Ensure this file exists and contains a definition for GameButton

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<GameButton> buttonsList; // Using 'late' because we are initializing it in initState
  late List<int> player1;
  late List<int> player2;
  int currentPlayer = 1; // Initialize with a default value

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
    player1 = [];
    player2 = [];
  }

  List<GameButton> doInit() {
    return List<GameButton>.generate(9, (i) => GameButton(id: i + 1));
  }

  void playGame(GameButton gb) {
    setState(() {
      if (currentPlayer == 1) {
        gb.text = "X";
        gb.bg = Colors.green;
        currentPlayer = 2;
        player1.add(gb.id);
      } else {
        gb.text = "O";
        gb.bg = Colors.deepOrange;
        currentPlayer = 1;
        player2.add(gb.id);
      }
      gb.enabled = false;
      checkWinner();
    });
  }

  void checkWinner() {
    int? winner = checkWinnerForPlayers(player1, 1) ?? checkWinnerForPlayers(player2, 2);

    if (winner != null) {
      String winnerText = winner == 1 ? "Player 1 Won!" : "Player 2 Won!";
      showDialog(
          context: context,
          builder: (_) => CustomDialog(winnerText, "Tap to play again!", resetGame));
    }
  }

  int? checkWinnerForPlayers(List<int> player, int playerNo) {
    const winningCombinations = {
      {1, 2, 3},
      {4, 5, 6},
      {7, 8, 9},
      {1, 4, 7},
      {2, 5, 8},
      {3, 6, 9},
      {1, 5, 9},
      {3, 5, 7},
    };

    for (var combo in winningCombinations) {
      if (combo.every(player.contains)) {
        return playerNo;
      }
    }
    return null;
  }
  //nnew commm54et

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
      player1 = [];
      player2 = [];
      currentPlayer = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Multiple Player TicTacToe',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: buttonsList.length,
        itemBuilder: (context, i) => SizedBox(
          width: 100.0,
          height: 100.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.pink[200], backgroundColor: buttonsList[i].bg, // foreground (text) color
            ),
            onPressed: buttonsList[i].enabled
                ? () => playGame(buttonsList[i])
                : null,
            child: Text(
              buttonsList[i].text,
              style: TextStyle(color: Colors.indigo[900], fontSize: 20.0),
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Restart'),
        icon: Icon(Icons.restart_alt),
        onPressed: resetGame,
      ),
    );
  }
}
