import Foundation
import SwiftUI

public struct MainChatView: View {
    private let textMessages: [String] = textMessagesGlobal
    public init() {}
    
    public var body: some View {
        LazyVStack {
            ForEach(0..<textMessages.count) { index in
                TextMessageView(message: textMessages[index], alignment: index%2 == 0 ? .leading : .trailing)
            }
        }
    }
}

let textMessagesGlobal = [
"I'm doing well, thank you! How about you?",
"I'm good. What did you do over the weekend?",
"I just relaxed at home and caught up on some reading. How about you?",
"I went hiking with some friends. We had a great time.",
"That sounds like a lot of fun! Enjoying outdoors!",
"Yes, I love being in nature. It's so refreshing.",
"Nature can be very rejuvenating. Any outdoor adventures recently?"
]
