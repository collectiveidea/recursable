module Recursable
  module Tree
    def self_and_descendants
      list = []
      recurse do |c, recurse_here|
        list << c
        recurse_here.call
      end
      list
    end
  
    def descendants
      self_and_descendants - [self]
    end
  
    def self_and_ancestors
      [self] | ancestors
    end
  end
end
