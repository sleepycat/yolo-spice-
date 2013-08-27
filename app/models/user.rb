
class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  #require 'bcrypt'
  #include BCrypt
  validates :email, presence: true, uniqueness: true
  has_secure_password

#   def password
#   	@password ||= Password.new(password_hash)
#   end

#   def password=(new_password)
#   	@password = Password.create(new_password)
#   	self.password_hash = @password
#   end

#   #attr_accessor :password
#   before_save :encrypt_password
  
#   validates_confirmation_of :password
#   validates_presence_of :password, :on => :create
#   validates_presence_of :email
#   validates_uniqueness_of :email
  
#   def self.authenticate(email, password)
#     user = find_by_email(email)
#     if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#       user
#     else
#       nil
#     end
#   end
  
#   def encrypt_password
#     if password.present?
#       self.password_salt = BCrypt::Engine.generate_salt
#       self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#     end
#   end

#    def login
#     @user = User.find_by_email(params[:email])
#     if @user.password == params[:password]
#       give_token
#     else
#       redirect_to home_url
#     end
#   end
 end

#&& user.password_hash 
#goes after if user insert it &&user.password_hash == BCrypt::Engine etc.

