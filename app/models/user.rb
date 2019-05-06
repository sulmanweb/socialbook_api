class User < ApplicationRecord
  ## ENTITIES
  has_secure_password

  ## VALIDATIONS
  # Email Validations
  validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/, message: I18n.t('models.users.format_email') }
  # Username Validations
  validates :username, presence: true, uniqueness: true, format: { with: /\A([a-z\d_]){1,15}\z/, message: I18n.t('models.users.format_username') }
  # Password Validations
  validates :password, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{8,72}\z/, message: I18n.t('models.users.format_password') }, if: :password_required?
  # Bio Validations
  validates :bio, length: { maximum: 255 }, allow_blank: true, allow_nil: true

  ## CALLBACKS
  before_save :convert_auth_to_small_letters

  private

  # is password required for user?
  def password_required?
    password_digest.nil? || !password.blank? || password_digest.blank?
  end

  # Convert auth to small letters
  def convert_auth_to_small_letters
    email.downcase!
    username.downcase!
  end
end
