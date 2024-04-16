//
//  RootView.swift
//  SwiftUI Elements
//
//  Created by Tibin Thomas on 2024-04-15.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(SwiftUIElement.Section.allCases, id: \.self) { section in
                    let sectionElemets = section.elements
                    Section {
                        ForEach(sectionElemets, id: \.self) { item in
                            NavigationLink(value: item) {
                                Text(item.rawValue)
                            }
                            
                            
                        }
                    } header: {
                        Text(section.rawValue)
                    }

                    
                }
            }.navigationDestination(for: SwiftUIElement.Element.self) { element in
                ElementView(element: element)
            }
        }
    }
}

#Preview {
    RootView()
}
