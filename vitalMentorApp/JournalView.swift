import SwiftUI

struct JournalEntry: Identifiable {
    let id = UUID()
    let date: Date
    let entryText: String
}

struct JournalView: View {
    @State private var entryText: String = ""
    @State private var entries: [JournalEntry] = []
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Pour your HEART out")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(.system(size: 55))
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .padding (.bottom, 30)
                    .padding(.trailing, 15.0)
                
                
                HStack {
                    TextEditor(text: $entryText)
                        .frame(height: 200)
                        .padding(.horizontal, 10)
                    Button("Submit", action: submitEntry)
                        .padding(.vertical, 10)
                        .frame(width: 70.0, height: 40.0)
                        .foregroundColor(.black)
                        .background(Color(hue: 0.761, saturation: 0.304, brightness: 0.888))
                        .cornerRadius(10)

                }
                .padding(.horizontal, 20)
                
                Divider()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(entries) { entry in
                            VStack(alignment: .leading) {
                                Text(entry.dateFormatted)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Text(entry.entryText)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                }
            }
        }
        .padding(2.0)
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0.95, green: 0.92, blue: 0.98),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.8, green: 0.75, blue: 0.95),
                Color(red: 0.85, green: 0.78, blue: 0.94),
                Color(red: 0.95, green: 0.92, blue: 0.98)
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        )
    }
    
    func submitEntry() {
        guard !entryText.isEmpty else { return }
        
        let newEntry = JournalEntry(date: Date(), entryText: entryText)
        entries.append(newEntry)
        entryText = ""
    }
}

extension JournalEntry {
    var dateFormatted: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
