# coding: utf-8
data = [
  {game_id:  1, tag_id: 1},
  {game_id:  1, tag_id: 4},
  {game_id:  1, tag_id: 6},
  {game_id:  2, tag_id: 1},
  {game_id:  2, tag_id: 3},
  {game_id:  2, tag_id: 5},
  {game_id:  3, tag_id: 1},
  {game_id:  3, tag_id: 3},
  {game_id:  3, tag_id: 5},
  {game_id:  4, tag_id: 1},
  {game_id:  4, tag_id: 5},
  {game_id:  5, tag_id: 1},
  {game_id:  5, tag_id: 5},
]
data.each do |d|
  GameTag.seed(:game_id, :tag_id) do |p|
    p.game_id = d[:game_id]
    p.tag_id  = d[:tag_id]
  end
end
