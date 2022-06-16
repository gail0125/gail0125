

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var lblCurrentTime: UILabel!
    let timeSelector: Selector = #selector(AddViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        let Onalert = UIAlertController(title: "saved", message: "저장되었습니다.", preferredStyle: UIAlertController.Style.alert)
        let Checkalert = UIAlertAction(title: "확인했습니다", style: UIAlertAction.Style.default, handler: nil)
        Onalert.addAction(Checkalert)
        present(Onalert, animated: true, completion: nil)
        items.append(tfAddItem.text!)
        itemsImageFile.append("clock.png")
        tfAddItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }
    @objc func updateTime(){
 
    
    
    let date = NSDate()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
    lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
   
    }
}






