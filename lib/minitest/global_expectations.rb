require 'minitest/spec'

module MinitestGlobalExpectations
  [
    :must_be_empty,
    :must_equal,
    :must_be_close_to,
    :must_be_within_epsilon,
    :must_include,
    :must_be_instance_of,
    :must_be_kind_of,
    :must_match,
    :must_be_nil,
    :must_be,
    :must_output,
    :must_raise,
    :must_respond_to,
    :must_be_same_as,
    :must_be_silent,
    :must_throw,
    :wont_be_empty,
    :wont_equal,
    :wont_be_close_to,
    :wont_be_within_epsilon,
    :wont_include,
    :wont_be_instance_of,
    :wont_be_kind_of,
    :wont_match,
    :wont_be_nil,
    :wont_be,
    :wont_respond_to,
    :wont_be_same_as,
  ].each do |meth|
    self.class_eval(<<-EOM, __FILE__, __LINE__ + 1)
      def #{meth}(*args)
        Minitest::Expectation.new(self, Minitest::Spec.current).#{meth}(*args)
      end
    EOM
  end

  ::Object.send(:include, self)
end if defined?(Minitest::Expectation)
