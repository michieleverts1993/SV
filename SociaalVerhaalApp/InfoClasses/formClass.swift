//
//  formClass.swift
//  SociaalVerhaalApp
//
//  Created by Michiel Everts on 02/12/2018.
//  Copyright © 2018 Michiel Everts. All rights reserved.
//

import Foundation
import UIKit

class Persoon {
    var voornaam: String
    var achternaam: String
    var geboortedatum: Int
    var bsnNummer: Int
    var aantalInwonenMinderjarige: Int
    var inwonendePartner: Int
    var gegevensInwonendePartner: InwonendePartner?
    var telefoonnummer: Int
    var mailAdres: String
    var fotoBesluit: UIImage
    var redenTegenBesluit: String
    var redenTegenbesluitExtraAantekening: String
    var machtigingSociaalVerhaal: String
    

    init(voornaam: String, achternaam: String, geboortedatum: Int, bsnNummer: Int, aantalInwonenMinderjarige: Int,inwonendePartner: Int, telefoonnummer: Int, mailAdres: String, fotoBesluit: UIImage, redenTegenBesluit: String, redenTegenbesluitExtraAantekening: String, machtigingSociaalVerhaal: String) {
        self.voornaam = voornaam
        self.achternaam = achternaam
        self.geboortedatum = geboortedatum
        self.bsnNummer = bsnNummer
        self.aantalInwonenMinderjarige = aantalInwonenMinderjarige
        self.inwonendePartner = inwonendePartner
        self.telefoonnummer = telefoonnummer
        self.mailAdres = mailAdres
        self.fotoBesluit = fotoBesluit
        self.redenTegenBesluit = redenTegenBesluit
        self.redenTegenbesluitExtraAantekening = redenTegenBesluit
        self.machtigingSociaalVerhaal = machtigingSociaalVerhaal
    }
}

class InwonendePartner {
    var voornaam: String
    var achternaam: String
    var geboortedatum: Int
    var bsnNummer: Int
    var telefoonnummer: Int
    var mailAdres: String
    
    init(voornaam: String, achternaam: String, geboortedatum: Int, bsnNummer: Int, telefoonnummer: Int, mailAdres: String ) {
        self.voornaam = voornaam
        self.achternaam = achternaam
        self.geboortedatum = geboortedatum
        self.bsnNummer = bsnNummer
        self.telefoonnummer = telefoonnummer
        self.mailAdres = mailAdres
    }
}
