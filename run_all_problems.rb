require_relative 'lib/project_euler'
Dir[File.join(__dir__, 'problems', '*.rb')].sort.each {|file| require file }
