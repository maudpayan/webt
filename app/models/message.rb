class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :company, :body
  validates :name, :email, :body, presence: true
end
