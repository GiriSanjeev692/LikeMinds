//
//  UIImageViewExtention.swift
//  UIImageViewExtention
//
//  Created by Sanjeev Kumar on 19/10/21.
//

import Foundation
import UIKit

extension UIImageView {
    
    func loadImage(urlStr: String) {
        guard let url = URL.init(string: urlStr) else { return}
        let imageLoader = ImageLoader()
        imageLoader.loadImage(from: url) { [weak self] image in
            self?.image = image
        }
    }
}
