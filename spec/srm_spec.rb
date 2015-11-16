require 'spec_helper'

describe Srm do
  subject { described_class }

  it 'has a version number' do
    expect(Srm::VERSION).not_to be nil
  end

  context '#is_a_hash?' do
    it 'returns true w/ empty Hash' do
      expect(subject.is_a_hash?({})).to eq(true)
    end

    it 'returns true for sub class' do
      sub = Class.new(Hash).new
      expect(subject.is_a_hash?(sub)).to eq(true)
    end

    it 'returns false' do
      not_a_hash = Object.new
      expect(subject.is_a_hash?(not_a_hash)).to eq(false)
    end
  end
end
