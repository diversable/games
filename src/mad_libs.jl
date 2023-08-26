module mad_libs

# Examples
# name = "Daniel"

# str = "Hello, my name is $name"

# str2 = String("Hello my name is " * name)

# string("hello ", name)



# only works in repl
# my_name = readline()

function play_mad_libs()
    println("Welcome to mad libs!")


    println("Enter a verb: ")
    verb1 = readline()

    println("Enter an adjective: ")
    adj1 = readline()

    println("Enter a noun: ")
    noun1 = readline()

    println("Enter another noun: ")
    noun2 = readline()

    println("Enter a catchphrase: ")
    phrase = readline()

    base_ss = "John $verb1 down the street one night, playing with his $adj1 $noun1, when all of a sudden a $noun2 jumped out at him and said \"$phrase\""
    print("\n\n", base_ss)

end

end # module