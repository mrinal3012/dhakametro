
class Model{
  String ? name;
  String ?image;
  Model({this.name,this.image});
}
List<Model> historyList =[
  Model(image: "images/profile.png",name: "Profile"),
  Model(image: "images/history.png",name: "Booking History"),
  Model(image: "images/cancel.png",name: "Cancel Tickets"),
  Model(image: "images/booking.jpg",name: "All Booked Tickets"),
  Model(image: "images/custom.png",name: "Customer Support"),
  Model(image: "images/logout.png",name: "Logout"),
];

class StationModel{
  String ? firstStationName;
  String ? secondStationName;
  int ? amount;
  int count=1;
  int ? ticket;
  StationModel({this.firstStationName,this.secondStationName,this.amount,this.ticket});
}
List<StationModel> stationList=[
  StationModel(firstStationName: "Uttara North",secondStationName: "Uttara North",amount: 0,ticket:03164565 ),
  StationModel(firstStationName: "Uttara North",secondStationName: "Uttara Center",amount: 20,ticket:03164566),
  StationModel(firstStationName: "Uttara North",secondStationName: "Uttara South",amount: 20,ticket:03164567),
  StationModel(firstStationName: "Uttara North",secondStationName: "Pallabi",amount: 30,ticket:03164568),
  StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-11",amount: 30,ticket:03164569),
  StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-10",amount: 40,ticket:03164570),
  StationModel(firstStationName: "Uttara North",secondStationName: "Kazipara",amount: 40,ticket:03164571),
  StationModel(firstStationName: "Uttara North",secondStationName: "Shewrapara",amount: 50,ticket:03164572),
  StationModel(firstStationName: "Uttara North",secondStationName: "Agargaon",amount: 60,ticket:03164573),

  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara North",amount: 20,ticket:03164574),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara Center",amount: 0,ticket:03164575),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara South",amount: 20,ticket:03164576),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Pallabi",amount: 20,ticket:03164577),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-11",amount: 30,ticket:03164578),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-10",amount: 30,ticket:03164579),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Kazipara",amount: 40,ticket:03164580),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Shewrapara",amount: 40,ticket:03164581),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Agargaon",amount: 50,ticket:03164582),

  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara North",amount: 30,ticket:03164583),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara Center",amount: 20,ticket:03164584),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara South",amount: 20,ticket:03164585),
  StationModel(firstStationName: "Pallabi",secondStationName: "Pallabi",amount: 0,ticket:03164586),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-11",amount: 20,ticket:03164587),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-10",amount: 20,ticket:03164588),
  StationModel(firstStationName: "Pallabi",secondStationName: "Kazipara",amount: 20,ticket:03164589),
  StationModel(firstStationName: "Pallabi",secondStationName: "Shewrapara",amount: 30,ticket:03164590),
  StationModel(firstStationName: "Pallabi",secondStationName: "Agargaon",amount: 30,ticket:03164591),
];

class Payment{
  String ? name;
  String ? image;
  Payment({this.name , this.image});
}
List<Payment> paymentList=[
  Payment(name: "bKash",image: "images/bkash.webp"),
  Payment(name: "Upay",image: "images/upay.png"),
  Payment(name: "Rocket",image: "images/rocket.png"),
  Payment(name: "Nagad",image: "images/nagad.png"),
  Payment(name: "Credit / Debit Card",image: "images/mastercard.png"),
  Payment(name: "VISA",image: "images/visa.png"),
];
class Station{
  String ? name;
  int ? id ;
  int ? amount;
  Station({this.name,this.amount,this.id});
}
List<Station> stationNameList=[
  Station(id:1 ,name: "Uttara North",amount:0 ),
  Station(id:2 ,name: "Uttara Center",amount:0 ),
  Station(id:3 ,name: "Uttara South",amount:0 ),
  Station(id:4 ,name: "Pallabi",amount:0 ),
  Station(id:5 ,name: "Mirpur-11",amount:0 ),
  Station(id:6 ,name: "Mirpur-10",amount:0 ),
  Station(id:7 ,name: "Kazipara",amount:0 ),
  Station(id:8 ,name: "Shewrapara",amount:0 ),
  Station(id:9 ,name: "Agargaon",amount:0 ),
];
class FAQ{
  String ? question;
  String ? ans;
  FAQ({this.question,this.ans});
}
List<FAQ> FAQList=[
  FAQ(question: "Q1: What is the Dhaka Metro Rail?",ans: " The Dhaka Metro Rail is a modern rapid transit system designed to provide efficient and convenient transportation within Dhaka, the capital city of Bangladesh."),
  FAQ(question: "Q2: How does the Dhaka Metro Rail work?",ans: "The Dhaka Metro Rail operates on elevated or underground tracks, with designated stations where passengers can board and alight. Trains run on fixed schedules and follow predefined routes."),
  FAQ(question: "Q3: What are the benefits of using the Dhaka Metro Rail?",ans: "The Dhaka Metro Rail offers several benefits, including reduced traffic congestion, quicker travel times, improved air quality, and a more sustainable transportation option."),
  FAQ(question: "Q4: How do I buy a ticket for the Dhaka Metro Rail?",ans: "You can purchase a ticket at the metro stations from ticket vending machines or counters. Some systems might offer online ticketing through a website or mobile app."),
  FAQ(question: "Q5: Are there different types of tickets available?",ans: "No, there is only a single type of ticketing system which is available for all sorts of people who want to travel by metro."),
  FAQ(question: "Q6: How do I know the train schedule and route?",ans: "The train schedule and route information is usually displayed on digital screens at the stations. You can also find this information on the metro's official website or mobile app."),
  FAQ(question: "Q7: Are there different train lines in the Dhaka Metro Rail system?",ans: "Yes, metro systems often have multiple lines that connect different parts of the city. Each line has its own color and designated stops."),
  FAQ(question: "Q8: Are the metro stations accessible to people with disabilities?",ans: "Yes, metro stations are designed to be accessible to people with disabilities. They have ramps, elevators, tactile markings, and other features to ensure inclusivity."),
  FAQ(question: "Q9: How frequent are the trains?",ans: "Train frequency varies but is usually higher during peak hours and lower during off-peak times. The exact frequency can be found on the system's official sources."),
  FAQ(question: "Q10: What safety measures are in place on the Dhaka Metro Rail?",ans: "Safety measures include emergency stop buttons, security personnel, CCTV surveillance, fire safety systems, and well-lit stations and trains."),
  FAQ(question: "Q11: Can I use a metrocard for multiple journeys?",ans: "Yes, some systems offer rechargeable metro cards that you can use for multiple journeys. These cards often provide discounts compared to buying single tickets."),
  FAQ(question: "Q12: Are there restrictions on carrying luggage or pets on the metro?",ans: "Metro systems usually have guidelines regarding the size and type of luggage allowed. Pets are generally not allowed except for service animals."),
  FAQ(question: "Q13: Can I bring food and drinks onto the metro?",ans: "Most metro systems allow passengers to bring food and non-alcoholic drinks, but it's recommended to avoid messy or strong-smelling foods out of consideration for other passengers."),
  FAQ(question: "Q14: What should I do in case of an emergency or evacuation?",ans: "Follow the instructions provided by station personnel, announcements, and signage. Stations are equipped with emergency exits and evacuation plans."),
  FAQ(question: "Q15: Is there a lost and found service in case I lose something on the metro?",ans: "Yes, most metro systems have a lost and found service. Contact the station's customer service or visit their website for more information."),

];