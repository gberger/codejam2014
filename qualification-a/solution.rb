def case_solution(c)
  pos1 = c[0].to_i
  row1 = c[pos1].split(' ')
  pos2 = c[5].to_i
  row2 = c[pos2 + 5].split(' ')
  
  rem = row2 & row1

  if rem.size == 1
    rem.first
  elsif rem.size >= 1
    'Bad magician!'
  else
    'Volunteer cheated!'
  end
end

def solution(lines)
  lines = lines.to_a
  lines.slice(1, lines.length).each_slice(10).map {|c| case_solution(c)}
end

if __FILE__ == $0
  require '../case_printer.rb'
  print_cases(solution(ARGF.each_line))
end
