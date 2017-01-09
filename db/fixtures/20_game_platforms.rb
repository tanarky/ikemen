# coding: utf-8
data = [
  {game_id:  1, platform_id: 1, platform_url: 'https://itunes.apple.com/jp/app/qiuwarenoparuma/id1117211375?mt=8&ls=1'},
  {game_id:  1, platform_id: 2, platform_url: 'https://play.google.com/store/apps/details?id=jp.co.capcom.palm'},
  {game_id:  2, platform_id: 1, platform_url: 'https://itunes.apple.com/jp/app/id970456491?mt=8'},
  {game_id:  2, platform_id: 2, platform_url: 'https://play.google.com/store/apps/details?id=com.colyinc.matori&hl=ja'},
  {game_id:  3, platform_id: 1, platform_url: 'https://itunes.apple.com/jp/app/sutandomaihirozu/id1121898899?l=ja&ls=1&mt=8'},
  {game_id:  3, platform_id: 2, platform_url: 'https://play.google.com/store/apps/details?id=com.colyinc.standMyHeroes'},
  {game_id:  4, platform_id: 1, platform_url: 'https://app.adjust.com/yv0ao8'},
  {game_id:  4, platform_id: 2, platform_url: 'https://app.adjust.com/9mjn6m'},
  {game_id:  5, platform_id: 1, platform_url: 'https://app.adjust.com/sickfl'},
  {game_id:  5, platform_id: 2, platform_url: 'https://app.adjust.com/lzegk6'},
]
data.each do |d|
  GamePlatform.seed(:game_id, :platform_id) do |p|
    p.game_id      = d[:game_id]
    p.platform_id  = d[:platform_id]
    p.platform_url = d[:platform_url]
  end
end
