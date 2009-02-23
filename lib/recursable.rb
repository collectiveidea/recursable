require 'recursable/enumerable'
require 'recursable/nested_set'
require 'recursable/object'
require 'recursable/tree'

module Recursable
  def recurse &block
    block.call self, lambda{
      self.children.each do |child|
        child.recurse &block
      end
    }
  end
  
  # A recursion method built for awesome_nested_set.  Probably won't work with other nested_sets.'
  def nested_set_recurse(set, &block)
    block.call self, lambda{
      index = set.index(self) + 1
      while set[index].parent_id == self.id
        set[index].nested_set_recurse(set, &block)
        index += 1
      end
    }
  end

  def recursive_map &block
    block.call self, lambda{
      self.children.map do |child|
        child.recursive_map &block
      end
    }
  end
end
