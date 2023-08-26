module guess_number

# rand(1:10)

function guess_number_human()

    upper_limit = 25

    # generate a random number within a certain range
    target_num = rand(1:upper_limit)

    guess = 0

    # while the number hasn't been guessed, keep prompting for guesses
    while guess != target_num
        println("Please guess a number between  1 and $upper_limit")

        # convert the string value input to an integer
        guess = parse(Int64, readline())

        # if we are within +/- 2 of the target, give a hint
        if abs(target_num - guess) <= 2 && target_num != guess
            println("\n You're getting close!")
        end
    end

    println("Nice job, you got it!")

end


end