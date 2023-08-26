module toy_password_gen

using ProgressBars
using Random

function generate_toy_passwords()
    num_passwords = parse(Int64, Base.prompt("How many passwords do you want to generate? (max 25)"))
    password_length = parse(Int64, Base.prompt("How long should each password be (min. 8 characters)?"))

    if num_passwords > 25
        num_passwords = parse(Int64, Base.prompt("Please enter how many passwords you want, but it has to be 25 or less!"))
    end

    if password_length < 8
        password_length = parse(Int64, Base.prompt("Please provide a desired password length greater than or equal to 8 characters"))
    end


    password_holder = []

    # progress bar shows how close we are to being done
    for i in ProgressBar(1:num_passwords)
        # add the new password to the password holder
        push!(password_holder, randstring(password_length))

        # manually slow down password generration to show progress bars
        sleep(0.25)
    end

    for password in password_holder
        println(password)
    end

end






end # module