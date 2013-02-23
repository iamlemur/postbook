# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  description :string(255)
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  attr_accessible :description, :first_name, :last_name, :location_id

  validates_presence_of :username
  validates_uniqueness_of :username

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_create do |author|
  		author.provider = auth.provider
  		author.uid = auth.uid
  		author.username = auth.info.nickname
  	end
  end

  def self.new_with_session(params, session)
  	if session["devise.user_attributes"]
  		new(session["devise.user_attributes"], without_protection: true) do |author|
  			author.attributes = params
  			author.valid?
  		end
  	else
  		super
  	end
  end

  def password_required?
  	super && provider.blank?
  end

  def update_with_password(params, *options)
  	if encrypted_password.blank?
  		update_attributes(params, *options)
  	else
  		super
  	end
  end
  
end
