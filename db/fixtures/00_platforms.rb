# coding: utf-8
data = [
  {id:  1, name: 'iOS'},
  {id:  2, name: 'Android'},
  {id:  3, name: 'Web'},
  {id:  4, name: 'Windows'},
  {id:  5, name: 'PlayStation Vita'},
]
data.each do |d|
  Platform.seed do |p|
    p.id   = d[:id]
    p.name = d[:name]
  end
end
