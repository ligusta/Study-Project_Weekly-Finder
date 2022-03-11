
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func findDateButton(_ sender: UIButton) {
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponets = DateComponents()
        dateComponets.day = Int(day)
        dateComponets.month = Int(month)
        dateComponets.year = Int(year)
        
        let dateFormator = DateFormatter()
        dateFormator.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponets) else { return }
        
        let weekday = dateFormator.string(from: date)
        let capitalizedWeekday = weekday.capitalized
        
        resultLabel.text = capitalizedWeekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
