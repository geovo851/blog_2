class Message < ActiveRecord::Base
  validates :sender, :title, :body, presence: true
end
