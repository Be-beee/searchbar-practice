//
//  SampleCell.swift
//  SearchBarPractice
//
//  Created by 서보경 on 2020/07/27.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class SampleCell: UITableViewCell {

    @IBOutlet var numberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
