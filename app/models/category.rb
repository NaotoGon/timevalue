class Category < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '語学' },
   { id: 3, name: 'プログラミング' },
   { id: 4, name: '科学' },
   { id: 5, name: '相談' },
   { id: 6, name: 'その他' }
 ]
end