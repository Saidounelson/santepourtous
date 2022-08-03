//
//  BotResponse.swift
//  SantePourTous
//
//  Created by Saidou on 30/06/2022.
//

import Foundation
func getBotResponse(message:String) -> String{
    let tempMessage = message.lowercased()
    if tempMessage.contains("bonjour"){
        return "Bonjour, Que puis-je faire pour vous ?"
    }else if tempMessage.contains("Comment ça va ?"){
        return "Je vais bien merci et vous"
    }else {
        return "je vous remercie pour votre message. je suis absents et ne pouve pas vous répondre pour le moment. Merci de m' avoir contactés"
    }
}
