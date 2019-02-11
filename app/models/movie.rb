class Movie < ActiveRecord::Base
    
    def self.with_rating_sorting(ratings, sort_field)
        if sort == 'title'
            self.where({:rating => ratings}).sort_by { |h | h[:title] }
        elsif sort == 'release_date'
            self.where({:rating => ratings}).sort_by { |h | h[:release_date] }
        end
        
    end
end
