class Link < ApplicationRecord
  before_create :set_count_to_zero
  before_create :generate_slug
  
  private
  
    def set_count_to_zero
      self.count = 0
    end
    
    def generate_slug
      self.slug = Base64.urlsafe_encode64(self.original).split('').shuffle.join.gsub("=","").slice(0,6)
    end
end
