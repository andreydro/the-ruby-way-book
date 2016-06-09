[1, 2, 3]
[1, 2, "boots"]
[1, 2, [3, 4], 5]
["alpha", "beta", "gamma", "delta"]

%w[alpha beta gamma delta]
%w[ Jan Fev Mar Apr May Jun Jul Aug Sep Oct Nov Dec]
%w/am is are was were be being been/

val = myarray[0]
print stats[j]
x[i] = x[i + 1]

{1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25, 6 => 36}
{"cat" => "cats", "ox" => "oxen", "bacterium"=> "bacteria"}
{"adds" => [1,3,5,7], "evens" => [2,4,6,8]}
{"foo" => 123, [4,5,6] => "my array", "867-5309" => "Jenny"}

{hydrogen: 1, helium: 2, carbon: 12}

print phone_numbers["Jenny"]
plurals["octopus"] = "octopi"
atomic_numers[:helium] # -> 2

case "This is string of sumbols"
  when "one value"
    puts "branch 1"
  when "another value"
    puts "branch 2"
  when /sumbl/
    puts "branch 3"
  else puts "branch 4"
end

if x < 5 then
  statement1

unless x >= 5 then
  statement1

if x < 5 then
  statement1
else
  statement2
end

statement1 if y == 3

statement1 unless y != 3

x = if a > 0 then b else c end

x = unless a <= 0 then c else b end

end while i < list.size


list = %w[alpha bravo charlie delta echo]

i =0
while i < list.size do
  print "#{list[i]}"
  i += 1
end

i =0
until i == list.size do
  print "#{list[i]}"
  i += 1
end

i = 0
begin
  print "#{list[i]}"
  i += 1
end while i < list.size

i = 0
begin
  print "#{list[i]}"
  i += 1
end until i == list.size

for x in list do
  print "#{x}"
end

list.each do |x|
  print "#{x}"
end

i = 0
n = list.size - 1
loop do
  print "#{list[i]}"
  i += 1
  break if i > n
end

i = 0
n = list.size - 1
loop do
  print "#{list[i]}"
  i += 1
  break unless i <= n
end

n = list.size
n.times do |i|
  print "#{list[i]}"
end

n = list.size - 1
0.upto(n) do |i|
  print "#{list[i]}"
end

n = list.size - 1
for i in 0..n do
  print "#{list[i]}"
end
end

list.each_index do |x|
  print "#{;is[x]}"
end

def my_sequence
  (1..10).each do |i|
    yield i
  end
end

my_sequence {|x| puts x**3 }

myFile = File.new("textfile.txt","w")
myString = String.new("This is string object")

your_string = "This is also a string object"
number = 5

x.object_id
y.object_id

x.gsub!(/a/,"x")
y     # xbc

x.freeze
x.gsub!(/b/,"y")

suits = [:hearts, :clubs, :diamonds, :spades]
lead = suits[1].to_s

suits = %i[hearts clubs diamonds spades] # massive of symbols

class ClassName
  # ...
end

class Friend
  @@muname = "Andrey"

  def initialize(nmae, sex, phone)
    @name, @sex, @phone = name, sex, phone
  end

  def hello
    puts "Hello, I #{@name}"
  end

  def Friend.our_common_friend
    puts "We all frineds #{@@myname}."
  end
end

f1 = Frined.new("Susan", "F","555-0123")
f2 = Friend.new("Tom","M","555-4567")

f1.hello
f2.hello
Frined.our_common_friend

class MyClass

  NAME = "Class Name"
  @@count += 1

  def initialize
    @@count += 1
    @myvar = 10
  end

  def MyClass.getcount
    @@count
  end

  def getcount
    @@count
  end

  def getmyvar
    @myvar
  end

  def setmyvar(val)
    @myvar = val
  end

  def myvar=(val)
    @myvar = val
  end
end

foo = MyClass.new
foo.setmyvar 20
foo.myvar = 30

class MyClass
    def method1
      #...
    end

    def method2
      #...
    end

    def method3
      #...
    end

    private :method1
    public

    :method2
    protected :method3

    private

    def my_method
      #...
    end

    def another_method
      # ...
    end

end

Time.mktime(2000, "Aug", 24, 16, 0)

3.succ.to_s
3+2.succ

my_array.each do |x|
  some_action
end

File.open(filename) { |f| some_action }

receiver.method(arg1, *more_args)

def my_method(a, b, *c)
  print a, b
  c.each do |x| print x end
end

my_method(1,2,3,4,5,6,7)

a = 1, b = 2, c = [3,4,5,6,7]

def my_method(name: "default", options: {})
  options.merge!(name: name)
  some_action_with(options)
end

def other_method(name:, age:)
  puts "Age of person #{name} is #{age} years" #error
end

str = "Hello, world!"
str2 = "Goodbye!"

def str.spell
  self.split(/./).join("-")
end

str.spell
str2.spell

def calculate(op1, operator, op2)
  string = op1.to_s + operator + op2.to_s
  eval(string)
end

@alpha = 25
@beta = 12

puts calculate(2, "+", 2)
puts calculate(5, "*", "@alpha")
puts calculate("@beta", "**", 3)

puts "Method name: "
meth_name = gets
puts "String of code: "
code = gets

string = %[def #{meth_name}\n #{code}\n end]
eval(string)
eval(meth_name)

if platform == Windows
  action1
elsif platform == Linux
  action2
else
  default_action
end

if defined? soe_var
  puts "some_var = #{some_var}"
else
  puts "Variable some_var unknown"
end

puts "abc".class
puts 345.class
rover = Dog.new

print rover.class

if rover.is_a? Dog
  puts "Of course, it is"
end

if rover.kind_of? Dog
  puts "Yes, still a dog"
end

if rover.is_a? Animal
  puts "Yes, it is an animal"
end

for var in 1..10
  puts "var = #{var}"
  if var . 5
    var = var + 2
  end
end

case expression
  when value
    some action
end

if value ===expression
  some action
end

case "Hello"
  when /Hell/
    puts 'Conformity exist'
else
  puts "No conformity"
end

case /Hell/
  when 'Hello'
    puts "Conformity exist"
else
  puts "No conformity"
end

case x
  when 0
  when 1..5
    puts "Second branch"
  when 5..10
    puts "Third branch"
else
  puts "Fourth branch"
end

my_array.each { |x| puts x }

my_array.each do |x|
  print x
  if x % 2 == 0
    puts "even"
  else
    puts "odd"
  end
end

def power(exponent)
  proc {|base| base**exponent}
end

square = power(2)
cube = power(3)

a = square.call(11)
b = square.call(5)
c = cude.call(6)
d = cube.call(8)

closure = nil
1.times do
  x = 5
  closure = Proc.new { puts "in the end, x = #{x}"}
end

x = 1
closure.call

class MyClass

  @x = 1
  @y = 2

  def my_method
    @x = 3
  end

end

y = if a < 8
  6
else
  7
end

t = case a
  when 0..3
    "low"
  when 4..6
    "medium"
else
  "high"
end

i = 0
x = while (i < 5)
  puts i += 1
end

str = "hello"
class << str
  def hyphenated
    self.split("").join("-")
  end
end

str.hyphenated

class MyClass
  class << self
    def hello
      puts "Hello from #{self}"
    end
  end
end
