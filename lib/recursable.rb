module CollectiveIdea 
  module Recursable
    def recurse &block
      block.call self, lambda{
        self.children.each do |child|
          child.recurse &block
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
end