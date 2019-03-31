accounts = [{uname:"rajeev", pw:"kuikel"},
{uname:"celina", pw:"maharjan"},
{uname:"saurav", pw:"dhungel"},
]

def authorize(username, password, accounts)
    accounts.each do |users|
        if users[:uname] == username && users[:pw] == password
        return "You have logged in."
        end
    end
    "Wrong Credentials"
end

puts "Welcomes to the programs that authenticate your username and password"
puts "=" * 70

attempt = 1
while attempt < 4
    puts "Enter your username:"
    username = gets.chomp
    puts "Enter your password:"
    password = gets.chomp

    authorization = authorize(username, password, accounts)
    puts authorization

    attempt+= 1

    puts "enter 1 to exit the program or enter any other key to continue authentication"
    option = gets.chomp.downcase
    break if option == "1"
end

puts "You have exceeed your limit" if attempt == 4