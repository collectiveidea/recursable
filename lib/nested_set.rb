module CollectiveIdea
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
            
      def is_or_descends_from?(other)
        other.lft <= self.lft && self.lft < other.rgt
      end
      
      def is_or_is_descendant_of?(other)
        self.lft <= other.lft && other.lft < self.rgt
      end
    end
  end
end