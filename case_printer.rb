def print_cases(cases)
  if cases.is_a?(Array)
    cases.each_with_index do |c, i|
      puts "Case \##{i+1}: #{c}"
    end
  else
    puts 'NO ARRAY SUPPLIED TO print_cases'
  end
end
