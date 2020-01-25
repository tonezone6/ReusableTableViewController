//
//  Artist.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

struct Artist {
    var name: String
    var description: String
}

extension Artist {
    static var section: [Artist] {
        return [
            Artist(
                name: "Little Richard",
                description: "Born Richard Wayne Penniman on December 5, 1932, in Macon, Georgia, Little Richard helped define the early rock 'n' roll era of the 1950s with his driving, flamboyant sound."
            ),
            Artist(
                name: "B.B. King",
                description: "After serving in World War II, Riley B. King, better known as B.B. King, became a disc jockey in Memphis, Tennessee, where he was dubbed 'the Beale Street Blues Boy'. That nickname was shortened to \"B.B.\""
            ),
            Artist(
                name: "Muddy Waters",
                description: "Muddy Waters was born McKinley Morganfield on April 4, 1915, in Issaquena County, Mississippi, a rural town on the Mississippi River. He was given the moniker \"Muddy Waters\" because he played in the swampy puddles of the Mississippi River as a boy."
            ),
            Artist(
                name: "Albert King",
                description: "Bert became a second generation tower after leaving the corporate banking world and purchasing Guy's Towing Service of Lafayette, Louisiana on April Fools' Day in 1997. He has grown Guy's Towing and several business ventures into successful operations each in their own right."
            )
        ]
    }
}
