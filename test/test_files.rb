require "imba/source"

expected = %w[
  imba.js
  imba.min.js
  imbac.js
  imbac.min.js
]

exit_code = 0

expected.each do |file|
  print "#{file.ljust(40)}"
  if (Imba::Source::BROWSER_PATH + file).exist?
    puts "OK"
  else
    puts "MISSING"
    exit_code = 1
  end
end

exit exit_code

