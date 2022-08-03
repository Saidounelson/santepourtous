//
//  ChatsRow.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct ChatsRow: View {
    var chat:Chats
    var body: some View {
        
        HStack(spacing:15){
            
            ZStack(alignment: .bottomTrailing) {
                Image(chat.user.avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 60, maxHeight: 100)
                .clipShape(Circle())
                Circle()
                    .foregroundColor(chat.onLine ? .primaryColor : .clear)
                    .frame(width: 15, height: 15)
                    
                
            }
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(chat.user.name)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text(chat.content)
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }).frame(maxWidth: .infinity, alignment: .leading)
            Text(chat.heure)
                .font(.caption)
                .foregroundColor(.gray)
        }.padding(.horizontal)
    }
}

struct ChatsRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatsRow(chat: Chats(id: 5001, content: "Bonjour", user: Chats.Users(id: 1001, name: "Saidou", avatar: "docteur1"), heure: "15:09", onLine: true))
        //ContentView()
    }
}
