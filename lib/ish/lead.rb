
#
# Lead
# _vp_ 20171204
#
class Ish::Lead
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in :collection => 'ish_lead'

  belongs_to :profile, :class_name => 'IshModels::UserProfile'

  field :email
  field :job_url

  field :company, :default => ''
  validates_uniqueness_of :company

  field :description

  STATES = [ :considering, :applied ]
  field :state, :type => Symbol

  field :is_done,  :type => Boolean, :default => false
  field :is_trash, :type => Boolean, :default => false

  field :applied_on, :type => Time

  field :tag # 'hired_com_ror', not enumerated for now _vp_ 20180103
  field :location

end