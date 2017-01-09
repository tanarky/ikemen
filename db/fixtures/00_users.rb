# coding: utf-8
data = [
  {email: 'tanarky@gmail.com', first_name: 'Satoshi', last_name: 'Tanaka'},
]
data.each do |d|
  User.seed(:email) do |p|
    p.email      = d[:email]
    p.first_name = d[:first_name]
    p.last_name  = d[:last_name]
  end
end
