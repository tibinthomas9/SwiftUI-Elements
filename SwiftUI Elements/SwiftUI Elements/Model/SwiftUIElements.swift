//
//  SwiftUIElements.swift
//  SwiftUI Elements
//
//  Created by Tibin Thomas on 2024-04-15.
//

import Foundation



//struct SwiftUISectionElement: Codable {
//    var sectionName: String
//    var elements: [SwiftUIElement]
//    
//}
//
//struct SwiftUIElement: Codable {
//    var name: String
//    var description: String
//    
//}

enum SwiftUIElement {
    enum Section: String, Codable, CaseIterable {
        case userInterface = "User Interface"
        case viewsAndControls = "Views and Controls"
        case gestures = "Gestures"
        case layoutViews = "Layout Views"
        case presentation = "Presentation"
        case layoutSupport = "Layout Support"
        
        var elements: [Element] {
            switch self {
            case .userInterface:
                return [
                    .text, .image, .button, .picker, .progressView
                ]
            case .viewsAndControls:
                return [
                    .textField, .slider, .toggle, .stepper, .datePicker
                ]
            case .gestures:
                return [
                    .tapGesture, .longPressGesture, .dragGesture, .rotationGesture, .magnificationGesture
                ]
            case .layoutViews:
                return [
                    .vStack, .hStack, .zStack, .scrollView, .navigationView
                ]
            case .presentation:
                return [
                    .implicitAnimation, .explicitAnimation
                ]
            case .layoutSupport:
                return [
                    .spacer, .divider, .padding, .alignmentGuides, .frame
                ]
            }
        }
    }
    
    enum Element: String, Codable, CaseIterable {
        case text, image, button, picker, progressView
        case textField, slider, toggle, stepper, datePicker
        case tapGesture, longPressGesture, dragGesture, rotationGesture, magnificationGesture
        case vStack, hStack, zStack, scrollView, navigationView
        case implicitAnimation, explicitAnimation
        case spacer, divider, padding, alignmentGuides, frame
        
        var description: String {
            switch self {
            case .text: return "Displays one or more lines of read-only text with formatting support."
            case .image: return "Displays an image from various data sources, with support for resizing and rendering modes."
            case .button: return "A control that triggers an action when interacted with, customizable with labels and styles."
            case .picker: return "Presents a list of mutually exclusive options for the user to choose from."
            case .progressView: return "Displays the progress of a task or process, with customizable styles and animations."
            case .textField: return "A control that displays an editable text interface, with support for various keyboard types and input formatting."
            case .slider: return "A control that displays a slider to select a value from a range, with customizable appearance and behavior."
            case .toggle: return "A control that displays a switch to toggle between two states, with customizable labels and styles."
            case .stepper: return "A control that increments or decrements a value with customizable step sizes and styles."
            case .datePicker: return "A control that allows the user to select a date or date range, with various display modes and styles."
            case .tapGesture: return "Recognizes tapping gestures on a view, with customizable actions and modifiers."
            case .longPressGesture: return "Recognizes long press gestures on a view, with customizable actions and modifiers."
            case .dragGesture: return "Recognizes dragging gestures on a view, with customizable actions and modifiers."
            case .rotationGesture: return "Recognizes rotation gestures on a view, with customizable actions and modifiers."
            case .magnificationGesture: return "Recognizes pinch-to-zoom gestures on a view, with customizable actions and modifiers."
            case .vStack: return "A vertical stack that arranges its child views in a vertical line, with customizable spacing and alignment."
            case .hStack: return "A horizontal stack that arranges its child views in a horizontal line, with customizable spacing and alignment."
            case .zStack: return "A view that overlays its child views on top of each other, with control over their positioning and layering."
            case .scrollView: return "A scrollable view that displays its content within a bounded frame, with various scroll behavior options."
            case .navigationView: return "Provides a hierarchical navigation structure for presenting different views, with customizable navigation bars and transitions."
            case .implicitAnimation: return "Automatically applies smooth animations to view changes, with customizable timing and behavior."
            case .explicitAnimation: return "Allows you to control and customize animations for specific view changes, with various timing curves and options."
            case .spacer: return "A flexible space that expands to fill the remaining space in a layout."
            case .divider: return "A visual separator that can be used to divide sections or views."
            case .padding: return "Adds padding (spacing) around a view or group of views."
            case .alignmentGuides: return "Guides that help align views within their parent container, such as leading, trailing, center, etc."
            case .frame: return "Allows you to set the size and positioning of a view relative to its parent."
            }
        }
    }
}
