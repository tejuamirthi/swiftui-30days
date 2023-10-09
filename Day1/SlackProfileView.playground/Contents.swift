  
import Foundation
import SwiftUI
import PlaygroundSupport

extension CGFloat {
    static let headerImagePadding: CGFloat = 60
    static let normalPadding: CGFloat = 16
}

struct HeaderImageView: View {
    private let imageName: String
    init(imageName: String = ProfileView.profileImage) {
        self.imageName = imageName
    }
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: .headerImagePadding)
            Image(uiImage: UIImage(imageLiteralResourceName: imageName))
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
                .frame(width: .headerImagePadding)
        }

    }
}

struct NameStackView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: .normalPadding / 8) {
                Text("Teju")
                    .font(.title)
                    .bold()
                Text("Frontend iOS")
                    .font(.title3)
            }
            Spacer()
        }
        
    }
}

struct AvailabilityStackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .normalPadding / 4) {
            HStack {
                Image(systemName: "powersleep")
                Text("Away, notifications snoozed")
                Spacer()
            }
            HStack {
                Image(systemName: "calendar")
                Text("12:10 am local time")
                Spacer()
            }
        }
    }
}

struct MessageStackView: View {
    var body: some View {
        HStack {
            HStack(spacing: .normalPadding / 4) {
                Spacer()
                Image(systemName: "message")
                Text("Message")
                Spacer()
            }
            .frame(height: 30)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1))
            ZStack {
                HStack(spacing: .normalPadding / 8) {
                    Spacer()
                    Image(systemName: "headphones")
                    Text("Huddle")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image(systemName: "chevron.down")
                        .frame(width: 15, height: 15)
                        .padding(.trailing, 8)
                }
            }
            .frame(height: 30)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1))
            .padding(.leading, 4)
            HStack {
                Image(systemName: "ellipsis")
            }
            .frame(width: 30, height: 30)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1))
            .padding(.leading, 4)
        }
        .padding(.top, 8)
    }
}

struct NavBarStackView: View {
    var body: some View {
        HStack {
            Text("Profile")
            Spacer()
            Image(systemName: "xmark")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        return VStack(spacing: .normalPadding / 2) {
            NavBarStackView()
            Divider().frame(height: 1)
            HeaderImageView()
            NameStackView()
            AvailabilityStackView()
            MessageStackView()
            Spacer()
        }
        .padding([.leading, .trailing, .top], .normalPadding)
        .frame(width: 372, height: 810)
    }
    
    static var profileImage: String {
        return Bundle.main.paths(forResourcesOfType: "png", inDirectory: nil).last ?? String()
    }
}

PlaygroundPage.current.setLiveView(ProfileView())


