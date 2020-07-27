//
//  ViewController.swift
//  SearchBarPractice
//
//  Created by 서보경 on 2020/07/27.
//  Copyright © 2020 서보경. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isSearched = false
    var sampleList: [String] = []
    var resultList: [String] = []
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var sampleView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleList = [ "ant", "bear", "candy", "what",
        "nacho", "salmon", "maple", "milk",
        "iPhone", "banana", "cyan", "magenta", "yellow",
        "zebra", "uranus", "연어", "매일", "기업", "차",
        "두유", "소금", "부둣가", "복숭아", "라면", "하늘",
        "누리꾼", "해변", "자신", "삼겹살" ]
    }


}

extension ViewController: UITableViewDelegate {}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch isSearched {
        case true:
            return resultList.count
        default:
            return sampleList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sampleView.dequeueReusableCell(withIdentifier: "sampleCell", for: indexPath) as! SampleCell
        
        switch isSearched {
        case true:
            cell.numberLabel.text = resultList[indexPath.row]
        default:
            cell.numberLabel.text = sampleList[indexPath.row]
        }
        
        return cell
    }
    
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchTerm = searchBar.text, !searchTerm.isEmpty {
            isSearched = true
            resultList = sampleList.filter{ $0.contains(searchTerm) }
            sampleView.reloadData()
        } else {
            isSearched = false
        }
    }
}
