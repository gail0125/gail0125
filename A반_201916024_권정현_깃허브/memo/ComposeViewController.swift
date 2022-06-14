//
//  ComposeViewController.swift
//  memo
//
//  Created by 203a13 on 2022/06/09.
//

import UIKit

class CompostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
    let memo = memoTextView.text
    let newMemo = Memo(content:memo ?? "")
        Memo.dummyMemoList.append(newMemo)
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoTextView: UITextView!

}
