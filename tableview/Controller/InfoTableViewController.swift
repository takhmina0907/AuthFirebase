//
//  InfoTableViewController.swift
//  tableview
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController{
    
    var info: [Info] = [
        
        Info.init(infoTitle: "Something", infoDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets", infoImage: UIImage(named: "takhmina")),
        Info.init(infoTitle: "Something2", infoDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets", infoImage: UIImage(named: "takhmina"))
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBOutlet weak var infoTableView: UITableView!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! InfoTableViewCell
        
        cell.infoLabel.text = info[indexPath.row].infoTitle
        cell.infoImageView.image = info[indexPath.row].infoImage
        cell.infoLabel.numberOfLines = 4
     
        print("success")
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mySeque"{
            let infoDetailVC: InfoDetailViewController = segue.destination as! InfoDetailViewController
            infoDetailVC.infoDetailTitle = info[(infoTableView.indexPathForSelectedRow?.row)!].infoTitle
            infoDetailVC.infoDetailDesc = info[(infoTableView.indexPathForSelectedRow?.row)!].infoDescription
            infoDetailVC.infoDetailImage = info[(infoTableView.indexPathForSelectedRow?.row)!].infoImage
            
        }
    }
    

}
