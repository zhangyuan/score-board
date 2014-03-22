class Scores < ActiveRecord::Base
  validates :user_name, length: { in: 2..20 }
  validates :challenge_index, length: { in:1..2}
end
