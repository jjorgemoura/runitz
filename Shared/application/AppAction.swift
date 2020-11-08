//
// Copyright © 2020  Jorge Moura . All rights reserved.

enum AppAction: Equatable {
    case convert(Distance)
//    case convert(Pace)
    case addFavourite(Distance)
    case removeFavourite(Distance)
//    case addFavourite(Pace)
//    case removeFavourite(Pace)
    case generateList
}
