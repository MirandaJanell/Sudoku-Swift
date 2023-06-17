//
//  ContentView.swift
//  Sudoku-Swift
//
//  Created by Miranda Ragland on 2023-06-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let groupBorder = 3.0
        let innerBorder = 1.5
        let cellSize = 120.0
        
        let bgColors = [
            Color.red, Color.orange, Color.yellow,
            Color.green, Color.blue, Color.purple,
            Color.pink, Color.cyan, Color.mint
        ]
        
        Grid(horizontalSpacing: groupBorder, verticalSpacing: groupBorder) {
            ForEach(0..<3) { groupRow in
                GridRow {
                    ForEach(0..<3) { groupCol in
                        Grid(horizontalSpacing: innerBorder, verticalSpacing: innerBorder) {
                            ForEach(0..<3) { innerRow in
                                GridRow {
                                    ForEach(0..<3) { innerCol in
                                        Rectangle()
                                    }
                                }
                            }
                        }
                        .frame(width:cellSize, height: cellSize)
                        .foregroundColor(bgColors[groupRow * 3 + groupCol])
                    }
                }
            }
        }
        .padding(groupBorder * 2)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
