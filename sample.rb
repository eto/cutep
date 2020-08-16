require 'qp'
qp 'foo'

def a_method
  qp 'in a_method'
  qp 1, 2, 3
end
a_method
