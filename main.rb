puts "Deleting old git files and README"
system "rm -Rf .gitignore .git README"
puts "Done!"

puts "\n\n"

puts "Moving files from 'files' directory to root"
system "mv files/* ."
puts "Done!"

puts "\n\n"

puts "Deleting main.rb"
system "rm main.rb"
puts "Done!"

puts "\n\n"

puts "Initializing git"
system "git init"
system "git add ."
system "git commit -am 'Initial commit'"
puts "Done!"
