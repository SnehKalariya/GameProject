
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var loadingLabelOutlet: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
    }
    
    func progress(){
        var value : Float = 0.0
        self.progressBar.progress = value
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (time) in
            value += 0.02
            self.progressBar.progress = value
            if self.progressBar.progress == 1.0{
                self.progressBar.progress = 0.0
                self.showAlert(title: "Click to play & game start")
                self.naviget()
                self.time.invalidate()
            }
        })
    }
    
    func showAlert(title:String){
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Play", style: .default,handler: { _ in
            self.naviget()
        }))
        
        present(alert,animated: true)
    }
    
    func naviget(){
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(naviget, animated: true)
    }

    @IBAction func playButtonAction(_ sender: UIButton) {
        progress()
    }
    
}

