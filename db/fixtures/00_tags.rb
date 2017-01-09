# coding: utf-8
data = [
  {id:  1, name: '無料'},
  {id:  2, name: '有料'},
  {id:  3, name: '警察'},
  {id:  4, name: '1話買切'},
  {id:  5, name: 'ガチャ有'},
  {id:  6, name: 'ガチャ無'},
]
data.each do |d|
  Tag.seed do |p|
    p.id   = d[:id]
    p.name = d[:name]
  end
end
