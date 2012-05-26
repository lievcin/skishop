module SkisHelper
  
  def ski_size_options
    ['33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46']
  end
  
  def ski_condition_options
    ['Poor', 'Acceptable', 'Good', 'Very Good', 'New']
  end
  
  def ski_brand_options
    ['Atomic', 'Dalbello', 'Fischer', 'Head', 'Lange', 'Nordica', 'Rossignol', 'Scarpa', 'Solomon', 'Tecnica', 'Other']
  end
    
  def ski_suggested_number
    @numbers_temp = Array.new
    if current_store.skis 
        current_store.skis.each do |ski|
        @numbers_temp << ski.number
      end
    end 
    
    if current_store.skis.size > 0
      if @numbers_temp.inject(0){|sum, item| sum + item} == (@numbers_temp.min + @numbers_temp.max)*@numbers_temp.max/2
        current_store.skis.size + 1
      else
        @array_temp = Array(1..@numbers_temp.max)
        @available = @array_temp - @numbers_temp
        @available.min.to_i
      end    
    else
      1
    end
  end
  
end
