//
// Copyright © 2020  Jorge Moura. All rights reserved.

enum AppAction: Equatable {
    case convert(Int, Unit)
    case favouriteToggled(Distance)
    case generateDistanceList

    //    case convert(Pace)
    //    case addFavourite(Pace)
//    case removeFavourite(Pace)
}
