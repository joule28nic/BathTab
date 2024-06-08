Admin.find_or_create_by!(email: "test@example.com") do |admin|
  admin.email = 'test@example.com'
  admin.password = "sample2000"
end

Region.create([
  { id: 1, name: '北海道・東北'},
  { id: 2, name: '関東'},
  { id: 3, name: '中部'},
  { id: 4, name: '近畿'},
  { id: 5, name: '中国'},
  { id: 6, name: '四国'},
  { id: 7, name: '九州・沖縄'}
])

Prefecture.create([
  { name: '北海道', region_id: 1},
  { name: '青森県', region_id: 1},
  { name: '岩手県', region_id: 1},
  { name: '宮城県', region_id: 1},
  { name: '秋田県', region_id: 1},
  { name: '山形県', region_id: 1},
  { name: '福島県', region_id: 1},
  { name: '茨城県', region_id: 2},
  { name: '栃木県', region_id: 2},
  { name: '群馬県', region_id: 2},
  { name: '埼玉県', region_id: 2},
  { name: '千葉県', region_id: 2},
  { name: '東京都', region_id: 2},
  { name: '神奈川県', region_id: 2},
  { name: '新潟県', region_id: 3},
  { name: '富山県', region_id: 3},
  { name: '石川県', region_id: 3},
  { name: '福井県', region_id: 3},
  { name: '山梨県', region_id: 3},
  { name: '長野県', region_id: 3},
  { name: '岐阜県', region_id: 3},
  { name: '静岡県', region_id: 3},
  { name: '愛知県', region_id: 3},
  { name: '三重県', region_id: 4},
  { name: '滋賀県', region_id: 4},
  { name: '京都府', region_id: 4},
  { name: '大阪府', region_id: 4},
  { name: '兵庫県', region_id: 4},
  { name: '奈良県', region_id: 4},
  { name: '和歌山県', region_id: 4},
  { name: '鳥取県', region_id: 5},
  { name: '島根県', region_id: 5},
  { name: '岡山県', region_id: 5},
  { name: '広島県', region_id: 5},
  { name: '山口県', region_id: 5},
  { name: '徳島県', region_id: 6},
  { name: '香川県', region_id: 6},
  { name: '愛媛県', region_id: 6},
  { name: '高知県', region_id: 6},
  { name: '福岡県', region_id: 7},
  { name: '佐賀県', region_id: 7},
  { name: '長崎県', region_id: 7},
  { name: '熊本県', region_id: 7},
  { name: '大分県', region_id: 7},
  { name: '宮崎県', region_id: 7},
  { name: '鹿児島県', region_id: 7},
  { name: '沖縄県', region_id: 7}
])

Equipment.create([
  { name: '露天風呂'},
  { name: 'サウナ'},
  { name: '岩盤浴'},
  { name: '水風呂'},
  { name: '休憩室'},
  { name: 'お食事'},
  { name: '自動販売機'},
  { name: '駅近'},
  { name: '駐車場'},
])