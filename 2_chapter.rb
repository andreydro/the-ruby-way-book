sq = %q[ As Magrid said, "Ceci n'est pas une pipe."]
s2 = %q[This is not tabulation: (\t)]
s3 = %Q[But this is tabulation: (\t)]

s1 = %q(Bill said: "Bob said : 'This is a string.'")
s2 = %q(Another string.)
s3 = %q< This string have special symbols '"[](){}.>

str = <<EOF
Three girld near by the window
Were spining late inf th evening...
EOF

str = <<'EOF'
This is not tabulation singh: \t
This is not symbol of new string: \n
EOF

str = <<-EOF
  All of this string
  starts from pair
  of spaces
  EOF

class String
  def strip_heredoc
    margin = self[/\A\s*/]
    gsub(/\s{#{margin.size}}/,"")
  end
end

str = <<end.strip_heredoc
  This inserted dosument has "left margin",
  changed with spaces in the left string.

  We can turn on quotes,
  make ledges and etc.
end

str = "Carl"
x = str1.length #4
str2 = "Doily"
x = str2.size #5

str = "Once upon a time\nsomewhere...\nEnd\n"
num = 0
str.each do |line|
  num +=1
  print "String #{num}: #{line}"
end

str = "unce upon a time\nsomewhere...\nEnd\n"
str.each_line.with_index do |line, num|
  print "String #{num + 1}: #{line}"
end

str = "ABC"
str.each_byte {|byte| print byte, " "}
puts

str = "ABC"
str.each_line {|char| print char, " "}
puts

str = "ABC"
chars = str.scan(/./)
chars.each {|char| print char, " "}

class String

  alias old_compare <=>

  def <=>(other)
    a = self.dup
    b = other.dup
    a.gsub!(/[\,\.\&\!\:\;]/, "")
    b.gsub!(/[\,\.\&\!\:\;]/, "")
    a.gsub!(/^(a |an |the )/i, "")
    b.gsub!(/^(a |an |the )/i, "")
    a.strip!
    b.strip!
    a.old_compare(b)
  end
end

title1 = "Calling All Cars"
title2 = "The Call Of the Wild"

if title1 < title2
  puts "yes"
else
  puts "no"
end

class String
  def <=>(other)
    casecmp(other)
  end
end

# or more easy way

String
  alias <=> casecmp(other)
end

Class String
  def ==(other)
    casecmp(other) == 0
  end
end

s1 = "It was dark stromy night"
words = s1.split
s2 = "apples, grapes, peaches"
list = s2.split(", ")
S3 = "lions and tigers and bears"
zoo = s3.split(/ and /)

str = "alpha, beta, gamma,,"
list1 = str.split(",")
list2 = str.split(",",2)
list3 = str.split(",",4)
list4 = str.split(",",8)
list5 = str.split (",",-1)

str = "I am a leaf on the wind..."

arr = str.scan("a")
arr = str.scan(/\w+/)
str.scan(/\w+/) {|x| puts x }

require "strscan"
str = "Watch how I'am soaring!"
ss = StringScanner.new(str)
loop do
  word = ss.scan(/\w+/)
  break if word.nil?
  puts word
  sep = ss.scan(/\W+/)
  break if sep.nil?
end
