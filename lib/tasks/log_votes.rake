desc "Loading data from logs"
task :log_votes => :environment do
  # print "Enter file loaction: "
  filename = "votes.txt" # gets.chomp
  f = File.open(filename, 'r')
  vote_count = 0
  f.each_line do |l|
    l = l.split
    if l[0] == "VOTE"
      p l
      Vote.create(received: Time.at(l[1].to_i), campaign: l[2].gsub("Campaign:",""), validity: l[3].gsub("Validity:",""), candidate: l[4].gsub("Choice:",""))
      vote_count += 1
    end
  end
  puts "#{vote_count} votes have been added to the database."
end