require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    user = FactoryBot.build(:user)
    expect(user.valid?).to be_truthy
  end

  it 'gives error if password not provided while creating' do
    user = FactoryBot.build(:user, password: nil)
    expect(user.valid?).to be_falsey
  end

  describe 'convert_auth_to_small_letters' do
    it 'converts the input auth to small letters' do
      user = FactoryBot.create(:user, email: 'Sbaigweb@gmail.com', username: 'sbaigweb')
      expect(user.email).to eql 'sbaigweb@gmail.com'
      expect(user.email).to_not eql 'Sbaigweb@gmail.com'
    end
  end
end
