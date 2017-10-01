//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Goran Brlas on 26/09/2017.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete: Athlete?
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var leagueField: UITextField!
    @IBOutlet weak var teamField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView() {
        if let athlete = athlete {
            nameField.text = athlete.name
            ageField.text = "\(athlete.age)"
            leagueField.text = athlete.league
            teamField.text = athlete.team
        }
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let name = nameField.text,
            let age = ageField.text,
            let league = leagueField.text,
            let team = teamField.text
        else { return }
        
        athlete = Athlete(name: name, age: Int(age)!, league: league, team: team)
        
        performSegue(withIdentifier: "UpdatedAthlete", sender: self)
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
