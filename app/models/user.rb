class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :courses, dependent: :destroy
  has_one :charge, dependent: :destroy

  # attr_acessible :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email,
  											:first_name,
  											:last_name,
  											:school_name
  validates_uniqueness_of :email
  validates_email_format_of :email, :message => "is not formatted properly"
end
