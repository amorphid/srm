require 'spec_helper'

describe Srm::Hash do
  subject { described_class }

  context '#has_truthy_member?' do
    it 'return true' do
      hash = { a: true }
      expect(subject.has_truthy_member?(hash, :a)).to eq(true)
    end

    it 'return false' do
      hash = {}
      expect(subject.has_truthy_member?(hash, :a)).to eq(false)
    end
  end
end
