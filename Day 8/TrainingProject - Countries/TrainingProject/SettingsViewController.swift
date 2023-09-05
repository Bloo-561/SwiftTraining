//
//  SettingsViewController.swift
//  TrainingProject
//
//  Created by Consultant on 9/5/23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    let headers = ["VISION","PHYSICAL AND MOTOR","HEARING","GENERAL"]
    let VISION = ["VoiceOver","Zoom","Display & Text Size","Motion","Spoken Content","Audio Descriptions"]
    let PAM = ["Touch","Face ID & Attention","Switch Control","Voice Control","Side Button","Apple Watch Mirroring","Control Nearby Devices","Apple TV Remote","Keyboards"]
    let HEARING = ["Hearing Devices","Sound Recognition","Audio/Visual","Subtitles & Captioning"]
    let GENERAL = ["Guided Access","Siri","Accessibility Shortcut","Per-App Settings"]
    

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return VISION.count
        case 1:
            return PAM.count
        case 2:
            return HEARING.count
        case 3:
            return GENERAL.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell",for: indexPath) as? SettingsTableViewCell
        
        switch indexPath.section {
        case 0:
            cell?.categoryLabel.text = VISION[indexPath.row]
        case 1:
            cell?.categoryLabel.text = PAM[indexPath.row]
        case 2:
            cell?.categoryLabel.text = HEARING[indexPath.row]
        case 3:
            cell?.categoryLabel.text = GENERAL[indexPath.row]
        default:
            return UITableViewCell()
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell") as? SettingsTableViewCell
        
        cell?.categoryLabel.text = headers[section]
        return cell ?? UITableViewCell()
    }
}
