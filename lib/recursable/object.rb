module Recursable::Object
  def recurse(&block)
    yield self
  end
end