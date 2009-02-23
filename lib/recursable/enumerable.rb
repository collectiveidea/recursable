# recurse can be called on any Enumerable set.  If the set has a mix of recursable 
# and non-recursable items, it will still work, as it will work the same as each()
# in those cases.
module Recursable::Enumerable
  def recurse(&block)
    self.each do |x| 
      x.recurse(&block)
    end
  end

  # A recursion method built for awesome_nested_set.  Probably won't work with other nested_sets.'  
  def nested_set_recurse(&block)
    self.each do |x| 
      x.nested_set_recurse(self, &block)
    end
  end
end
