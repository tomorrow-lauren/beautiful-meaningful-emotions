class User < ActiveRecord::Base
  has_many :emotional_experiences

  validates :email, :presence => true, uniqueness: true
  validate :password_exist
  validates :username, :presence => true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @test_password = new_password
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def password_exist
    if @test_password.nil?
      errors.add(:base, "You must set a password")
    end
  end

  def self.authenticate(username,password)
    user = self.find_by_username(username)
    return nil unless user
    user.password == password ? user : nil
  end

end

