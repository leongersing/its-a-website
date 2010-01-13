class User < ActiveRecord::Base
  acts_as_authentic  
  has_many :ratings
  belongs_to :presenter
  has_many :comments
  
  # SEE http://railscasts.com/episodes/189-embedded-association for info
  # about how roles are implemented.
  
  ROLES = %w[attendee speaker organizer]
  
  named_scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }
  
  # returns whether a user has a particular role
  def has_role?(role)
    roles.include? role
  end
  
  # assigns an array of string roles
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  
  # returns an array of strings that represent the user's roles
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end
    
  # symbolize roles
  def role_symbols
    roles.map(&:to_sym)
  end
end
