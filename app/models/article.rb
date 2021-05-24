class Article < ActiveRecord::Base
  validates :title, presence: true, length: { 
    minimum: 3, 
    maximum: 50, 
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
  validates :description, presence: true, length: { 
    minimum: 10, 
    maximum: 300,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }

end