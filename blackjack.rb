class Blackjack
    def initialize
        #its betwwen user and computer
      @user_hand =[] 
      @computer_hand=[] 
      deal_initial_cards #  user and computer intail 2 card
    end

    def draw_card  #card 2 to 11 #random card 
     rand(2..11)
    end
  
    private
  
    def deal_initial_cards
      2.times do 
        @user_hand << draw_card
        @computer_hand<<draw_card
      end
    end
  
    def hand_value(hand)
      hand.sum #sum of total value in hand 
    end
  
    def user_hit?  #check value excced to 21 
      hand_value(@user_hand)<21
    end
  
    def user_busted?
      if hand_value(@user_hand)> 21
        puts "you husted with total #{hand_value(@user_hand)}, Compuetr win"
        true
      else
        false
      end
    end
  
    def user_turn
      while user_hit?
        puts " do you want to hit and stand  choose h and s" 
          action = gets.chomp.downcase
          if action == 'h'
             @user_hand <<draw_card
             display_hands
             break if user_busted?
          elsif action=='s'
            break
          else
           puts "input invalid, enter h (hit) and s (stand)"
          end
        end    
    end
  
  
    def computer_turn
      puts " its computer now"
      puts "computer hand is #{@computer_hand.join(",")} total: #{hand_value(@computer_hand)}"
      while hand_value(@computer_hand) <= 16
        @computer_hand<<draw_card
        puts "computrer hit  #{@computer_hand.join(",")} total: #{hand_value(@computer_hand)}"
      end 
    end
  
    def display_hands
      puts "in your hand #{@user_hand.join(',')} (total: #{hand_value(@user_hand)})"
      puts "computer hand #{@computer_hand[0]}, ?"
    end
  
    def winner_willbe
      user_total= hand_value(@user_hand)
      computer_total= hand_value(@computer_hand)
      if computer_total>21
        puts "computer busted with total of #{computer_total}, you win"
      elsif computer_total< user_total
        puts " you win with total #{user_total} with computer total #{computer_total}"
      elsif computer_total< user_total
        puts " computer win with total #{computer_total} with computer total #{user_total}"  
      else
        puts "like the tie your total #{user_total}, computer wins" 
      end 
    end
    public
    def play
        puts "blackjack game"
         display_hands
         user_turn
         return if user_busted?
        computer_turn
        winner_willbe
       end
  end
  
  # Start the game
  game = Blackjack.new
  game.play
  