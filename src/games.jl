module games

println("Which game do you want to play? \nPress 1 for Mad Libs, \n2 for Guess the Number, \n3 for the computer number guessing game, \n4 for rock paper scissors, \nor press 0 to exit")
choice = parse(Int64, readline())

include("mad_libs.jl")
include("guess_the_number.jl")
include("computer_guesses_number.jl")
include("rock_paper_scissors.jl")

# mad_libs.play_mad_libs()
if choice == 1
    mad_libs.play_mad_libs()
elseif choice == 2
    guess_number.guess_number_human()
elseif choice == 3
    computer_guesses.play_number_guess_computer()
elseif choice == 4
    🗿📃✂️.play_rock_paper_scissors()
elseif choice == 0
    exit(0)
else
    println("Please pick a number, or press 0 to exit")
end



end # games
