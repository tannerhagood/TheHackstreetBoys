//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Timothy T Hagood on 3/3/15.
//  Copyright (c) 2015 Timothy T Hagood. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    var items: [String] = ["Team 1: Florida Seed: 1 Record: 32-2 Rank: 1",
        "Team 2: Albany/MS Marys Seed: 16 Record: 18-24 Rank: 66",
        "Team 3: Colorado Seed: 8 Record: 33-11 Rank: 32",
        "Team 4: Pittsburgh Seed: 9 Record: 25-9 Rank: 36",
        "Team 5: VCU Seed: 5 Record: 26-8 Rank: 19",
        "Team 6: SF Austin Seed: 12 Record: 31-2 Rank: 50",
        "Team 7: UCLA Seed: 4 Record: 26-8 Rank: 15",
        "Team 8: Tulsa Seed: 13 Record: 21-12 Rank: 52",
        "Team 9: Ohio State Seed: 6 Record: 25-9 Rank: 22",
        "Team 10: Dayton Seed: 11 Record: 23-10 Rank: 41",
        "Team 11: Syracuse Seed: 3 Record: 27-5 Rank: 10",
        "Team 12: Western Michigan Seed: 14 Record: 23-9 Rank: 55",
        "Team 13: New Mexico Seed: 7 Record: 27-6 Rank: 28",
        "Team 14: Stanford Seed: 10 Record: 27-6 Rank: 28",
        "Team 15: Kansas Seed: 2 Record: 24-9 Rank: 7",
        "Team 16: Eastern Kentucky Seed: 15 Record: 24-9 Rank: 59",
        "Team 17: Virginia Seed: 1 Record: 28-6 Rank: 4",
        "Team 18: Coastal Carolina Seed: 16 Record: 21-12 Rank: 63",
        "Team 19: Memphis Seed: 8 Record: 23-9 Rank: 31",
        "Team 20: George Washington Seed: 9 Record: 24-8 Rank: 34",
        "Team 21: Cincinnati Seed: 5 Record: 27-6 Rank: 17",
        "Team 22: Harvard Seed: 12 Record: 26-4 Rank: 49",
        "Team 23: Michigan State Seed: 4 Record: 26-8 Rank: 14",
        "Team 24: Delaware Seed: 13 Record: 25-9 Rank: 54",
        "Team 25: North Carolina Seed: 14 Record: 28-5 Rank: 58",
        "Team 26: Providence Seed: 11 Record: 23-11 Rank: 43",
        "Team 27: Iowa State Seed: 3 Record: 26-7 Rank: 12",
        "Team 28: North Carolina Seed: 6 Record: 23-9 Rank: 21",
        "Team 29: Connecticut Seed: 7 Record: 26-8 Rank: 26",
        "Team 30: St. Josephs Seed: 10 Record: 24-9 Rank: 38",
        "Team 31: Villanova Seed: 2 Record: 28-4 Rank: 5",
        "Team 32: Milwaukee Seed: 15 Record: 21-13 Rank: 60",
        "Team 33: Arizona Seed: 1 Record: 30-4 Rank: 2",
        "Team 34: Weber State Seed: 16 Record: 19-11 Rank: 64",
        "Team 35: Gonzaga Seed: 8 Record: 28-6 Rank: 30",
        "Team 36: Oklahoma State Seed: 9 Record: 21-12 Rank: 35",
        "Team 37: Oklahoma Seed: 5 Record: 23-9 Rank: 20",
        "Team 38: North Dakota State Seed: 12 Record: 25-6 Rank: 48",
        "Team 39: San Diego State Seed: 4 Record: 29-4 Rank: 16",
        "Team 40: New Mexico State Seed: 13 Record: 26-9 Rank: 53",
        "Team 41: Baylor Seed: 6 Record: 24-11 Rank: 24",
        "Team 42: Nebraska Seed: 42 Record: 19-12 Rank: 42",
        "Team 43: Creighton Seed: 3 Record: 26-7 Rank: 11",
        "Team 44: Louisiana-Layfayette Seed: 14 Record: 23-11 Rank: 57",
        "Team 45: Oregon Seed: 27 Record: 23-9 Rank: 27",
        "Team 46: BYU Seed: 10 Record: 23-11 Rank: 39",
        "Team 47: Wisconsin Seed: 2 Record: 26-7 Rank: 8",
        "Team 48: American Seed: 15 Record: 20-12 Rank: 62",
        "Team 49: Wichita State Seed: 1 Record: 34-0 Rank: 3",
        "Team 50: Cal Poly/Tex Seed: 16 Record: 13-19 Rank: 68",
        "Team 51: Kentucky Seed: 8 Record: 24-10 Rank: 29",
        "Team 52: Kansas State Seed: 9 Record: 20-12 Rank: 33",
        "Team 53: Saint Louis Seed: 5 Record: 26-6 Rank: 18",
        "Team 54: NC State/Xavier Seed: 12 Record: 21-13 Rank: 47",
        "Team 55: Louisville Seed: 4 Record: 29-5 Rank: 13",
        "Team 56: Manhattan Seed: 13 Record: 25-7 Rank: 51",
        "Team 57: Massachusetts Seed: 6 Record: 24-8 Rank: 23",
        "Team 58: Colorado Seed: 8 Record: 33-11 Rank: 32",
        "Team 59: Duke Seed: 3 Record: 26-8 Rank: 9",
        "Team 60: Mercer Seed: 14 Record: 26-8 Rank: 56",
        "Team 61: Texas Seed: 7 Record: 23-10 Rank: 25",
        "Team 62: Arizona State Seed: 10 Record: 21-11 Rank: 40",
        "Team 63: Michigan Seed: 2 Record: 25-8 Rank: 6",
        "Team 64: Wooford Seed: 15 Record: 20-12 Rank: 61"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }

}