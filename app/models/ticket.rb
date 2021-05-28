class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :student
  enum state: ["pending", "finished"]
end
