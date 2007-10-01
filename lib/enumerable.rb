module Enumerable
  def recurse(&block)
    self.each do |x| 
      if x.respond_to?(:recurse)
        x.recurse(&block)
      else
        block.call
      end
    end
  end
end
