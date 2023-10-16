//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import Day4_Sources
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
        .background(content: { Color(hex: "#F5F5F4") })
        .modifier(GRModifier())
    }
}

struct GRModifier: ViewModifier {
    func body(content: Content) -> some View {
        GeometryReader { proxy in
            content
                .frame(width: proxy.size.width, height: proxy.size.height)
        }
        .frame(width: 372, height: 750)
    }
}

PlaygroundPage.current.setLiveView(TodayView())
