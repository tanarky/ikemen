# coding: utf-8
data = [
  {id:  1, category_id:  12, name: '囚われのパルマ'},
  {id:  2, category_id:  11, name: 'ドラッグ王子とマトリ姫'},
  {id:  3, category_id:  11, name: 'スタンドマイヒーローズ'},
  {id:  4, category_id:   3, name: '天下統一恋の乱 Love Ballad'},
  {id:  5, category_id:  14, name: '鏡の中のプリンセス Love Palace'},
]
data.each do |d|
  Game.seed do |p|
    p.id   = d[:id]
    p.name = d[:name]
    p.category_id = d[:category_id]
  end
end
