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

  context '#is_not_empty?' do
    it 'returns true' do
      hash = { a: nil }
      expect(subject.is_not_empty?(hash)).to eq(true)
    end

    it 'returns false' do
      hash = {}
      expect(subject.is_not_empty?(hash)).to eq(false)
    end
  end
end
