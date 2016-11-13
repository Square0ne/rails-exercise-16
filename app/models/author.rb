class Author < ActiveRecord::Base
    attr_accessor :papers
    validates :last_name, presence: true
    def name
        first_name + " " + last_name
    end
    after_initialize :default_values
    private
       def default_values
         self.papers ||= Array.new()
       end
end
