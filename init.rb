if defined?(ActiveRecord::Acts::Tree)
  module ActiveRecord::Acts::Tree
    include ColleciveIdea::Recursable
    include ColleciveIdea::Recursable::Tree
  end
end

if defined?(ActiveRecord::Acts::NestedSet)
  module ActiveRecord::Acts::NestedSet
    include ColleciveIdea::Recursable
  end
end

if defined?(SymetrieCom::Acts::NestedSet)
  module SymetrieCom::Acts::NestedSet
    include ColleciveIdea::Recursable
  end
end

module Enumerable
  include ColleciveIdea::Enumerable
end