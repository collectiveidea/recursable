require File.join(File.dirname(__FILE__), 'lib', 'enumerable')
require File.join(File.dirname(__FILE__), 'lib', 'recursable')
require File.join(File.dirname(__FILE__), 'lib', 'tree')
require File.join(File.dirname(__FILE__), 'lib', 'nested_set')

if defined?(ActiveRecord::Acts::Tree::InstanceMethods)
  module ActiveRecord::Acts::Tree::InstanceMethods
    include CollectiveIdea::Recursable
    include CollectiveIdea::Recursable::Tree
  end
end

if defined?(ActiveRecord::Acts::NestedSet::InstanceMethods)
  module ActiveRecord::Acts::NestedSet::InstanceMethods
    include CollectiveIdea::Recursable
  end
end

if defined?(SymetrieCom::Acts::NestedSet::InstanceMethods)
  module SymetrieCom::Acts::NestedSet::InstanceMethods
    include CollectiveIdea::Recursable
    include CollectiveIdea::Recursable::NestedSet
  end
end