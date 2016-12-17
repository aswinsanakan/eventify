User.create!([
  {email: "admin@gmail.com", encrypted_password: "$2a$11$qsz.Rem24Bi3gbRU6bmgkeOO2MrBR7IIULrUbgfeWSIHduoyWx1lG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 23, current_sign_in_at: "2016-12-17 07:43:28", last_sign_in_at: "2016-12-16 18:41:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "Admin Aswin"},
  {email: "organizer@gmail.com", encrypted_password: "$2a$11$2TMoMjEop.o62c7bTms3oOz5hM64x1kC2mcfRuMPd192Bp/7UJEqy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-12-04 15:25:34", last_sign_in_at: "2016-11-29 11:34:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "Organizer Rahul"},
  {email: "organizer1@gmail.com", encrypted_password: "$2a$11$tm86OOjV0yeKCFTeGJvvae4txRYdEBzQKDJOaYTr3hg0uAtZsoBI.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-11-29 13:55:16", last_sign_in_at: "2016-11-29 13:55:16", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "Organizer Arjun"},
  {email: "venueowner@gmail.com", encrypted_password: "$2a$11$pfhJPYeG79Du0a6GZhtw1OP.Pdky4JQ2LKdmqArV7a6da4neyjnYq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: "Venue Owner Ramesh"},
  {email: "venueowner1@gmail.com", encrypted_password: "$2a$11$ilTSnFnTmG9aKrpACQ0JFeEvwoGMkan35qu74iVyOI6Xj3dBIQZtu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: "Venue Owner Suresh"},
  {email: "user@gmail.com", encrypted_password: "$2a$11$J5HCvHMKScPSmcESW2/.ZuN/cyBwq5VncCd14xanHAjhGIQtriMxG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-12-15 10:58:58", last_sign_in_at: "2016-12-04 15:25:07", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "User Elliot"},
  {email: "user2@gmail.com", encrypted_password: "$2a$11$v8.L3SmW9uVNFtNOCNpb6OqYUsiOBO6USb9VsGnBy/C.DT0XUjfMy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-11-28 20:58:12", last_sign_in_at: "2016-11-28 20:46:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "User Priya"},
  {email: "user3@gmail.com", encrypted_password: "$2a$11$DlxeD8.na5dfSCENHrJd.O5lnO0t8tyzA3S5qnE7aTTKx2KTxB8fS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-12-01 13:24:06", last_sign_in_at: "2016-12-01 13:24:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "User Peter"}
])
Category.create!([
  {name: "tech"},
  {name: "music"},
  {name: "food"},
  {name: "games"},
  {name: "hobbies"},
  {name: "social"},
  {name: "business"},
  {name: "travel"}
])
City.create!([
  {name: "Bangalore"},
  {name: "Kochi"},
  {name: "Delhi"},
  {name: "Kolkatta"},
  {name: "Chennai"},
  {name: "Mumbai"},
  {name: "Hyderabad"}
])
Event.create!([
  {name: "Storm Festival", description: "Eius neque blanditiis repellat. Ut exercitationem officiis aliquid quidem. Aut placeat voluptatum.", venue_id: 59, start_datetime: "2016-11-30 01:00:00", end_datetime: "2016-12-03 01:00:00", entry_fee: 721.0, status: "New", locality_id: 205, user_id: 71, tickets_left: 250, avatar: "image/upload/v1481961599/bgbgy11v4gobgeoqftjv.jpg"},
  {name: "High NewYork Nights", description: "Sunt modi vel suscipit consectetur. Explicabo aut et cumque iusto. Repellendus aut veritatis repellat quia. Qui rem non suscipit est. Ipsum nihil omnis ut maiores fugit quo atque.", venue_id: 59, start_datetime: "2016-12-04 07:00:00", end_datetime: "2016-12-07 15:00:00", entry_fee: 766.0, status: "New", locality_id: 204, user_id: 72, tickets_left: 500, avatar: "image/upload/v1481960948/wgeya9kuhezgpffhgxi4.png"},
  {name: "Developer Summit", description: "Ut ut voluptates suscipit sed. Voluptas iusto id nisi. Odio mollitia nihil et ea. Aut voluptatem sit molestiae suscipit et quo debitis. Et fugiat et.", venue_id: 62, start_datetime: "2016-12-02 00:00:00", end_datetime: "2016-12-04 16:00:00", entry_fee: 588.0, status: "New", locality_id: 198, user_id: 71, tickets_left: 750, avatar: "image/upload/v1481961638/f4u1qg4dkx51zqr8b1q3.jpg"},
  {name: "New Year Party", description: "Praesentium tenetur est placeat eos. Occaecati ipsum exercitationem dolor maxime. Dolores est ipsam porro aut facilis modi.", venue_id: 60, start_datetime: "2016-12-03 02:00:00", end_datetime: "2016-12-05 22:00:00", entry_fee: 657.0, status: "New", locality_id: 190, user_id: 71, tickets_left: 750, avatar: "image/upload/v1481961680/g8tjyw4rz4svi0npfi08.jpg"},
  {name: "Pinkathon 2015", description: "Exercitationem aut asperiores quis. Eaque ab velit distinctio facilis et. Eligendi eveniet rerum et aut veniam sunt aliquam. Vel fuga est dicta ut possimus velit vel.", venue_id: 62, start_datetime: "2016-12-04 20:00:00", end_datetime: "2016-12-07 08:00:00", entry_fee: 1224.0, status: "New", locality_id: 188, user_id: 72, tickets_left: 750, avatar: "image/upload/v1481961702/bpnuykcdc4kqjo1urf8c.png"},
  {name: "Startup Events 2016", description: "Sunt voluptatem est. In aut ut officia. Qui voluptatem rerum praesentium et sapiente ad eum. Omnis dolorem tenetur eaque aut omnis est. Est cupiditate consequatur.", venue_id: 61, start_datetime: "2016-12-02 22:00:00", end_datetime: "2016-12-04 11:00:00", entry_fee: 853.0, status: "New", locality_id: 196, user_id: 72, tickets_left: 750, avatar: "image/upload/v1481961792/k1fgklei113zquplikcb.jpg"},
  {name: "Milkha Sing Unplugged", description: "Afgaskjf ,jhhb,fgskjd jhgsaa,dj", venue_id: 62, start_datetime: "2017-11-29 13:00:00", end_datetime: "2017-11-30 13:00:00", entry_fee: 1000.0, status: "New", locality_id: 192, user_id: 71, tickets_left: 250, avatar: "image/upload/v1481961819/nymuydvrnru8ltvd1wdr.jpg"}
])
EventBooking.create!([
  {event_id: 121, user_id: 70, total_price: 2163.0, tickets: 3},
  {event_id: 121, user_id: 76, total_price: 5047.0, tickets: 7},
  {event_id: 121, user_id: 75, total_price: 2884.0, tickets: 4},
  {event_id: 121, user_id: 72, total_price: 7210.0, tickets: 10},
  {event_id: 121, user_id: 72, total_price: 7210.0, tickets: 10},
  {event_id: 121, user_id: 72, total_price: 2163.0, tickets: 3},
  {event_id: 121, user_id: 70, total_price: 2884.0, tickets: 4},
  {event_id: 121, user_id: 70, total_price: 2163.0, tickets: 3},
  {event_id: 121, user_id: 70, total_price: 2884.0, tickets: 4}
])
EventCategory.create!([
  {event_id: 121, category_id: 32},
  {event_id: 121, category_id: 29},
  {event_id: 122, category_id: 33},
  {event_id: 122, category_id: 35},
  {event_id: 123, category_id: 30},
  {event_id: 123, category_id: 34},
  {event_id: 124, category_id: 29},
  {event_id: 124, category_id: 33},
  {event_id: 125, category_id: 30},
  {event_id: 125, category_id: 29},
  {event_id: 126, category_id: 30},
  {event_id: 126, category_id: 31},
  {event_id: 127, category_id: 29},
  {event_id: 127, category_id: 32},
  {event_id: 128, category_id: 30},
  {event_id: 128, category_id: 34},
  {event_id: 129, category_id: 30},
  {event_id: 129, category_id: 34},
  {event_id: 130, category_id: 30},
  {event_id: 130, category_id: 32},
  {event_id: 130, category_id: 33}
])
Locality.create!([
  {name: "627 King Fields", city_id: 79},
  {name: "3442 Eichmann Falls", city_id: 79},
  {name: "6540 Arjun Wall", city_id: 79},
  {name: "66947 Mitchell Meadow", city_id: 79},
  {name: "98427 Eichmann Shore", city_id: 79},
  {name: "860 Watson Island", city_id: 80},
  {name: "6203 Torphy Manor", city_id: 80},
  {name: "2009 Kamron Ways", city_id: 80},
  {name: "8590 Roob Ridges", city_id: 80},
  {name: "684 Bechtelar Groves", city_id: 80},
  {name: "48267 Denesik Fields", city_id: 81},
  {name: "7854 Maurine Creek", city_id: 81},
  {name: "6019 Kutch Burgs", city_id: 81},
  {name: "46247 Una Estates", city_id: 81},
  {name: "453 Cassandre Underpass", city_id: 81},
  {name: "522 Yesenia Stravenue", city_id: 82},
  {name: "7113 Von Shores", city_id: 82},
  {name: "5692 Annabel Lane", city_id: 82},
  {name: "88435 Lysanne Heights", city_id: 82},
  {name: "3217 Jaylen Trace", city_id: 82},
  {name: "21542 Crona Locks", city_id: 83},
  {name: "45248 Schaefer Rest", city_id: 83},
  {name: "1078 Evangeline Gardens", city_id: 83},
  {name: "400 Schumm Spurs", city_id: 83},
  {name: "25902 Stark Spurs", city_id: 83},
  {name: "61083 Estelle Meadow", city_id: 84},
  {name: "30113 Halvorson Isle", city_id: 84},
  {name: "4185 Miller Green", city_id: 84},
  {name: "20273 Eichmann Camp", city_id: 84},
  {name: "643 Holden Crossroad", city_id: 84},
  {name: "887 Lloyd Roads", city_id: 85},
  {name: "6670 Kilback Place", city_id: 85},
  {name: "1309 O'Keefe Centers", city_id: 85},
  {name: "181 Hintz Way", city_id: 85},
  {name: "530 Mraz Stream", city_id: 85}
])
Permission.create!([
  {user_id: 70, role_id: 52},
  {user_id: 70, role_id: 49},
  {user_id: 70, role_id: 52},
  {user_id: 71, role_id: 52},
  {user_id: 71, role_id: 50},
  {user_id: 71, role_id: 52},
  {user_id: 72, role_id: 52},
  {user_id: 72, role_id: 50},
  {user_id: 72, role_id: 52},
  {user_id: 73, role_id: 52},
  {user_id: 73, role_id: 51},
  {user_id: 73, role_id: 52},
  {user_id: 74, role_id: 52},
  {user_id: 74, role_id: 51},
  {user_id: 74, role_id: 52},
  {user_id: 75, role_id: 52},
  {user_id: 75, role_id: 52},
  {user_id: 76, role_id: 52},
  {user_id: 77, role_id: 52}
])
Role.create!([
  {name: "admin"},
  {name: "organizer"},
  {name: "venue_owner"},
  {name: "user"}
])
Venue.create!([
  {name: "Conway Hall", address: "635 Antonina Plaza", user_id: 73, locality_id: 185, seats: 750, avatar: "image/upload/v1481961855/uq4cfw2ftojikfre2idq.jpg"},
  {name: "Prestige Concert Hall", address: "8666 Rogahn Valleys", user_id: 73, locality_id: 182, seats: 1000, avatar: "image/upload/v1481961350/iiicfoirqwl0equ8q3gd.jpg"},
  {name: "BGH Stage House", address: "897 Conn Meadows", user_id: 74, locality_id: 188, seats: 500, avatar: "image/upload/v1481961881/n8m8kgxdez3llijlvdsk.jpg"},
  {name: "Ruby Diamond Hall", address: "4487 Morissette Locks", user_id: 74, locality_id: 192, seats: 500, avatar: "image/upload/v1481961899/hhahn02mp18cw7hcdyyw.jpg"},
  {name: "Kamath Enterprises Hall", address: "6476 Alia Ferry", user_id: 73, locality_id: 174, seats: 250, avatar: "image/upload/v1481961917/fmv2xreacochginjaqwf.jpg"}
])
VenueBooking.create!([
  {start_datetime: "2016-11-30 01:05:28", end_datetime: "2016-12-03 01:13:46", venue_id: 59, event_id: 121},
  {start_datetime: "2016-12-04 07:39:09", end_datetime: "2016-12-07 15:44:22", venue_id: 59, event_id: 122},
  {start_datetime: "2016-12-02 00:12:29", end_datetime: "2016-12-04 16:26:37", venue_id: 62, event_id: 123},
  {start_datetime: "2016-12-03 02:22:37", end_datetime: "2016-12-05 22:31:34", venue_id: 60, event_id: 124},
  {start_datetime: "2016-12-04 20:46:42", end_datetime: "2016-12-07 08:06:17", venue_id: 62, event_id: 125},
  {start_datetime: "2016-12-02 22:35:19", end_datetime: "2016-12-04 11:29:52", venue_id: 61, event_id: 126},
  {start_datetime: "2016-11-30 18:23:13", end_datetime: "2016-12-02 23:03:24", venue_id: 63, event_id: 127},
  {start_datetime: "2016-11-29 17:00:00", end_datetime: "2016-11-29 17:00:00", venue_id: 59, event_id: nil},
  {start_datetime: "2017-11-29 13:00:00", end_datetime: "2017-12-01 13:00:00", venue_id: 63, event_id: 128},
  {start_datetime: "2017-11-29 13:00:00", end_datetime: "2017-11-30 13:00:00", venue_id: 62, event_id: 129},
  {start_datetime: "2016-12-10 03:00:00", end_datetime: "2016-12-10 03:00:00", venue_id: 59, event_id: 130}
])
