module Recursable::Object
  def recurse(&block)
    block.call self
  end
end