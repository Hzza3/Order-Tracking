//
//  circularProgressView.swift
//  Order Tracking
//
//  Created by Ahmed Hazzaa on 30/04/2024.
//

import SwiftUI


struct CircularProgressView: View {
  let progress: CGFloat
    let eta: Int
  var body: some View {
    ZStack {
      // Background for the progress bar
      Circle()
        .stroke(lineWidth: 5)
        .opacity(0.1)
        .foregroundColor(.black)

      // Foreground or the actual progress bar
      Circle()
        .trim(from: 0.0, to: min(progress, 1.0))
        .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
        .foregroundColor(.black)
        .rotationEffect(Angle(degrees: 270.0))
        .animation(.linear, value: progress)
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0.0) {
            Text("\(eta)")
                .font(.caption)
            Text("Mins")
                .font(.caption)
        }
       
    }
  }
}

#Preview {
    CircularProgressView(progress: 0.6, eta: 15)
}
