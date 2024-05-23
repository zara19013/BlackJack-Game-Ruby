# BlackJack Game in Ruby

This is a simplified version of Blackjack implemented in Ruby. In this game, the user plays against the computer. The game follows the basic rules of Blackjack but uses only numeric card values ranging from 2 to 11.

## Game Rules

1. Both the player and the computer are dealt two initial cards.
2. The player can choose to "hit" (draw another card) or "stand" (keep their current hand).
3. If the player's total exceeds 21, they bust, and the computer wins.
4. After the player stands, the computer will reveal its hand and draw cards until it reaches a total value of at least 17.
5. If the computer's total exceeds 21, it busts, and the player wins.
6. The player with the higher total value wins. In the case of a tie, the computer wins.

## Installation

1. Ensure you have Ruby installed on your machine.
2. Clone this repository or copy the code into a file named `blackjack.rb`.

## How to Play

1. Run the game using the following command:
   ```bash
   ruby blackjack.rb
