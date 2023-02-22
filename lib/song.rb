require 'pry'
# require_relative "./concerns/memorable"

class Song
  
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  
  def self.all
    @@songs
  end

 

  def artist=(artist)
    @artist = artist
  end

  
end