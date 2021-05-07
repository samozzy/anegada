# _plugins/filters.rb
module Jekyll
  module DateFilter
    require 'date'
    def prod_date_sort(collection)
      collection.sort_by do |el|
        Date.parse(el.data['prod_date'], '%B %Y')
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::DateFilter)