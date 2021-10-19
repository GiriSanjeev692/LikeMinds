//
//  HomeViewModel.swift
//  HomeViewModel
//
//  Created by Sanjeev Kumar on 19/10/21.
//

import Foundation


class HomeViewModel {
    var networkManager = NetworkManager()
    var artistList: [Artist] = []
    
    func fetchArtistsData(searchText: String, completionHandler: @escaping((Result<ResultData, Error>) -> Swift.Void)) {
        //"https://itunes.apple.com/search?term=adele"
        let urlStr = "https://itunes.apple.com/search?term=\(searchText)"
        networkManager.makeServerRequest(responseType: ResultData.self, urlStr: urlStr) {[weak self] result in
            switch result {
            case .success(let data):
                self?.artistList = data.results
            case .failure(let error):
                print("Error")
            }
             completionHandler(result)
        }
    }
    
    
}
