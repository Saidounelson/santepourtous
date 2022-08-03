//
//  TestNavBar.swift
//  SantePourTous
//
//  Created by Saidou on 30/06/2022.
//

import SwiftUI

struct TestNavBar: View {
    init(){
        navigationBarAppearance()
    }
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Navigation iOS 15")
                .navigationBarTitleDisplayMode(.inline)
                /*.toolbar{
                    ToolbarItem(placement:
                    ToolbarItemPlacement
                        .navigationBarLeading){
                            Button {
                                print("")
                            } label: {
                                Label("Refresh",systemImage: "arrow.clockwise")
                            }
                        }
                    ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing){
                        Button {
                            print("")
                        } label: {
                            Label("Send",systemImage: "paperplane.fill")
                        }

                    }
                }*/
        }
    }
}

struct TestNavBar_Previews: PreviewProvider {
    static var previews: some View {
        TestNavBar()
    }
}
