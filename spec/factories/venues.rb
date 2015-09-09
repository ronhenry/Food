FactoryGirl.define do
  factory :venue do
    name { FFaker::HipsterIpsum.sentence}
    address "Calle Falsa 123"
  end
  factory :venue_invalid, class: Venue do   #declaro la clase ya que no existe una clase con el nombre del factory (arriba tiene el mismo nombre, por lo que se puede omitir).
    name nil
  end  
end
