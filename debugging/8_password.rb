# P:

# The following code prompts the user to set their own password if they haven-t done so already, 
# and then prompts them to login with that password. However, the program throws an error. 
# What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected? 
# Verify that you are able to log in with your new password.

password = nil

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password(password)
end

verify_password(password)

# error message: undefined local variable or method `password' for main:Object (NameError)
# 1st correctiuon is to pas in the password variable into the verify_pasword method, otherwise it can't "see" the variable referred to in line 23
# 2nd correction is to recognise that in line 34 verify password is still taking the password variable equal to nil from line 10. The way to correct this is to have
# pasword equal the set_pasword method in line 31.