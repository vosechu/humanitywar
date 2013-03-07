class WhiteCard
  include DataMapper::Resource

  property :id, Serial
  property :text, String

  has 1, :entry
end