class Restaurant
    attr_reader :opening_time,
                :name,
                :dishes

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end

    def closing_time(hour)
        ((@opening_time.to_i + hour).to_s + ":00")
    end

    def add_dish(dish)
        @dishes << dish
    end

    def open_for_lunch?
        if opening_time.to_i > 12
            false
        elsif
            opening_time.to_i <= 12
            true
        end
    end

    def menu_dish_names
        @dishes.map do |dish|
            dish.upcase
        end
    end

    # def announce_closing_time(hour)
    #     "#{name} will be closing at #{closing_time}"
    # end
end