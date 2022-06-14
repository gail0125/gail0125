//
//  MemoListTableViewController.swift
//  memo
//
//  Created by 203a13 on 2022/06/09.
//

import UIKit

class MemoListTableViewController: UITableViewController {

    let fomatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated)
        tableView.reloadData()
        print("viewWillAppear",Memo.dummyMemoList.count)
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Memo.dummyMemoList.count
    }
     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let target = Memo.dummyMemoList[indexPath.row]
        cell.textLabel?.text = target.content
        cell.detailTextLabel?.text = fomatter.string(from: target.insertDate)

        return cell
    }

}
