require './solution'

describe :solution do
  it 'works on sample input' do
    input = <<-EOF
4
30.0 1.0 2.0
30.0 2.0 100.0
30.50000 3.14159 1999.19990
500.0 4.0 2000.0
EOF

    solution(input.lines).should == ['1.0000000', '39.1666667', '63.9680013', '526.1904762']
  end
end
