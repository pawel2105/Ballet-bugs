module Refinery
  module Ballets
    class Ballet < Refinery::Core::BaseModel
      self.table_name = 'refinery_ballets'      
    
      acts_as_indexed :fields => [:title, :description]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :photo, :class_name => '::Refinery::Image'
        
    end
  end
end
