//
//  StrokedShape.swift
//  AnalogClock
//
//  Created by Justin Reusch on 5/30/20.
//  Copyright © 2020 Justin Reusch. All rights reserved.
//

import SwiftUI

/// A SwiftUI convenience wrapper to allow you to set both a foreground color and stroke for a shape.
@available(iOS 13.0, *)
@available(OSX 10.15, *)
public struct StrokedShape<ShapeContent>: View where ShapeContent: Shape {
    
    /// Foreground or fill color for the shape
    public var foreground: Color?
    
    /// Outline/stroke color
    public var outlineColor: Color?
    
    /// Width/thickness of the outline/stroke
    public var outlineWidth: CGFloat = 1
    
    /// View builder that produces a shape
    public var shape: () -> ShapeContent
    
    // Initializer ---------------------------- /
    
    /**
     Inits with percentage and scale
     - Parameter foreground: Foreground or fill color for the shape
     - Parameter outlineColor: Outline/stroke color
     - Parameter outlineWidth: Width/thickness of the outline/stroke
     - Parameter shape: View builder that produces a shape
     */
    @inlinable public init(
        foreground: Color? = nil,
        outlineColor: Color? = nil,
        outlineWidth: CGFloat = 1,
        @ViewBuilder shape: @escaping () -> ShapeContent
    ) {
        self.foreground = foreground
        self.outlineColor = outlineColor
        self.outlineWidth = outlineWidth
        self.shape = shape
    }
    
    // Body ---------------------------- /
    
    public var body: some View {
        let shape = self.shape()
        return VStack {
            shape
                .foregroundColor(foreground)
                .overlay(outlineColor.map { shape.stroke($0, lineWidth: outlineWidth) })
        }
    }
}
