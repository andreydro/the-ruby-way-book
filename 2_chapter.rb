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

name = "Bob"
age = 28
str = sprintf("Hello, %s... You looks like %d year", name, age)
str = ("%-20s %3d", name, age)
str = "%-20s %3d" %[name,age]

str = "Mody Dick"
s1 = str.ljust(12)
s2 = str.center(12)
s3 = str.rjust(12)

str = "Captain Ahav"
s1 = str.ljust(20,"+")
s2 = str.center(20,"-")
s3 = rjust(20,"123")

s1 = "Boston Tea Party"
s2 = s1.downcase
s3 = s2.upcase

s4 = s1.capitalize
s5 = s2.capitalize
s6 = s3.capitalize

s7 = "THIS IS EX-parrot"
s8 = s7.swapcase

n1 = "abc".casecmp("xyz")
n2 = "abc".casecmp("XYZ")
n3 = "ABC".casecmp("xyz")
n4 = "ABC".casecmp("abc")
n5 = "xyz".casecmp("abc")

if string =~ /[a-z]/
  puts "string contains symbols of lower case"
end

if string =~ /[A-Z]/ and string =~ /a-z/
  puts "string contains symbols o different cases"
end

if string[0..0] =~ /[A-Z]/
  puts "string starts from capitalized letter"
end

if string =~ /\p{Upper}/
  puts "string contains symbols Unicode upper case, exmple U"
end

str = "Shaltai-Boltai"
sub1 = str[7,4]
sub2 = str[7,99]
sub3 = str[10,-4]

str1 = "Alice"
sub1 = str[-3,3]
sub2 = "In mirror land"
sub3 = str2[-8,6]

str = "Windson Churchill"
sub1 = str[8..13]
sub2 = str[-4..-1]
sub3 = str[-1..-4]
sub4 = str[25..30]

str = "Alistair Cooke"
sub1 = str[/l..t/]
sub2 = str[/a.*r/]
sub3 = str[/foo/]

str = "theater"
sub1 = str["heat"]
sub2 = str["eat"]
sub3 = str["ate"]
sub4 = str["beat"]
sub5 = str["cheat"]

str = "Aaron Burr"
ch1 = str[0]
ch2 = str[1]
ch3 = str[99]

str1 = "Shaltai-Boltai"
str1[7,3] = "Hva"

str2 = "Alice"
str2[-3,3] = "lixandra"

str3 = "V zazerkalie"
str3[-9,9] = "stelko"

str4 = "Winston Churcill"
str4[8..11] = "X"

str5 = "Alistair Cooke"
str5[/e$/] = "ie Monster"

str6 = "theater"
str6["er"] = "re"

str7 = "Aaron Burr"
str7[0] = 66

s1 = "spam, spam, and eggs"
s2 = s1.sub(/spam/, "bacon")

s3 = s2.sub(/(\w+), (\w+),/,'\2, \1, ')

s4 = "Don`t forget the spam."
s5 = s4.sub(/spam/) { |m| m.reverse }

s4.sub!(/spam/) { |m| m.reverse }

s5 = "alfalfa abracadabra"
s6 = s5.gsub(/a[b1]/, "xx")
s5.gsub!(/[lfdbr]/) { |m| m.upcase + "-"}

str = "Albert Einstein"
pos1 = str.index(?E)
pos2 = str.index("bert")
pos3 = str.index(/in/)
pos4 = str.index(?W)
pos5 = str.index("bart")
pos5 = str.index(/wein/)

str = 'Albert Einstein'
pos1 = str.rindex(?E)
pos2 = str.rindex("bert")
pos3 = str.rindex(/in/)
pos4 = str.rindex(?W)
pos5 = str.rindex("bart")
pos6 = str.rindex(/wein/)

str1 = "mathematics"
tag1 = str1.include? ?e #true
tag2 = str1.include? "math" #true
str2 = "Daylight Saving Time"
tag3 = str2.include? ?s #false
tag4 = str2.include? 'Savings'  #false

str1 = "abracadabra"
sub1 = str1.scan(/a./) # sub1 = ["ab", "ac", "ad", "ad"]
str2 = "Acapulco, Mexico"
sub2 = str2.scan(/(.)(c.)/) #sub2 [["A", "ca"],["l","co"], ["i", "co"]]
str3 = "Kobayashi"
str3.scan(/[^aeiou] + [aeiou]/) do |x|
  print "Slog: #{x}\n"
end

str = 77.chr
s2 = 233.chr("UTF-8")
num = "M".ord

class Helium
  def to_s
    "He"
  end
  def to_str
    "Helium"
  end
end

e = Helium.new
print "Element"
puts e    # Element He
puts "Element is " + e    # Element Helium
puts "Element is #{e}"    # Element He

def set_title(title)
  if title.repsond_to? :to_str
    title = title.to_str
  end
  #...
end

e = Helium.new
str = "Pi #{3.14} and element #{e}"

class Fixnum
  def to_str
    self.to_s
  end
end

str = "Number equal " + 345

str = "A"
str << [1,2,3].to_s << " " << (3.14).to_s

str = gets.chop
s2 = "Some string\n"
s3 = s2.chop!
s4 = "Other string\r\n"
s4.chop!

str = "abcxyz"
s1 = str.chop

str = "abcxyz"
str2 = "123\n"
str3 = "123\r"
str4 = "123\r\n"
s1 = str.chomp
s2 = str2.chomp
s3 = str3.chomp
s4 = str4.chomp

str1 = "abcxyz"
str2 = "abcxyz"
s1 = str1.chomp("yz")
s2 = str2.chomp("x")

str1 = "\t \nabc \t\n"
str2 = str1.strip # "abc"
str3 = str1.strip!

str = "abc"
s2 = str.lstrip
s3 = str.rstrip

etc = "Etc. "*3
ruler = "+" + ("."*4+"5"+"."*4+"+")*3

puts "#{temp_f} by Farenheit equal #{temp_c} by Celsium"
puts "Value of the determinant equal #{b*b - 4*a*c}."
puts "#{word} this is #{word.reverse} vise versa"

str = "Answer equal #{def factorial(n)
    n == 0 ? 1 : n*factorial(n-1)
    end
  answer = factorial(3) * 7}, naturally."

puts "$gvar = #$gvar and ivar = #@ivar."

str = '#{name} - my name, #{nation} - my country'
name, nation = "Stiven Duglas", "Irland"
s1 = eval('''' + str + '"')
  # Stiven Duglas - my name, Irland - my country

str = proc do |name, nation|
  "#{name} - my name, #{nation} - my country"
end
s2 = str.call("Guliver Foit", "Terra")
# Guliver Floit - my name, Terra - my country

string = gets.chop!
# string "Doe, John", 35, 225, "5'10\'", "555-0123"
data = eval("[" + string + "]")
data.each {|x| puts "Value = #{x}"}
# Result:
# Value = Doe, John
# Value = 35
# Value = 225
# Value = 5' 10"
# Value = 555-0123

