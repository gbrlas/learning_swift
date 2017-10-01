import UIKit

class AthleteTableViewController: UITableViewController {
    
    var athletes: [Athlete] = []
    struct PropertyKeys {
        static let editAthleteSegue = "EditAthlete"
        static let addAthleteSegue = "AddAthlete"
        static let athleteCell = "AthleteCell" // Or whatever identifier you used for the table view cell in IB
        // possibly other keys
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.athleteCell, for: indexPath)
        
        let athlete = athletes[indexPath.row]
        cell.textLabel?.text = athlete.name
        cell.detailTextLabel?.text = athlete.description
        
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var athleteFormViewController = segue.destination as! AthleteFormViewController
        
        if let indexPath = tableView.indexPathForSelectedRow,
            segue.identifier == PropertyKeys.editAthleteSegue {
            athleteFormViewController.athlete = athletes[indexPath.row]
        } else {
            segue.identifier == PropertyKeys.addAthleteSegue
        }
    }
    
    @IBAction func updatedAthlete(segue: UIStoryboardSegue) {
        let source = segue.source as! AthleteFormViewController
        guard let name = source.athlete?.name,
            let age = source.athlete?.age,
            let league = source.athlete?.league,
            let team = source.athlete?.team
            else { return }
        
        let athlete = source.athlete!
        
        if let indexPath = tableView.indexPathForSelectedRow {
            athletes.remove(at: indexPath.row)
            athletes.insert(athlete, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            athletes.append(athlete)
        }
    }
    
    

}
