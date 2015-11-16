require "srm/version"

module Srm
  def is_a_hash?(object)
    object.is_a? Hash
  end

  extend self
end
