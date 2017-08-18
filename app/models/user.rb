class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_create :assign_role

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_one :userinformation
  has_and_belongs_to_many :roles

  accepts_nested_attributes_for :userinformation, :allow_destroy => true

	
  def assign_role
  	self.roles = Role.where(:rolename => 'normaluser')
  end


  def check_role
  self.roles.collect { |each| puts each.rolename }
  end	

 	def role? rolename
  	  self.roles.collect { |each| each.rolename }.include? rolename.to_s 
  	   	  # role = self.roles.collect {|each| }
  end
end
