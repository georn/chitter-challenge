class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :username, String
  property :name, String
  property :password, String

end
