require File.join(File.dirname(__FILE__), 'lib', 'enumerable')
require File.join(File.dirname(__FILE__), 'lib', 'recursable')
require File.join(File.dirname(__FILE__), 'lib', 'tree')

if defined?(ActiveRecord::Acts::Tree)
  module ActiveRecord::Acts::Tree
    include CollectiveIdea::Recursable
    include CollectiveIdea::Recursable::Tree
  end
end

if defined?(ActiveRecord::Acts::NestedSet)
  module ActiveRecord::Acts::NestedSet
    include CollectiveIdea::Recursable
  end
end

if defined?(SymetrieCom::Acts::NestedSet::InstanceMethods)
  module SymetrieCom::Acts::NestedSet::InstanceMethods
    include CollectiveIdea::Recursable
  end
end