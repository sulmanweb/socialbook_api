class Session < ApplicationRecord
  ## RELATIONSHIPS
  belongs_to :user

  ## VALIDATIONS
  validates :token, presence: true, uniqueness: true, length: { is: UID_LENGTH }

  ## SCOPES
  scope :active_sessions, -> { where status: true }

  ## CALLBACKS
  before_validation :generate_token, on: :create
  after_create :current_time_to_last_user_at

  ## QUESTIONS
  def self.find_login(token)
    find_by(status: true, token: token)
  end

  ## SETTERS
  def deactivate!
    update(status: false)
  end

  def used!
    update(last_used_at: Time.zone.now)
  end

  private

  # Generate random unique token for the model
  def generate_token
    self.token = loop do
      random_token = SecureRandom.base58(UID_LENGTH)
      break random_token unless Session.exists?(token: random_token)
    end
  end

  def current_time_to_last_user_at
    update(last_used_at: Time.zone.now)
  end
end
