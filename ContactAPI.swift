//
//  ContactAPI.swift
//  Contact
//
//  Created by Phi Hoang Huy on 2/15/19.
//  Copyright © 2019 Phi Hoang Huy. All rights reserved.
//

import Foundation
class ContactAPI {
    static func getContacts() -> [contact] {
        let contacts = [
            contact(name: "Kelly Goodwin", jobTitle: "Designer", country: "bo"),
            contact(name: "Mohammad Hussain", jobTitle: "SEO Specialist", country: "be"),
            contact(name: "John Young", jobTitle: "Interactive Designer", country: "af"),
            contact(name: "Tamilarasi Mohan", jobTitle: "Architect", country: "al"),
            contact(name: "Kim Yu", jobTitle: "Economist", country: "br"),
            contact(name: "Derek Fowler", jobTitle: "Web Strategist", country: "ar"),
            contact(name: "Shreya Nithin", jobTitle: "Product Designer", country: "az"),
            contact(name: "Emily Adams", jobTitle: "Editor", country: "bo"),
            contact(name: "Aabidah Amal", jobTitle: "Creative Director", country: "au"),
            ]
        return contacts
    }
}
private let contacts = ContactAPI.getContacts()

