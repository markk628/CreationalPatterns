import UIKit

///Subsystem 1
class HotelBooker {

    func book() {
        print("Hotel booked successfully")
    }
}

///Subsystem 2
class FlightBooker {

    func book() {
        print("Flight booked successfully")
    }
}

///Facade

    //TODO: Create a facade class that wraps both systems and invokes each of their separate book() functions
class TravelFacade {
    let hotelBooker = HotelBooker()
    let flightBooker = FlightBooker()
    
    func getFlightsAndHotels() {
        hotelBooker.book()
        flightBooker.book()
    }
}

/// Client
let travelFacade = TravelFacade()
travelFacade.getFlightsAndHotels()


/* This prints:
Hotel booked successfully
Flight booked successfully
*/
