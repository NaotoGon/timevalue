class Mentor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'メンターとして登録しない' },
    { id: 3, name: 'メンターとして登録する' }
  ]
end
