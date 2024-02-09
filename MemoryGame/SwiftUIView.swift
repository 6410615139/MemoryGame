//
//  SwiftUIView.swift
//  MemoryGame
//
//  Created by Supakrit Nithikethkul on 9/2/2567 BE.
//

//import SwiftUI
//
//struct AspectGrid<Item, ItemView>: View {
//    var items: [Item]
//    var aspectRatio = 1 as CGFloat
//    
//    var body: some View {
//        GeometryReader { geometry in
//            let gridItemSize = gridItemWidthThatFits(
//                count: items.count,
//                size: geometry.size,
//                atAspectRatio: aspectRatio
//            )
//        }
//    } // end body
//    
//    func gridItemWidthThatFits(count: Int, size: CGSize, atAspectRatio aspectRatio: CGFloat) -> CGFloat {
//        var count = CGFloat(count)
//        var columnCount = 1.0
//        repeat {
//            let width = size.width / columnCount
//            let height = width / aspectRatio
//            
//            let rowCount = (count / columnCount).rounded(.up)
//            if rowCount * height < size.height {
//                return width
//            }
//            
//            columnCount += 1
//        } while columnCount < count
//        
//        return
//    } // end gridItemWidthThatFits
//    
//    
//    
//} // end AspectGrid
