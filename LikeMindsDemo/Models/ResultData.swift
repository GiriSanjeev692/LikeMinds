//
//  ResultData.swift
//  ResultData
//
//  Created by Sanjeev Kumar on 19/10/21.
//

import Foundation

struct ResultData: Codable {
    var resultCount: Int?
    var results: [Artist]
    
}

/*"wrapperType":"track", "kind":"song", "artistId":146519987, "collectionId":146519985, "trackId":146520962, "artistName":"Adele Bloemendaal", "collectionName":"Adele", "trackName":"Vijf voor 12", "collectionCensoredName":"Adele", "trackCensoredName":"Vijf voor 12", "artistViewUrl":"https://music.apple.com/us/artist/adele-bloemendaal/146519987?uo=4", "collectionViewUrl":"https://music.apple.com/us/album/vijf-voor-12/146519985?i=146520962&uo=4", "trackViewUrl":"https://music.apple.com/us/album/vijf-voor-12/146519985?i=146520962&uo=4",
"previewUrl":"https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/34/a2/75/34a2751a-ea01-ea45-dd38-c866a52a6e36/mzaf_4773432222255843034.plus.aac.p.m4a", "artworkUrl30":"https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/64/b9/0f/64b90f6e-3231-1a61-56bd-414bceddc2b6/source/30x30bb.jpg", "artworkUrl60":"https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/64/b9/0f/64b90f6e-3231-1a61-56bd-414bceddc2b6/source/60x60bb.jpg", "artworkUrl100":"https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/64/b9/0f/64b90f6e-3231-1a61-56bd-414bceddc2b6/source/100x100bb.jpg", "collectionPrice":5.99, "trackPrice":0.99, "releaseDate":"2006-01-12T12:00:00Z", "collectionExplicitness":"notExplicit", "trackExplicitness":"notExplicit", "discCount":1, "discNumber":1, "trackCount":16, "trackNumber":16, "trackTimeMillis":239707, "country":"USA", "currency":"USD", "primaryGenreName":"Vocal", "isStreamable":true
 */
struct Artist: Codable {
    var artistName: String?
    var trackName: String?
    var artworkUrl60: String?
    var description: String?
    var shortDescription: String?
    var primaryGenreName: String?
    
}
