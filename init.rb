require 'recursable'

::Enumerable.extend Recursable::Enumerable
::Object.send :include, Recursable::Object

if defined?(ActiveRecord::Acts::Tree::InstanceMethods)
  module ActiveRecord::Acts::Tree::InstanceMethods
    include Recursable
    include Recursable::Tree
  end
end

if defined?(ActiveRecord::Acts::NestedSet::InstanceMethods)
  module ActiveRecord::Acts::NestedSet::InstanceMethods
    include Recursable
  end
end

if defined?(SymetrieCom::Acts::NestedSet::InstanceMethods)
  module SymetrieCom::Acts::NestedSet::InstanceMethods
    include Recursable
    include Recursable::NestedSet
  end
end

if defined?(CollectiveIdea::Acts::NestedSet::InstanceMethods)
  module CollectiveIdea::Acts::NestedSet::InstanceMethods
    include Recursable
  end
end