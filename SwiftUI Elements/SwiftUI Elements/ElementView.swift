//
//  ElementView.swift
//  SwiftUI Elements
//
//  Created by Tibin Thomas on 2024-04-15.
//

import SwiftUI

struct ElementView: View {
    let element: SwiftUIElement.Element
    
    var body: some View {
        ScrollView {
            VStack {
                Text(element.description)
                Text("Preview")
                    .font(.title2.bold())
                previewView
            }
        }
    }
    
    var previewView: some View {
        switch element {
        case .text:
            return AnyView(Text("sample"))
        default:
            return AnyView(TextField("placeholder", text: .constant("content")))
        }
    }
}

#Preview {
    ElementView(element: .button)
}
