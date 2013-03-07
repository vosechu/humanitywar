class BlackCard
  include DataMapper::Resource

  property :id, Serial
  property :text, String
  property :blanks, Integer, :default => 1

  has 1, :entry
end