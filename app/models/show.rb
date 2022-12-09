
class Show < ActiveRecord::Base

    def Show.highest_rating
        Show.maximum(:rating)

    end
    def Show.most_popular_show
        Show.where("rating = ?", Show.highest_rating)[0]

    end

    def Show.lowest_rating
        Show.minimum(:rating)

    end

    def Show.least_popular_show
        Show.where("rating = ?", Show.lowest_rating)[0]

    end
    def Show.ratings_sum
        Show.sum(:rating)

    end
    def self.popular_shows
        Show.where("rating > ?", 5)
    end
    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

    


end

class AddSeasonToShows < ActiveRecord::Migration[6.1]
    def change
        add_column :shows, :season, :string

    end 


end