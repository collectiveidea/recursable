# recurse can be called on any Enumerable set.  If the set has a mix of recursable 
# and non-recursable items, it will still work, as it will work the same as each()
# in those cases.
module Enumerable
  def recurse(&block)
    self.each do |x| 
      if x.respond_to?(:recurse)
        x.recurse(&block)
      else
        block.call(x)
      end
    end
  end
end
