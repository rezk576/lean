import logic
using num

variable foo : Prop

namespace N1
  variable foo : Prop
  check N1.foo
  check _root_.foo
  namespace N2
    variable foo : Prop
    check N1.foo
    check N1.N2.foo
    print raw foo
    print raw _root_.foo
  end N2
end N1
