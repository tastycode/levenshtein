require 'levenshtein/levenshtein_ext'
module Levenshtein
  # Calculates number of changes between a and b
  def self.distance(a,b)
    a.to_s.levenshtein(b.to_s)
  end
end
