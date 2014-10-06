class Numeric
  def divisible_by?(numeric)
    self.modulo(numeric).zero?
  end
end
