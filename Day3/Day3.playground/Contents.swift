//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import Day3_Sources
import PlaygroundSupport

struct TodayView: View {
    var body: some View {
        return ScrollView {
            VStack(spacing: 8) {
                CustomNavButton()
                    .padding([.leading, .trailing, .top], 16)
                Divider().frame(height: 1)
                //            Spacer()
                //            Text("Getting this ready soon.\nStatic as of now.")
                //                .multilineTextAlignment(.center)
                //            TextMessageView(message: "Hey Text", alignment: .leading)
                MainChatView()
                    .padding(8)
                //            Spacer()
                InputActionView()
                    .padding([.leading, .trailing, .top], 16)
            }
        }
        .frame(width: 372, height: 750)
        .background(content: { Color(hex: "#F5F5F4") })
    }
}


PlaygroundPage.current.setLiveView(TodayView())
