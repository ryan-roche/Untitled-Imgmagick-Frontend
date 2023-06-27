//
//  ContentView.swift
//  Untitled Imgmagick Frontend
//
//  Created by Ryan Roche on 6/26/23.
//

import SwiftUI

struct magickOperation: Hashable {
    let name: String
    let imageName: String
}

struct selectedImageFile: Hashable {
    let filename: String
    let path: String
}

struct ContentView: View {
    let operations: [magickOperation] = [
        .init(name: "Convert", imageName: "globe"),
        .init(name: "Convert", imageName: "globe"),
        .init(name: "Convert", imageName: "globe"),
        .init(name: "Convert", imageName: "globe"),
        .init(name: "Convert", imageName: "globe")
    ]
    
    var body: some View {
        List(operations, id: \.self) {operation in
            HStack(content: {
                Image(systemName: operation.imageName)
                    .foregroundColor(Color.accentColor)
                Text(operation.name)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
