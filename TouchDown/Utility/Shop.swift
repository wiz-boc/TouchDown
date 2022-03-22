//
//  Shop.swift
//  TouchDown
//
//  Created by wizz on 11/27/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectProduct: Product? = nil
}
