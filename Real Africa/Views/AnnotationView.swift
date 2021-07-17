//
//  AnnotationView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/17/21.
//

import SwiftUI

struct AnnotationView: View {
    let location: Location
    @State var animation: Double = 0.0
    var body: some View {
        ZStack {
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor,lineWidth: 2)
                .frame(width:52,height:52,alignment: .center)
                .scaleEffect( 1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width:48,height:48)
                .clipShape(Circle())
        }
        .onAppear(){
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1.0
            }
        }
    }
}

struct AnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        AnnotationView(location: LOCATIONS[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
