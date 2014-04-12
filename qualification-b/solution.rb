def minimize_time(time_elapsed, rate, cost, additional, goal)
  # wait out
  wait_time = time_elapsed + goal/rate

  # buy
  buy_time = time_elapsed + cost/rate
  rate += additional
  buy_and_wait_time = buy_time + goal/rate

  if wait_time < buy_and_wait_time
    wait_time
  else
    [
      buy_and_wait_time, 
      minimize_time(buy_time, rate, cost, additional, goal)
    ].min
  end
end

def case_solution(s)
  cost, additional, goal = s.split(' ').map(&:to_f)

  sprintf('%.7f', minimize_time(0.0, 2.0, cost, additional, goal))
end

def solution(lines)
  lines = lines.to_a
  lines.slice(1, lines.length).map {|c| case_solution(c)}
end

if __FILE__ == $0
  require '../case_printer.rb'
  print_cases(solution(ARGF.each_line))
end
