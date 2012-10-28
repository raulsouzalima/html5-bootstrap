puts "Deleting old git files and README"
system "rm -Rf .gitignore .git README"
puts "Done!"

puts "\n\n"

puts "Moving files from 'files' directory to root"
system "mv files/* ."
puts "Done!"
