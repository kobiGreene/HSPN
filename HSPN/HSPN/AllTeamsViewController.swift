//
//  AllTeamsViewController.swift
//  HSPN
//
//  Created by Kobi Greene on 12/14/16.
//  Copyright © 2016 Kobi Greene. All rights reserved.
//

import UIKit

class AllTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var boyteams = [String]()
    var girlteams = [String]()
    var coedteams = [String]()

    @IBOutlet weak var boysTableView: UITableView!
    @IBOutlet weak var girlsTableView: UITableView!
    @IBOutlet weak var coedTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        boyteams = ["Boys Varsity Soccer", "Boys Water Polo", "Varsity Football"]
        girlteams = ["Girls Varsity Soccer", "Girls Varsity Volleyball", "Girls JV Volleyball"]
        coedteams = ["Blah", "Blah Blah"]
//        boysTableView.delegate = self
//        girlsTableView.delegate = self
//        coedTableView.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == boysTableView {
            return boyteams.count
        }else if tableView == girlsTableView {
            return girlteams.count
            
        }else if tableView == coedTableView {
            return coedteams.count
        }else {
            return 0
        }
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == boysTableView {
            let cell: UITableViewCell = self.boysTableView.dequeueReusableCell(withIdentifier: "cell1")!
            cell.textLabel?.text = boyteams[indexPath.row]
            return cell
        }else if tableView == girlsTableView {
            let cell: UITableViewCell = self.girlsTableView.dequeueReusableCell(withIdentifier: "cell2")!
            cell.textLabel?.text = girlteams[indexPath.row]
            return cell
            
        }else if tableView == coedTableView {
            let cell: UITableViewCell = self.coedTableView.dequeueReusableCell(withIdentifier: "cell3")!
            cell.textLabel?.text = coedteams[indexPath.row]
            return cell
        }else {
            let cell: UITableViewCell = self.boysTableView.dequeueReusableCell(withIdentifier: "cell1")!
            return cell
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
