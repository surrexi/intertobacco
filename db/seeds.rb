chipers = []
100.times do
  tobac_cocipher = TobaccoCipher.create
  chipers << tobac_cocipher.cipher
end
File.open("public/ciphers_#{Date.today.to_s}.txt","w+") do |f|
  f.puts(chipers)
end
