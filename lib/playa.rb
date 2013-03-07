class Playa
  include DataMapper::Resource

  property :id, Serial
  property :email, String

  has 1, :entry
end