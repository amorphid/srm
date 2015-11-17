module Srm
  module Hash
    def has_truthy_member?(hash, key)
      hash[key] ? true : false
    end

    extend self
  end
end
