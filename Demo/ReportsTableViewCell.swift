//
//  ReportsTableViewCell.swift
//  Demo
//
//  Created by Kyriakos S. on 7/2/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit

class ReportsTableViewCell: UITableViewCell {

    @IBOutlet weak var trackId: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var trackTitle: UILabel!
    @IBOutlet weak var firimage: UIImageView!
    
    
    @IBOutlet weak var answer4: UILabel!
    @IBOutlet weak var answer5: UILabel!
    @IBOutlet weak var answer6: UILabel!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var useridnt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
