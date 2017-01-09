# coding: utf-8
data = [
  {id:  1, game_id:  1, user_id: 1},
  {id:  2, game_id:  1, user_id: 1},
  {id:  3, game_id:  2, user_id: 1},
  {id:  4, game_id:  2, user_id: 1},
  {id:  5, game_id:  3, user_id: 1},
  {id:  6, game_id:  3, user_id: 1},
  {id:  7, game_id:  4, user_id: 1},
  {id:  8, game_id:  4, user_id: 1},
  {id:  9, game_id:  5, user_id: 1},
  {id: 10, game_id:  5, user_id: 1},
]
data.each do |d|
  Topic.seed do |p|
    p.id       = d[:id]
    p.game_id  = d[:game_id]
    p.user_id  = d[:user_id]
    p.title    = 'テストスレ その %d' % [Time.now.tv_usec]
    p.body     = 'テストスレ %d 本文 あああ いいい <b>太字</b>' % [Time.now.tv_usec]
  end
end
