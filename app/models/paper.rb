class Paper < ActiveRecord::Base
    attr_accessor :authors
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: { only_integer: true }
    after_initialize :default_values

    private
       def default_values
         self.authors ||= Array.new()
       end
end
