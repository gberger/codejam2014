def war(naomi_weights, ken_weights)
  naomi_weights = naomi_weights.sort
  ken_weights   = ken_weights.sort

  naomi_weights.reduce(0) do |r, n|
    k = ken_weights.find {|w| w > n}

    if k.nil?
      k = ken_weights.shift
      r += 1
    else
      ken_weights = ken_weights - [k]
    end

    r
  end
end

def deceitful_war(naomi_weights, ken_weights)
  naomi_weights = naomi_weights.sort
  ken_weights   = ken_weights.sort

  result = 0

  while true

    break if naomi_weights.length == 0

    if naomi_weights.last < ken_weights.last
      naomi_weights.shift
      ken_weights.pop
    end

    break if naomi_weights.length == 0

    if naomi_weights.last > ken_weights.last
      naomi_weights.pop
      ken_weights.pop
      result += 1
    end

  end

  result
end

def case_solution(c)
  num_cases, naomi_weights, ken_weights = c[0], c[1].split(' ').map(&:to_f), c[2].split(' ').map(&:to_f)

  "#{deceitful_war(naomi_weights, ken_weights)} #{war(naomi_weights, ken_weights)}"
end

def solution(lines)
  lines = lines.to_a
  lines.slice(1, lines.length).each_slice(3).map {|c| case_solution(c)}
end

if __FILE__ == $0
  require '../case_printer.rb'
  print_cases(solution(ARGF.each_line))
end
