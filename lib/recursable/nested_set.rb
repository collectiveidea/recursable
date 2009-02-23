module Recursable
  module NestedSet
    # Alias for full_set
    def self_and_descendants
      full_set
    end
  
    # Alias for all_children
    def descendants
      all_children
    end
          
    def is_or_is_descendant_of?(other)
      other.lft <= self.lft && self.lft < other.rgt
    end
    
    def is_or_is_ancestor_of?(other)
      self.lft <= other.lft && other.lft < self.rgt
    end
    
    # Find the first sibling to the right
    def left_sibling
      if self[acts_as_nested_set_options[:parent_column]].nil? || self[acts_as_nested_set_options[:parent_column]].zero?
          nil
      else
          self.class.find(:first, :conditions => "#{acts_as_nested_set_options[:left_column]} < #{self[acts_as_nested_set_options[:left_column]]} AND #{acts_as_nested_set_options[:scope]} AND #{acts_as_nested_set_options[:parent_column]} = #{self[acts_as_nested_set_options[:parent_column]]}", :order => "#{acts_as_nested_set_options[:left_column]} DESC")
      end
    end
    
    # Find the first sibling to the right
    def right_sibling
      if self[acts_as_nested_set_options[:parent_column]].nil? || self[acts_as_nested_set_options[:parent_column]].zero?
          nil
      else
          self.class.find(:first, :conditions => "#{acts_as_nested_set_options[:left_column]} > #{self[acts_as_nested_set_options[:left_column]]} AND #{acts_as_nested_set_options[:scope]} AND #{acts_as_nested_set_options[:parent_column]} = #{self[acts_as_nested_set_options[:parent_column]]}", :order => "#{acts_as_nested_set_options[:left_column]}")
      end
    end
    
    # Shorthand method for finding the left sibling and moving to the left of it.
    def move_left
      self.move_to_left_of(self.left_sibling)
    end
    
    # Shorthand method for finding the right sibling and moving to the right of it.
    def move_right
      self.move_to_right_of(self.right_sibling)
    end
  end
end
