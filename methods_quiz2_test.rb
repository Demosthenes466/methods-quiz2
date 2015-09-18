require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 5, @m.without_doubles(3, 2, false)
		assert_equal 6, @m.without_doubles(3, 3, false)
		assert_equal 7, @m.without_doubles(3, 3, true)
		assert_equal 5, @m.without_doubles(3, 2, true)
		assert_equal 7, @m.without_doubles(6, 6, true)
	end

	def test_max_maybe
		assert_equal 3, @m.max_maybe(3,2)
		assert_equal 1, @m.max_maybe(6,1)
		assert_equal 0, @m.max_maybe(3,3)
	end

	def test_squirrels_play?
		assert_equal "Squirrels shall play", @m.squirrels_play?(60, true)
		assert_equal "Squirrels shall play", @m.squirrels_play?(60, false)
		assert_equal "Squirrels shan't play", @m.squirrels_play?(50, true)
		assert_equal "Squirrels shan't play", @m.squirrels_play?(50, false)
		assert_equal "Squirrels shan't play", @m.squirrels_play?(95, false)
		assert_equal "Squirrels shall play", @m.squirrels_play?(95, true)
	end

	def test_red_ticket
		assert_equal 10, @m.red_ticket(2,2,2)
		assert_equal 5, @m.red_ticket(1,1,1)
		assert_equal 1, @m.red_ticket(2,1,1)
		assert_equal 0, @m.red_ticket(2,2,1)
		assert_equal 1, @m.red_ticket(2,3,4)
	end

end
