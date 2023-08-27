module 🗿📃✂️

function play_rock_paper_scissors()

    moves = ["🗿", "📃", "✂️"]

    computer_move = moves[rand(1:3)]

    # NB: Base.prompt is similar to readline, but it appends a colon to the end of the line be default
    human_move = Base.prompt("Please enter 🗿,📃, or ✂️")

    if (human_move == moves[1] || human_move == moves[2] || human_move == moves[3])
        println("Rock...")
        sleep(0.8)

        println("Paper...")
        sleep(0.8)

        println("Scissors...")
        sleep(0.8)

        println("Go!")

        if computer_move == human_move
            println("You tied. Please try again!")
        elseif computer_move == "🗿" && human_move == "✂️"
            println("You lose! The computer made a rock and you made scissors. Try again!")
        elseif computer_move == "📃" && human_move == "🗿"
            println("You lose! The computer made paper and you made a rock. Try again!")
        elseif computer_move == "✂️" && human_move == "📃"
            println("You lose! The computer made scissors and you made paper. Try again!")
        else
            println("You won! The computer lost because it chose $computer_move while you made $human_move. Good job!")
        end

    else
        println("Please enter either 🗿, 📃, or ✂️")
        # return
        play_rock_paper_scissors()
    end

end


if abspath(PROGRAM_FILE) == @__FILE__
    play_rock_paper_scissors()
end


# play_rock_paper_scissors()

# entry = "stuff"
# entry = "📃"
# moves = ["🗿", "📃", "✂️"]

# if (entry != moves[1] || moves[2] || moves[3])
#     println("Enter a proper move, dammit!")
# else
#     println("You entered an acceptable move")
# end



# text_moves = ["rock", "paper", "scissors"]

# entry = "rock"

# if (entry == text_moves[1] || entry == text_moves[2] || entry == text_moves[3])
#     println("You're ok")
# else
#     println("Enter a proper move, dammit!")
# end

end