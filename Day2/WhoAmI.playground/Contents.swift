//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct CustomNavButton: View {
    private let receiverName: String
    
    init(receiverName: String = "Teju") {
        self.receiverName = receiverName
    }
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "chevron.backward")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            
            ZStack {
                Color.orange
                Text(String(receiverName.capitalized.first ?? Character("A")))
            }
            .frame(width: 30, height: 30)
            .cornerRadius(8)

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

struct InputActionView: View {
    @State var inputMessage: String = ""
    var body: some View {
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

struct TodayView: View {
    var body: some View {
        return VStack(spacing: 8) {
            CustomNavButton()
            Divider().frame(height: 1)
            Spacer()
            Text("Getting this ready soon.\nStatic as of now.")
                .multilineTextAlignment(.center)
            Spacer()
            InputActionView()
        }
        .padding([.leading, .trailing, .top], 16)
        .frame(width: 372, height: 810)
        .background(content: { Color(hex: "#F5F5F4") })
    }
}

extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let length = hexSanitized.count

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0

        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0

        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}


PlaygroundPage.current.setLiveView(TodayView())
