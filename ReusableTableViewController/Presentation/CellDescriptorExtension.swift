//
//  CellDescriptor.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

import Foundation

extension CellDescriptor {
    static func descriptor<Item>(with item: Item) -> CellDescriptor {
        if let artist = item as? Artist {
            return CellDescriptor(reuseIdentifier: ArtistCell.reuseIdentifier) { (artistCell: ArtistCell) in
                artistCell.configure(with: artist)
            }
        }
        if let album = item as? Album {
            return CellDescriptor(reuseIdentifier: AlbumCell.reuseIdentifier) { (albumCell: AlbumCell) in
                albumCell.configure(with: album)
            }
        }
        fatalError()
    }
}
