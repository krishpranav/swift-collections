//
//  ContentView.swift
//  BasicAnimation
//
//  Created by Pranav on 30/07/22.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animation
    @State private var isFlipped = false

    var body: some View {
        HStack {
            if isFlipped {
                Circle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
                .matchedGeometryEffect(id: "Shape", in: animation)
                Text("Click here!")
                .matchedGeometryEffect(id: "Text", in: animation)
            } else {
                Text("Click here!!")
                .matchedGeometryEffect(id: "Text", in: animation)
                Circle()
                .fill(Color.black)
                .frame(width: 50, height: 50)
                .matchedGeometryEffect(id: "Shape", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                self.isFlipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
