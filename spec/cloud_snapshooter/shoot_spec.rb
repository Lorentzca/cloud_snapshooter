require 'spec_helper'

describe CloudSnapshooter::Shoot do
  describe 'initialize' do
    it 'return nil' do
      shoot = CloudSnapshooter::Shoot.new
      expect(@volume_id).to   eq(nil)
      expect(@description).to eq(nil)
    end
  end
end
