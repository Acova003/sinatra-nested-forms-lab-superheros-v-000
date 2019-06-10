class Members
  attr_accessor :name, :power, :bio
  
  ALL = []
  
  def initialize(params)
    @name = params[:name]
    @motto = params[:power]
    @bio = params[:bio]
  end 
  
  def self.save 
    ALL << self
  end 
  
  def self.all 
    ALL
  end 
end 