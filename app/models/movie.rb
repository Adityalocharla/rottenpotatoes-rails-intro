class Movie < ActiveRecord::Base
    
    def self.with_rating_sorting(filters, sort_field)
        if sort == 'title'
            @movies = Movie.all.sort_by { |h | h[:title] }
        elsif sort == 'release_date'
            @movies = Movie.all.sort_by { |h | h[:release_date] }
        end
        @movie.where({:rating => filters})
    end
end
