import Foundation
import SwiftUI

public struct InputActionView: View {
    @State var inputMessage: String

    public init(inputMessage: String = "") {
        self.inputMessage = inputMessage
    }

    public var body: some View {
        ZStack {
            Color.white
                .frame(height: 36)
                .cornerRadius(16)
            
            HStack {
                Image(systemName: "camera.circle.fill")
                    .resizable()
                    .tint(Color.blue.opacity(0.8))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                TextField(text: $inputMessage, prompt: Text("Send Message..").font(.subheadline)) {
                }
                
                Image(systemName: "face.smiling")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                
                Image(systemName: "photo.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
            }
            .padding([.leading, .trailing], 6)
        }
        .frame(height: 40)
        .padding([.top, .bottom], 8)
    }
}
