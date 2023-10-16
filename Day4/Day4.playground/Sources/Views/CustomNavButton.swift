import Foundation
import SwiftUI

public struct CustomNavButton: View {
    private let receiverName: String
    
    public init(receiverName: String = "Teju") {
        self.receiverName = receiverName
    }
    
    public var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "chevron.backward")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            
            ProfileImageView(character: String(receiverName.capitalized.first ?? Character("A")), color: Color.orange)

            Text(receiverName)

            Spacer()

            Image(systemName: "location.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)

            Image(systemName: "ellipsis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .rotationEffect(.degrees(90))
        }
        .frame(height: 40)
    }
}

struct ProfileImageView: View {
    let character: String
    let color: Color
    let size: CGFloat
    init(character: String, color: Color, size: CGFloat = 30) {
        self.character = character
        self.color = color
        self.size = size
    }
    var body: some View {
        ZStack {
            color
            Text(character)
        }
        .frame(width: size, height: size)
        .cornerRadius(8)
    }
}
