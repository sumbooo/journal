//
//  JournalTableView.swift
//  journal
//
//  Created by Subhodh  on 25/10/2021.
//

import UIKit
var journallist = [note]()
class JournalTableView: UITableViewController
{
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let notecell = tableView.dequeueReusableCell(withIdentifier: "noteCellID", for: indexPath) as! journalcell
        let thisNote: note!
        thisNote = journallist[indexPath.row]
        notecell.titleLabel.text = thisNote.title
        notecell.descLabel.text = thisNote.desc
        
        return notecell
    }
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return journallist.count
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
}
