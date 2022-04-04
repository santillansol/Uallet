import Foundation

class API {
    // closure: función tratada como variable, expresión lambda, función anónima, función literal
  
    static func login(_ usuario: String,
                      _ password: String,
                      onFinished callback: (Bool)->Void) {
        // asincrónico
        if usuario=="admin" && password=="12345" {
            callback(true)
        } else {
            callback(false)
        }
    }
    
}
