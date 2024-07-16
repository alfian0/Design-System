//
//  SwiftUIView.swift
//  
//
//  Created by alfian on 16/07/24.
//

import SwiftUI

public struct GridStack<T: Identifiable, Content: View>: View {
    let axis: Axis.Set
    let dividedBy: Int
    let rows: Int
    let remainder: Int
    let models: [T]
    let verticalSpacing: CGFloat
    let horizontalSpacing: CGFloat
    let verticalPadding: CGFloat
    let horizontalPadding: CGFloat
    @ViewBuilder let content: (T) -> Content
    
    public init(axis: Axis.Set, dividedBy: Int = 1, models: [T], verticalSpacing: CGFloat = 8, horizontalSpacing: CGFloat = 8, verticalPadding: CGFloat = 8, horizontalPadding: CGFloat = 8, @ViewBuilder content: @escaping (T) -> Content) {
        self.axis = axis
        self.dividedBy = dividedBy == 0 ? 1 : dividedBy
        self.models = models
        self.rows = Int(ceil(Double(models.count) / Double(self.dividedBy)))
        self.remainder = models.count % self.dividedBy
        self.content = content
        self.verticalSpacing = verticalSpacing
        self.horizontalSpacing = horizontalSpacing
        self.verticalPadding = verticalPadding
        self.horizontalPadding = horizontalPadding
    }
    
  public var body: some View {
        ScrollView(axis, showsIndicators: false) {
            let layout = axis == .vertical ? AnyView(verticalLayout) : AnyView(horizontalLayout)
            layout
        }
    }
    
    private var verticalLayout: some View {
        VStack(alignment: .leading, spacing: verticalSpacing) {
            ForEach(0..<rows, id: \.self) { row in
                rowView(row: row)
            }
        }
        .padding(.horizontal, verticalPadding)
    }
    
    private var horizontalLayout: some View {
        HStack(spacing: horizontalSpacing) {
            ForEach(0..<rows, id: \.self) { row in
                rowView(row: row)
            }
        }
    }
    
    private func rowView(row: Int) -> some View {
        let isSingleColumn = dividedBy == 1
        return Group {
            if isSingleColumn {
                singleColumnView(row: row)
            } else {
                multiColumnView(row: row)
            }
        }
    }
    
    private func singleColumnView(row: Int) -> some View {
        content(models[row])
            .frame(maxWidth: .infinity)
            .padding(.leading, row == 0 && axis == .horizontal ? horizontalPadding : 0)
            .padding(.trailing, row == models.count-1 && axis == .horizontal ? horizontalPadding : 0)
    }
    
    private func multiColumnView(row: Int) -> some View {
        let lastRow = row == rows - 1
        return Group {
            if axis == .vertical {
                HStack(spacing: horizontalSpacing) {
                    columnViews(for: row, lastRow: lastRow)
                }
            } else {
                VStack(spacing: verticalSpacing) {
                    columnViews(for: row, lastRow: lastRow)
                }
            }
        }
    }
    
    private func columnViews(for row: Int, lastRow: Bool) -> some View {
        ForEach(0..<dividedBy, id: \.self) { column in
            if lastRow && column >= remainder && remainder != 0 {
                Spacer()
                    .frame(maxWidth: .infinity)
            } else {
                content(models[(row * dividedBy) + column])
                    .frame(maxWidth: .infinity)
                    .padding(.leading, row == 0 && axis == .horizontal ? horizontalPadding : 0)
                    .padding(.trailing, row == dividedBy && axis == .horizontal ? horizontalPadding : 0)
            }
        }
    }
}
