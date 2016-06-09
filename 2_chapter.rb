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

