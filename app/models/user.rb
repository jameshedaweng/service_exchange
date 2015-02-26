require 'role_model'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :powers
  ##Socialization##
  #Allow a model to be followed
  acts_as_followable
  #Allow a model to be a follower
  acts_as_follower
  #Allow a model to like
  acts_as_liker
  #Allow a model to be mentioned
  acts_as_mentionable
  #Allow a model to mention
  acts_as_mentioner
  
  include RoleModel
  roles_attribute :roles_mask
  roles :admin, :powerful, :super_powerful
end
