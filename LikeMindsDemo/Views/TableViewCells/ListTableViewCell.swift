//
//  ListTableViewCell.swift
//  ListTableViewCell
//
//  Created by Sanjeev Kumar on 19/10/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var genreLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupView() {
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .lightGray
        profileImageView.layer.cornerRadius = 24
    }
    
    func configureCell(artist: Artist) {
        nameLabel.text = artist.artistName
        trackNameLabel.text = artist.trackName
        genreLable.text = artist.primaryGenreName
        descriptionLabel.text = artist.description
        
        profileImageView.loadImage(urlStr: artist.artworkUrl60 ?? "")
    }
    
}
