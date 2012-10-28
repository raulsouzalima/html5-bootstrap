puts "Deleting old git files and README"
system "rm -Rf .gitignore .git README.md"
puts "Done!"

puts "\n\n"

puts "Moving files from 'files' directory to root"
system "mv files/* ."
puts "Done!"

puts "\n\n"

puts "Deleting main.rb and files directory"
system "rm -rf main.rb files"
puts "Done!"

unless ARGV.any? {|option| ['-G', '--skip-git'].include?(option) }
  puts "\n\n"

  puts "Initializing git"
  system "git init"
  system "git add ."
  system "git commit -am 'Initial commit'"
  puts "Done!"
end

puts "\n\n"

puts "Success! Now, go work!"
