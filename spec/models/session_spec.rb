require 'rails_helper'

RSpec.describe Session, type: :model do
  it 'has a valid factory' do
    session = FactoryBot.build(:session)
    expect(session.valid?).to be_truthy
  end

  it 'generates last used at after create' do
    session = FactoryBot.create(:session)
    expect(session.last_used_at).to_not eql nil
  end

  it 'must have a token' do
    session = FactoryBot.build(:session)
    session.valid?
    expect(session.token).to_not eql nil
  end

  describe 'find_login' do
    it 'find active session' do
      session = FactoryBot.create(:session)
      expect(Session.find_login(session.token)).to eql session
      expect(Session.find_login('sahdbcajscb')).to eql nil
    end
  end

  describe 'deactivate!' do
    it 'deactivates the session' do
      session = FactoryBot.create(:session)
      session.deactivate!
      expect(Session.find_login(session.token)).to eql nil
    end
  end

  describe 'used!' do
    it 'updates the used last time' do
      session = FactoryBot.create(:session)
      session.update(last_used_at: 2.seconds.ago)
      time = session.last_used_at
      session.used!
      expect(session.last_used_at).to_not eql time
    end
  end
end
