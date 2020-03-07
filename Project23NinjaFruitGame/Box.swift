//
//  Box.swift
//  Project23NinjaFruitGame
//
//  Created by Ana Caroline de Souza on 07/03/20.
//  Copyright © 2020 Ana e Leo Corp. All rights reserved.
//

import Foundation

public class Box<T> {

    typealias Listener<T> = (T) -> Void
    var listener: Listener<T>?

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ value: T) {
        self.value = value
    }

    func bind(listener: Listener<T>?){
        self.listener = listener
        self.listener?(value)
    }

}
