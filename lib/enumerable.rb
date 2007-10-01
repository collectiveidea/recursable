module CollectiveIdea
  module Enumerable
    def recurse(&block)
      self.each {|x| x.recurse(&block) }
    end
  end
end