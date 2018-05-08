class Neighborhood < ActiveRecord::Base
	has_many :houses, dependent: :destroy
	accepts_nested_attributes_for :houses,
        reject_if: proc { |attributes| attributes['ammount'].blank? },
        allow_destroy: true
    def totals(id)
		current_nbh = self.class.find([id])
		houses = House.where(neighborhood_id: id)
		total = 0
		evens,odds = houses.each_with_index.partition {|v| v[1].even?}.map{|v|v.map{|v|v[0]}}
		[odds.inject(0){|sum,x| sum + x.ammount }, evens.inject(0){|sum,x| sum + x.ammount }]
  	end
end
