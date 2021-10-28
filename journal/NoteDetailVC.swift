//
//  ViewController.swift
//  journal
//
//  Created by Subhodh  on 25/10/2021.
//

import UIKit
import CoreData

class NoteDetailVC: UIViewController
{
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var descTV: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    
    @IBAction func saveAction(_ sender: Any)
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "note", in: context)
        let newNote = note(entity: entity!, insertInto: context)
        newNote.id = journallist.count as NSNumber
        newNote.title = titleTF.text
        newNote.desc = descTV.text
        do
        {
            try context.save()
            journallist.append(newNote)
            navigationController?.popViewController(animated: true)
        }
        catch
        {
                 print("context save error")
        }
    }
}

