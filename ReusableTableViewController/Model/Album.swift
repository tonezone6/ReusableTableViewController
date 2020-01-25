//
//  Album.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

struct Album {
    var title: String
    var year: Int
}

extension Album {
    static var section: [Album] {
        return [
            Album(title: "Lucille", year: 1968),
            Album(title: "Hard Again", year: 1977),
            Album(title: "King Bee", year: 1981),
            Album(title: "I'll Play the Blues for You", year: 1972),
            Album(title: "Lovejoy", year: 1971),
            Album(title: "Little Richard", year: 1958),
            Album(title: "The Rill Thing", year: 1970)
        ]
    }
}
