# coding: utf-8
data = [
  {id:  1, name: 'Root',     ancestry: nil},
  {id:  2, name: '歴史',     ancestry: '1'},
  {id:  3, name: '戦国',     ancestry: '1/2'},
  {id:  4, name: '江戸',     ancestry: '1/2'},
  {id:  5, name: '幕末',     ancestry: '1/2'},
  {id:  6, name: '明治',     ancestry: '1/2'},
  {id:  7, name: '昭和',     ancestry: '1/2'},
  {id:  8, name: 'リアル',   ancestry: '1'},
  {id:  9, name: '高校',     ancestry: '1/8'},
  {id: 10, name: '大学',     ancestry: '1/8'},
  {id: 11, name: 'オフィス', ancestry: '1/8'},
  {id: 12, name: '職業',     ancestry: '1/8'},

]
data.each do |d|
  Category.seed do |p|
    p.id   = d[:id]
    p.name = d[:name]
    p.ancestry = d[:ancestry]
  end
end
