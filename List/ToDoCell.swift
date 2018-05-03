//
//  ToDoCell.swift
//  List
//
//  Created by Michael Hu on 03-05-18.
//  Copyright © 2018 Michael Hu. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Protocols

// protocol which passes cell back to delegate
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

// MARK: - Classes

// Class for ToDoCell (custom)
class ToDoCell: UITableViewCell {

    var delegate: ToDoCellDelegate?

    // MARK: - Outlets
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!

    
    // MARK: - Actions
    // Function for tapping the complete button 
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
}

