require './solution'

describe :solution do
  it 'works on sample input' do
    input = <<-EOF
4
1
0.5
0.6
2
0.7 0.2
0.8 0.3
3
0.5 0.1 0.9
0.6 0.4 0.3
9
0.186 0.389 0.907 0.832 0.959 0.557 0.300 0.992 0.899
0.916 0.728 0.271 0.520 0.700 0.521 0.215 0.341 0.458
EOF

    solution(input.lines).should == ['0 0', '1 0', '2 1', '8 4']
  end
end
