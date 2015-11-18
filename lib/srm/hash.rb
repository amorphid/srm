module Srm
  module Hash
    def has_truthy_member?(hash, key)
      hash[key] ? true : false
    end

    def is_not_empty?(hash)
      hash.length > 0
    end

    extend self
  end
end
