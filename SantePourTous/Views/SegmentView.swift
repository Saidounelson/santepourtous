//
//  SegmentView.swift
//  SantePourTous
//
//  Created by Saidou on 01/07/2022.
//

import SwiftUI

struct SegmentView: View {
    @State private var mySelection = "New"
    var options = ["Existe","New"]
    var body: some View {
        VStack {
            Picker("", selection: $mySelection){
                ForEach(options, id: \.self){
                    Text($0)
                }
            }.pickerStyle(.segmented)
        }.padding()
        if (mySelection == "Existe"){
            formView1()
        }else{
            formView2()
        }
    }
}


struct formView1: View {
    var body: some View {
        VStack {
            Text("Hello, Form 1!").foregroundColor(.black)
        }
    }
}

struct formView2: View {
    var body: some View {
        VStack {
            Text("Hello, Form 2!").foregroundColor(.black)
        }
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
    }
}
