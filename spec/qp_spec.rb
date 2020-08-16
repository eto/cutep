RSpec.describe QP do
  it "has a version number" do
    expect(QP::VERSION).not_to be nil
  end

  it "expands inspect" do
    #assert_match(/testcase.rb:\d\d:_*send_*/, QP.caller_msg(caller(1)))
    assert_equal("[1, \"a\"]", QP.ar_inspect([1, 'a']))
  end

  it "has runtime" do
    assert_match(/\d+\.\d/, QP.runtime)
    #assert_match(/\d+\.\d:testcase.rb:\d\d:_*send_*	\[1, 'a'\]/, QP.tp(caller(1), 1, 'a'))
  end
end
