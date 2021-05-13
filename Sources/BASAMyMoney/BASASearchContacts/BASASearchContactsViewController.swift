//
//  BSSASearchContactsViewController.swift
//  BSSASearchContacts
//
//  Created Branchbit on 12/05/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

struct Contacts {
    var name: String = "na"
    var number: String = "na"
    var bank: String = "na"
}

class BASASearchContactsViewController: UIViewController, UISearchBarDelegate, BASASearchContactsViewProtocol {
    
	var presenter: BASASearchContactsPresenterProtocol?

    @IBOutlet weak var searchContacts: UISearchBar!
    @IBOutlet weak var tableContacts: UITableView!

    
    private var contacts: [Contacts] = []
    private var filterContacts:[Contacts] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableContacts.register(UINib(nibName: "BASAContactosTableViewCell", bundle: Bundle.local), forCellReuseIdentifier: "contactsCell")
        contacts.append(Contacts(name: "Kevin Solano", number: "5550533265", bank: "Banco Azteca"))
        contacts.append(Contacts(name: "Cristian Villegas", number: "5550533260", bank: "Banco Azteca"))
        contacts.append(Contacts(name: "Miguel Colin", number: "5550533261", bank: "Citibanamex"))
        contacts.append(Contacts(name: "Alexis Herrera", number: "5550533262", bank: "BBVA"))
        contacts.append(Contacts(name: "Victor Gúzman", number: "5550533263", bank: "Banco Azteca"))
        contacts.append(Contacts(name: "Hector Ponce", number: "5550533253", bank: "Citibanamex"))
        contacts.append(Contacts(name: "Ariadna Rivas", number: "5550533273", bank: "Banco Azteca"))
        contacts.append(Contacts(name: "María Rodríguez", number: "5550533293", bank: "Banco Azteca"))
        contacts.append(Contacts(name: "Andrea Chavez", number: "5550533233", bank: "Citibanamex"))
        contacts.append(Contacts(name: "Alejandro Espinosa", number: "5550533243", bank: "BBVA"))
        
        searchContacts.delegate = self
        tableContacts.dataSource = self
        tableContacts.delegate = self
        tableContacts.tableFooterView = UIView()
        
        
        
        let principalColor = UIColor(red: 0.95, green: 0.80, blue: 0.31, alpha: 1.00)
        let lineView = UIView(frame: CGRect(x: 20, y: 150, width: 368, height: 0.5))
         lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.lightGray.cgColor
         self.view.addSubview(lineView)
        
        filterContacts = contacts
        searchContacts.backgroundColor = principalColor
        searchContacts.placeholder = "Buscar contacto"
        tableContacts.keyboardDismissMode = .onDrag
    }
    
    
    @IBAction func buttonBack(_ sender: UIButton) {
        
        
        
    }
    

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterContacts = []

        print(searchText)
        if searchText == "" {
            filterContacts = contacts
            print("No hay busqueda")
        }else{
            for contact in contacts {
                if contact.name.lowercased().contains(searchText.lowercased()) || contact.bank.lowercased().contains(searchText.lowercased()) || contact.number.lowercased().contains(searchText.lowercased()){
                    
                    filterContacts.append(contact)
                    
                }
            }
        }
        self.tableContacts.reloadData()
    }
    
}

extension BASASearchContactsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterContacts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
            return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableContacts.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath) as? BASAContactosTableViewCell
        
        cell?.contactName.text = filterContacts[indexPath.row].name
        cell!.contactBank.text = filterContacts[indexPath.row].bank
        cell!.contactNumber.text = filterContacts[indexPath.row].number
        
        return cell!
    }

}

extension BASASearchContactsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(filterContacts[indexPath.row].name)
        print(filterContacts[indexPath.row].bank)
        print(filterContacts[indexPath.row].number)
    }
    
}