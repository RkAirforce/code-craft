events = [
  {
    title: 'Ruby勉強会',
    content: 'ZOOMで開催します！プログラミング学習者がMVC勉強会を開催します！',
    participant_number: rand(1..15),
    place: 'Zoom',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '21:30',
    end_time: '22:40',
    tags: ['Rails', 'Ruby']
  },
  {
    title: 'Rails6の知見を深めよう',
    content: 'Ruby開発環境を準備しておくことが望ましいです
    皆で学びたいちょっとしたテーマありましたらSlackに挙げましょう',
    participant_number: rand(1..15),
    place: 'Zoom',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '19:50',
    end_time: '21:00',
    tags: ['Rails6', 'Ruby', 'ajax']
  },
  {
    title: 'Hoge会',
    content: 'お酒でも飲みながら、今後の業界の展望でも語りましょう',
    participant_number: rand(1..15),
    place: 'Youtubeかインスタライブ',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '21:00',
    end_time: '23:00',
    tags: ['DX', '業界', 'プログラミング']
  },
  {
    title: 'JavaScriptでテトリスを作ろう会',
    content: '「みんな大好き」 テトリス を作ってみましょう！どなたでも大歓迎です！年齢・レベルは問いません。',
    participant_number: Date.today + rand(7..14).day,
    place: 'Zoom',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '20:00',
    end_time: '23:00',
    tags: ['Rails', 'Ruby']
  },
  {
    title: 'Vue.js環境構築をしよう会',
    content: '',
    participant_number: Date.today + rand(7..14).day,
    place: 'Whereby',
    scheduled_date:  Date.today + rand(7..14).day,
    start_time: '',
    end_time: '',
    tags: ['Rails', 'Ruby']
  },
  {
    title: 'もくもく会',
    content: 'サーバーサイドエンジニアで、PHPを使ってコードを書いています。私自身、駆け出しですので初学者の方や学生の方もご遠慮なく、参加いただけると嬉しいです。',
    participant_number: rand(1..15),
    place: 'Whereby',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '21:00',
    end_time: '23:00',
    tags: ['Rails', 'Ruby']
  },
  {
    title: '駆け出しエンジニアと語ろう会',
    content: '',
    participant_number: rand(1..15),
    place: '上野',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '15:30',
    end_time: '18:00',
    tags: ['Rails', 'Ruby', 'Java', 'Python', 'PHP']
  },
  {
    title: 'Nuxt.js x Rails環境構築をしよう会',
    content: '',
    participant_number: rand(1..15),
    place: 'Zoom',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '20:30',
    end_time: '23:00',
    tags: ['Rails', 'Ruby', 'Vue', 'Nuxt']
  },
  {
    title: 'Rails x Docker環境構築をしよう会',
    content: '',
    participant_number: rand(1..15),
    place: 'Whereby',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '21:00',
    end_time: '23:00',
    tags: ['Rails', 'Ruby', 'Docker']
  },
  {
    title: 'ポートフォリオのレビューを行います',
    content: '※ポートフォリオが完成して現在転職活動中の方を対象としています。',
    participant_number: rand(1..10),
    place: 'Whereby',
    scheduled_date: Date.today + rand(7..14).day,
    start_time: '20:30',
    end_time: '22:00',
    tags: ['Rails', 'Ruby']
  }
]

Event.create(
  title:,
  content:,
)