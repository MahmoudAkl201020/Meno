//
//  ContactTable.swift
//  Meno
//
//  Created by Mahmoud Akl on 10/25/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import Foundation

struct ContactTable {
    
    var firstName : String!
    var middleName : String!
    var lastName : String!
    var prefixName : String!
    var suffixName : String!
    
    var mobileNumber = [String]()

    var homeAddress : String!
    var workAddress : String!
    var otherAddress : String!
    
    var jobTitle : String!
    var department : String!
    var company : String!
    
    //    var homeNumber : String!
    //    var workNumber : String!
    //    var iphoneNumber : String!
    
    //    var mainNumber : String!
    //    var homeFax : String!
    //    var workFax : String!
    //    var pager : String!
    //    var otherNumber : String!
    
    //    var homeEmail : String!
    //    var workEmail : String!
    //    var icloudEmail : String!
    //    var otherEmail : String!
    //
    //    var homepageURL : String!
    //    var homeURL : String!
    //    var workURL : String!
    //    var otherURL : String!
}

struct MobileTable{
    var mobileNumber : String!
}
