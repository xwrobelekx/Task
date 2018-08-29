//
//  TaskCellTableViewCell.swift
//  Task
//
//  Created by Kamil Wrobel on 8/29/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class TaskCellTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var taskSwitch: UISwitch!
    
    
    //MARK: - Properties
    var task : Task? {
        didSet {
            updateViews()
        }
    }
    
    
    //MARK: - Methods
    func updateViews() {
        guard let newTask = task else {return}
        taskLabel.text = newTask.name
        taskSwitch.isOn = newTask.isComplete
    }
    
    
    
    @IBAction func isCompleted(_ sender: Any) {
    }
    
}
