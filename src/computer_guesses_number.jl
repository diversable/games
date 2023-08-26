module computer_guesses

using Random

function play_number_guess_computer()
    println("Please enter a number between 1 and 50 for the computer to guess: ")

    # convert user input to number
    target_num = parse(Int64, readline())

    # create an array of 50 numbers
    guess_order = collect(1:50)

    rng = MersenneTwister(1234)

    # randomly shuffle the array of guesses
    shuffled_guesses = shuffle(rng, guess_order)

    # loop through each guess and see if it's right...
    for guess in shuffled_guesses

        if guess == target_num
            println("\nThe computer guessed $guess and cracked the code!")

            # stop the loop if we get the right answer
            break
        end

        println("\nThe computer guessed $guess")
    end
end

# play_number_guess_computer()




end