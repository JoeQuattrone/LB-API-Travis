Song.delete_all

songs = [
  {
    "id": 26,
    "artist_name": "Katy Perry",
    "track_id": 171682668,
    "track_name": "Never Really Over",
    "genre": "Unknown Genre",
    "likes": 0,
    "created_at": "2019-05-31T12:59:27.710Z",
    "updated_at": "2019-05-31T12:59:27.710Z"
  },
  {
    "id": 27,
    "artist_name": "Baby K",
    "track_id": 171640682,
    "track_name": "Playa",
    "genre": "Unknown Genre",
    "likes": 0,
    "created_at": "2019-06-02T14:43:25.586Z",
    "updated_at": "2019-06-02T14:43:25.586Z"
  },
  {
    "id": 6,
    "artist_name": "Plain White T's",
    "track_id": 3244626,
    "track_name": "Hey There Delilah",
    "genre": "Pop",
    "likes": 2,
    "created_at": "2019-05-09T15:26:10.212Z",
    "updated_at": "2019-05-09T15:26:23.803Z"
  },
  {
    "id": 7,
    "artist_name": "Marshmello feat. Bastille",
    "track_id": 155467068,
    "track_name": "Happier",
    "genre": "Dance",
    "likes": 1,
    "created_at": "2019-05-09T18:05:52.164Z",
    "updated_at": "2019-05-09T18:05:52.164Z"
  },
  {
    "id": 8,
    "artist_name": "Rick Ross, Meek Mill, Whole Slabe & Gucci Mane",
    "track_id": 84303575,
    "track_name": "Turn Ya Back (feat. Gucci Mane, Meek Mill & Whole Slabe)",
    "genre": "Unknown",
    "likes": 2,
    "created_at": "2019-05-09T19:53:51.864Z",
    "updated_at": "2019-05-09T19:55:21.431Z"
  },
  {
    "id": 4,
    "artist_name": "Eminem",
    "track_id": 84405079,
    "track_name": "Lose Yourself - Soundtrack Version",
    "genre": "Hip Hop/Rap",
    "likes": 1,
    "created_at": "2019-05-08T15:55:23.864Z",
    "updated_at": "2019-05-08T15:55:23.864Z"
  },
  {
    "id": 9,
    "artist_name": "Daft Punk feat. Pharrell Williams",
    "track_id": 85656305,
    "track_name": "Lose Yourself to Dance",
    "genre": "Disco",
    "likes": 1,
    "created_at": "2019-05-15T23:11:52.486Z",
    "updated_at": "2019-05-15T23:11:52.491Z"
  },
  {
    "id": 14,
    "artist_name": "LP",
    "track_id": 159292587,
    "track_name": "Girls Go Wild",
    "genre": "Alternative",
    "likes": 0,
    "created_at": "2019-05-16T13:53:05.747Z",
    "updated_at": "2019-05-16T13:53:05.747Z"
  },
  {
    "id": 15,
    "artist_name": "Lewis Capaldi",
    "track_id": 165342021,
    "track_name": "Someone You Loved",
    "genre": "Alternative",
    "likes": 0,
    "created_at": "2019-05-16T13:53:05.751Z",
    "updated_at": "2019-05-16T13:53:05.751Z"
  },
  {
    "id": 11,
    "artist_name": "The Kolors feat. Elodie",
    "track_id": 166708699,
    "track_name": "Pensare Male",
    "genre": "Unknown",
    "likes": 1,
    "created_at": "2019-05-16T13:53:05.732Z",
    "updated_at": "2019-05-16T14:06:33.595Z"
  },
  {
    "id": 12,
    "artist_name": "Pedro Capó feat. Farruko",
    "track_id": 159137864,
    "track_name": "Calma (Remix)",
    "genre": "Pop in Spanish",
    "likes": 1,
    "created_at": "2019-05-16T13:53:05.738Z",
    "updated_at": "2019-05-16T14:06:39.628Z"
  },
  {
    "id": 5,
    "artist_name": "Kylie Minogue",
    "track_id": 169434174,
    "track_name": "New York City",
    "genre": "Pop",
    "likes": 1,
    "created_at": "2019-05-08T19:16:53.323Z",
    "updated_at": "2019-05-08T19:16:53.323Z"
  },
  {
    "id": 16,
    "artist_name": "Lewis Capaldi",
    "track_id": 170306150,
    "track_name": "Someone You Loved",
    "genre": "Alternative",
    "likes": 1,
    "created_at": "2019-05-16T17:04:08.524Z",
    "updated_at": "2019-05-16T17:16:00.554Z"
  },
  {
    "id": 2,
    "artist_name": "Frank Sinatra",
    "track_id": 13873035,
    "track_name": "Strangers In the Night",
    "genre": "Pop",
    "likes": 32,
    "created_at": "2019-05-07T19:32:13.223Z",
    "updated_at": "2019-05-16T18:30:56.169Z"
  },
  {
    "id": 19,
    "artist_name": "Madonna feat. Maluma",
    "track_id": 168331142,
    "track_name": "Medellín",
    "genre": "Unknown Genre",
    "likes": 0,
    "created_at": "2019-05-17T14:58:53.275Z",
    "updated_at": "2019-05-17T14:58:53.275Z"
  },
  {
    "id": 3,
    "artist_name": "The Beatles",
    "track_id": 17479725,
    "track_name": "Hey Jude",
    "genre": "Pop/Rock",
    "likes": 22,
    "created_at": "2019-05-07T19:32:32.666Z",
    "updated_at": "2019-05-17T15:27:47.893Z"
  },
  {
    "id": 17,
    "artist_name": "BoomDaBash",
    "track_id": 164832356,
    "track_name": "Per un milione",
    "genre": "Pop",
    "likes": 1,
    "created_at": "2019-05-17T14:58:53.265Z",
    "updated_at": "2019-05-17T15:28:20.175Z"
  },
  {
    "id": 10,
    "artist_name": "Ed Sheeran & Justin Bieber",
    "track_id": 169814533,
    "track_name": "I Don't Care",
    "genre": "Pop",
    "likes": 5,
    "created_at": "2019-05-16T13:49:28.015Z",
    "updated_at": "2019-05-17T15:29:19.066Z"
  },
  {
    "id": 20,
    "artist_name": "J-Ax",
    "track_id": 170314276,
    "track_name": "Ostia Lido",
    "genre": "Hip Hop/Rap",
    "likes": 0,
    "created_at": "2019-05-20T20:17:13.910Z",
    "updated_at": "2019-05-20T20:17:13.910Z"
  },
  {
    "id": 21,
    "artist_name": "Thegiornalisti",
    "track_id": 170314167,
    "track_name": "Maradona y Pelé",
    "genre": "Pop",
    "likes": 0,
    "created_at": "2019-05-20T20:17:13.924Z",
    "updated_at": "2019-05-20T20:17:13.924Z"
  },
  {
    "id": 1,
    "artist_name": "Eminem",
    "track_id": 1809819,
    "track_name": "Lose Yourself",
    "genre": "Alternative Rap",
    "likes": 30,
    "created_at": "2019-05-07T19:28:38.690Z",
    "updated_at": "2019-05-22T20:18:08.403Z"
  },
  {
    "id": 13,
    "artist_name": "Billie Eilish",
    "track_id": 164504273,
    "track_name": "bad guy",
    "genre": "Electronic",
    "likes": 2,
    "created_at": "2019-05-16T13:53:05.743Z",
    "updated_at": "2019-05-22T20:18:10.725Z"
  },
  {
    "id": 18,
    "artist_name": "Charlie Charles feat. Sfera Ebbasta, Mahmood & Fabri Fibra",
    "track_id": 168933179,
    "track_name": "Calipso",
    "genre": "Hip Hop/Rap",
    "likes": 1,
    "created_at": "2019-05-17T14:58:53.271Z",
    "updated_at": "2019-05-22T20:18:13.805Z"
  },
  {
    "id": 22,
    "artist_name": "Takagi & Ketra feat. Omi & Giusy Ferreri",
    "track_id": 170524058,
    "track_name": "JAMBO",
    "genre": "Pop",
    "likes": 0,
    "created_at": "2019-05-29T12:32:58.096Z",
    "updated_at": "2019-05-29T12:32:58.096Z"
  },
  {
    "id": 23,
    "artist_name": "Irama",
    "track_id": 170747375,
    "track_name": "Arrogante",
    "genre": "Unknown Genre",
    "likes": 0,
    "created_at": "2019-05-29T12:32:58.102Z",
    "updated_at": "2019-05-29T12:32:58.102Z"
  },
  {
    "id": 24,
    "artist_name": "Ed Sheeran feat. Justin Bieber",
    "track_id": 170774810,
    "track_name": "I Don't Care",
    "genre": "Pop",
    "likes": 0,
    "created_at": "2019-05-30T18:18:52.394Z",
    "updated_at": "2019-05-30T18:18:52.394Z"
  },
  {
    "id": 25,
    "artist_name": "Benji & Fede",
    "track_id": 171640999,
    "track_name": "Dove e quando",
    "genre": "Unknown Genre",
    "likes": 0,
    "created_at": "2019-05-31T12:59:27.700Z",
    "updated_at": "2019-05-31T12:59:27.700Z"
  }
]

songs.each do |seed_song|
  song = Song.new
  song.artist_name = seed_song[:artist_name]
  song.track_id = seed_song[:track_id]
  song.track_name = seed_song[:track_name]
  song.genre = seed_song[:genre]
  song.likes = seed_song[:likes]
  song.save
end
