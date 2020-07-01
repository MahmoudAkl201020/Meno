//
//  ViewController.swift
//  Meno
//
//  Created by Mahmoud Akl on 9/30/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit
import Contacts
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchBtn: UIButton!
    
    let defaults = UserDefaults.standard
    var contactTable = ContactTable()
    var contactaRR = [ContactTable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchContacts()
        
        print("App Started")
        
//        sendContacts()
        
        searchView.layer.cornerRadius = 20
        searchBtn.layer.cornerRadius = 20
        
    }
    
    private func fetchContacts(){
        print("Attempting to fetch contacts...")
        
        let store = CNContactStore()
        
//        var CNContactStoreDidChange: NSNotification.Name
        
        store.requestAccess(for: .contacts) { (granted, err) in
            
            if let err = err{
                print("Failed to request access: ", err)
                return
            }

            if granted{
                print("Access granted")
                
                let key = [CNContactGivenNameKey,
                           CNContactFamilyNameKey,
                           CNContactMiddleNameKey,
                           CNContactNamePrefixKey,
                           CNContactNameSuffixKey,
                           CNContactPostalAddressesKey,
                           CNContactJobTitleKey,
                           CNContactDepartmentNameKey,
                           CNContactOrganizationNameKey,
                           CNContactPhoneNumbersKey,
                           CNLabelPhoneNumberMain,
                           CNLabelPhoneNumberPager,
                           CNLabelPhoneNumberiPhone,
                           CNLabelPhoneNumberMobile,
                           CNLabelPhoneNumberHomeFax,
                           CNLabelPhoneNumberWorkFax,
                           CNLabelPhoneNumberOtherFax,
                           CNLabelHome,
                           CNLabelWork,
                           CNLabelOther]
                
                let request = CNContactFetchRequest(keysToFetch: key as [CNKeyDescriptor])
                
                do{
                    
                    //                    var contactTable = [ContactTable]()
                    
                    try store.enumerateContacts(with: request, usingBlock: { (contact, stopPointerIfYouWantToStopEnumerating) in
                        
                        //                        print("First Name : \(contact.givenName)")
                        //                        print("Middle Name : \(contact.middleName)")
                        //                        print("Last Name : \(contact.familyName)")
                        //                        print("Prefix Name : \(contact.namePrefix)")
                        //                        print("Suffix Name :\(contact.nameSuffix)")
                        //                        print("Job Title : \(contact.jobTitle)")
                        //                        print("Department : \(contact.departmentName)")
                        //                        print("Organization : \(contact.organizationName)")
                        
                        
                        var numberArray = [String]()
                        for number in contact.phoneNumbers {
                            let phoneNumber = number.value
                            numberArray.append(phoneNumber.stringValue)
                        }
                        
                        //                        print("Numbers : \(numberArray)")
                        
                        self.contactaRR.append(ContactTable(firstName: contact.givenName, middleName: contact.middleName, lastName: contact.familyName, prefixName: contact.namePrefix, suffixName: contact.nameSuffix, mobileNumber: numberArray, homeAddress: "", workAddress: "", otherAddress: "", jobTitle: contact.jobTitle, department: contact.departmentName, company: contact.organizationName))
                        //                        print(contactTable)
                    })
                    //                    print(self.contactaRR)
                    
                }catch let err{
                    print("Failed to enumerate contact...", err)
                }
            }else{
                print("Access Denied...")
            }
        }
    }
    //
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        self.searchTextField.resignFirstResponder()
        print("Search button tapped")
    }
    
    @IBAction func secondSearchBtnTapped(_ sender: Any) {
        self.searchTextField.resignFirstResponder()
        print("Second search button tapped")
    }
    //    override var preferredStatusBarStyle: UIStatusBarStyle{
    //        return .lightContent
    //    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func sendContacts() {
        let url = "http://menoent.com/api/receive-contacts"
        var contacts: [[String: Any]] = []
        for contact in contactaRR {
            let parameters : [String : Any] = [
                "FirstName" : contact.firstName,
                "MiddleName" : contact.middleName,
                "LastName" : contact.lastName,
                "PrefixaName" : contact.prefixName,
                "SuffixName" : contact.suffixName,
                "MobileNumber" : contact.mobileNumber,
                "JobTitle" : contact.jobTitle,
                "Company" : contact.company,
                "Department" : contact.department
            ]
            contacts.append(parameters)
            
        }
        
        let params : Parameters = ["contacts" : contacts]
        
        Alamofire.request(url, method: .post, parameters: params, encoding: JSONEncoding.default).responseJSON { (response) in
            switch response.result{
            case .success(let value):
                
                let json = JSON(value)
                
                print("Value :\(value)")
                print("Response :\(json)")
                //                print(params)
                
                
            case .failure(let error):
                print("Error :\(error.localizedDescription)")
            }
        }
        
    }
    
}


