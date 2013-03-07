class Entry
  include DataMapper::Resource

  property :id, Serial

  property :wins, Integer
  property :loses, Integer
  property :draws, Integer

  belongs_to :white_card
  belongs_to :black_card
  belongs_to :playa
end