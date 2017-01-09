# coding: utf-8
data = [
  {id:  1, game_id:  1},
  {id:  2, game_id:  1},
  {id:  3, game_id:  2},
  {id:  4, game_id:  2},
  {id:  5, game_id:  3},
  {id:  6, game_id:  3},
  {id:  7, game_id:  4},
  {id:  8, game_id:  4},
  {id:  9, game_id:  5},
  {id: 10, game_id:  5},
]
data.each do |d|
  Announce.seed do |p|
    p.id       = d[:id]
    p.game_id  = d[:game_id]
    p.title    = 'News その %d' % [Time.now.tv_usec]
    p.body     = 'News %d 本文 <b>太字</b>' % [Time.now.tv_usec]
  end
end
