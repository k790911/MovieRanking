//
//  MyTableViewCell.swift
//  MovieRanking
//
//  Created by 김재훈 on 2022/03/13.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var ranking: UILabel!
    @IBOutlet var movieName: UILabel!
    @IBOutlet var movieCnt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
