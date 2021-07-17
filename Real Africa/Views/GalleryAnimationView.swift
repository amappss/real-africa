//
//  GalleryAnimationView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/17/21.
//

import SwiftUI

struct GalleryAnimationView: View {
    @State private var isAnimating = false
    private let circles = Int.random(in: 12...16)
    
    private func randomSize() -> CGFloat{
        return CGFloat.random(in: 100.0...256.0)
    }
    private func randomPosition(max: CGFloat) -> CGFloat{
        return CGFloat.random(in: 0...max)
    }
    private func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.025...2.0)
    }
    private func randomSpeed() -> Double {
        return Double.random(in: 0.2...1)
    }
    private func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0 ..< circles) { item in
                Circle()
                    .fill(Color.gray.opacity(0.15))
                    .frame(width: randomSize(), height: randomSize(), alignment: .center)
                    .scaleEffect(isAnimating ? randomScale() : 1.0)
                    .position(x: randomPosition(max: geometry.size.width), y: randomPosition(max: geometry.size.height))
                    .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                    )
                    .onAppear(perform: {
                        isAnimating = true
                    })
            }
        }
        .drawingGroup()
        
    }
}

struct GalleryAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryAnimationView()
    }
}
