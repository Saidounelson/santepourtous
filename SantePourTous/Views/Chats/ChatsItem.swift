//
//  ChatsItem.swift
//  SantePourTous
//
//  Created by Saidou on 28/06/2022.
//

import SwiftUI

struct ChatsItem: View {
    var chat:Chats
    @State private var messageText = ""
    @State var messages:[String] = ["Welcome"]
    var body: some View {
        VStack {
            ScrollView{
                //message
                ForEach(messages,id: \.self){message in
                    if message.contains("[USER]"){
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                        }
                    }else{
                        HStack{
                            Image(chat.user.avatar)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: 35,  maxHeight: 35)
                                .clipShape(Circle())
                                .offset(y:20)
                            Text(message  == "Welcome" ? chat.content:message)
                                .padding()
                                .background(.gray.opacity(0.15))
                                //.cornerRadius(10)
                                .clipShape(MessageBubbles())
                                .padding(.horizontal,5)
                                .padding(.bottom,5)
                            Spacer()
                        }
                    }
                }
            }.padding()
            HStack{
                Image(systemName: "camera.fill")
                    .resizable()
                    .frame(maxWidth:30, maxHeight:30)
                    .foregroundColor(.gray)
                Spacer()
                TextField("Message", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                    .onSubmit{
                    senMessage(message: messageText)
                }
                Button {
                    //SendMessage
                    senMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.primaryColor)
                }.font(.system(size: 26))
                    .padding(.horizontal,10)
            }.padding()
        }
    }
    
    func senMessage(message:String){
        withAnimation{
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            withAnimation{
                messages.append(getBotResponse(message: message))
            }
        }
    }
}

struct ChatsItem_Previews: PreviewProvider {
    static var previews: some View {
        
        ChatsItem(chat: Chats(id: 5001, content: "", user: Chats.Users(id: 1001, name: "", avatar: ""), heure: ""))
    }
}
