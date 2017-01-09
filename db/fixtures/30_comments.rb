# coding: utf-8
data = [
  {topic_id:  1, user_id: 1},
  {topic_id:  2, user_id: 1},
  {topic_id:  3, user_id: 1},
  {topic_id:  4, user_id: 1},
  {topic_id:  5, user_id: 1},
  {topic_id:  6, user_id: 1},
  {topic_id:  7, user_id: 1},
  {topic_id:  8, user_id: 1},
  {topic_id:  9, user_id: 1},
  {topic_id: 10, user_id: 1},
  {topic_id:  1, user_id: 1},
  {topic_id:  3, user_id: 1},
  {topic_id:  5, user_id: 1},
  {topic_id:  7, user_id: 1},
  {topic_id:  9, user_id: 1},
]
data.each do |d|
  Comment.seed do |p|
    p.topic_id = d[:topic_id]
    p.user_id  = d[:user_id]
    p.body     = 'テストスレ レス %d 本文 <b>太字</b>' % [Time.now.tv_usec]
  end
end
