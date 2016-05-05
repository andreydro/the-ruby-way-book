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

n. = list.size - 1
0.upto(n) do |i|
  print "#{list[i]}"
end

n = list.size - 1
for i in 0..n do
  print "#{list[i]}"
end

list.each_index do |x|
  print "#{;is[x]}"
end

