module BootsHelper
  def boot_size_options
    ['33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46']
  end
  
  def boot_condition_options
    ['Poor', 'Acceptable', 'Good', 'Very Good', 'New']
  end
  
  def boot_brand_options
    ['Atomic', 'Dalbello', 'Fischer', 'Head', 'Lange', 'Nordica', 'Rossignol', 'Scarpa', 'Solomon', 'Tecnica', 'Other']
  end

  def suggested_number
  	current_store.boots.size + 1
  end 
  
  
end
