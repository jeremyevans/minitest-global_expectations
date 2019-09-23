$:.unshift(File.join(File.dirname(File.expand_path(__FILE__)), "../lib/"))
require 'rubygems'
ENV['MT_NO_PLUGINS'] = '1' # Work around stupid autoloading of plugins
gem 'minitest'
require 'minitest/global_expectations/autorun'

describe "minitest-global_expectations" do
  it "should allow calling expectation methods on all objects" do
    [].must_be_empty
    1.must_equal 1
    1.0.must_be_close_to 1.000000001
    1.0.must_be_within_epsilon 1.000000001
    [1].must_include 1
    Object.new.must_be_instance_of Object
    1.must_be_kind_of Numeric
    'a'.must_match(/a/)
    nil.must_be_nil
    1.must_be :==, 1
    proc{print '.'}.must_output('.')
    proc{raise}.must_raise RuntimeError
    1.must_respond_to :abs
    true.must_be_same_as true
    proc{}.must_be_silent
    proc{throw :foo}.must_throw :foo
    [1].wont_be_empty
    1.wont_equal 2
    1.wont_be_close_to 2
    1.wont_be_within_epsilon 2
    [1].wont_include 2
    1.wont_be_instance_of Numeric
    1.wont_be_kind_of Hash
    'a'.wont_match(/b/)
    1.wont_be_nil
    1.wont_be :==, 2
    1.wont_respond_to :foo
  end
end
