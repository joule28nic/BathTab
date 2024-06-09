json.data do
  json.items do
    json.array!(@facilities) do |facility|
      json.id facility.id
      json.prefecture do
        json.name facility.prefecture.name
      end
      json.image url_for(facility.image)
      json.name facility.name
      json.name_kana facility.name_kana
      json.address facility.address
      json.telephone_number facility.telephone_number
      json.business_hours facility.business_hours
      json.regular_holiday facility.regular_holiday
      json.price facility.price
      json.access facility.access
      json.latitude facility.latitude
      json.longitude facility.longitude
    end
  end
end