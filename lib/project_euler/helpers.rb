def define_problem(problem_number, &solution)
  problem = Problem.new(problem_number, &solution)
  print "Problem #{problem_number}: "
  puts problem.result
  problem.assert_answer if problem.answer
end
