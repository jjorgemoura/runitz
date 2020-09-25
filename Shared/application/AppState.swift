//
//  AppState.swift
//  runitz (iOS)
//
//  Created by Jorge Moura on 14/09/2020.
//

import Foundation

struct AppState: Identifiable, Equatable {

    var id: UUID
    var favourites: [Distance]
}
