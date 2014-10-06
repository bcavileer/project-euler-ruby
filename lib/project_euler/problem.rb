require 'test/unit/assertions'

class Problem
  include Test::Unit::Assertions

  if File.exist? ::AnswerFile
    require 'yaml'
    ANSWERS = YAML::load_file ::AnswerFile
  else
    ANSWERS = {}
  end

  attr_reader :problem_number, :solution, :result

  def initialize(problem_number, &solution)
    @problem_number = problem_number
    @solution = solution
  end

  def result
    @result ||= solution.call
  end

  def assert_answer
    message = "In problem ##{problem_number} expected #{answer} but result was #{result}"
    assert_equal answer, result, message
  end

  def answer
    ANSWERS[problem_number]
  end
end
