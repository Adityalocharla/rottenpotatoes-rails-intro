class Movie < ActiveRecord::Base
    
    def self.with_rating_sorting(filters, sort_field)
        if sort == 'title'
            self.with_rating_sorting(filters, sort_field).where({:rating => filters}).sort_by { |h | h[:title] }
        elsif sort == 'release_date'
            self.with_rating_sorting(filters, sort_field).where({:rating => filters}).sort_by { |h | h[:release_date] }
        end
        
    end
end
