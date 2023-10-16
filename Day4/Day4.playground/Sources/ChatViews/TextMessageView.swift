import Foundation
import SwiftUI

public struct TextMessageView: View {
    private let message: String
    private let alignment: HorizontalAlignment
    
    public init(message: String, alignment: HorizontalAlignment) {
        self.message = message
        self.alignment = alignment
    }
    
    public var body: some View {
        return HStack {
            if alignment == .leading || alignment == .center {
                Spacer()
//                    .frame(minWidth: 32)
            } else {
                ProfileImageView(character: "T", color: Color.orange, size: 27)
//                Image(systemName: "person.circle.fill")
//                    .resizable()
//                    .frame(width: 20, height: 20)
            }
            VStack(alignment: alignment) {
                Text(message)
            }
            .padding(16)
            .background(alignment == .leading ? .white : .init(hex: "#DCF8C6")!)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(radius: 1)
            .padding(alignment == .leading ? .leading : .trailing, 32)
            if alignment == .trailing || alignment == .center {
                Spacer()
//                    .padding([.leading, .trailing])
//                    .frame(minWidth: 32)
            } 
//            else {
//                Image(systemName: "figure.walk.circle.fill")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//            }
        }
    }
}
