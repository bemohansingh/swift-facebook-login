import FacebookCore

public class FacebookAuth {
    
    /// shared insance
    public static let shared = FacebookAuth()
    private init() {}
    
    /// call this function to configure the FacebookAuth package during initial launch
    /// - Parameters:
    ///   - application: UIApplication
    ///   - launchOptions: launch options
    public func configure(_ application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    /// call this from screne delegate open url contexts
    /// - Parameters:
    ///   - scene: scene parameter in scene delegate open url contexts function
    ///   - URLContexts: urlContexts parameter in scene delegate open url contexts function
    /// - Returns: Bool
    public func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) -> Bool {
        guard let url = URLContexts.first?.url else { return false }
        return ApplicationDelegate.shared.application(UIApplication.shared, open: url, options: [:])
    }
    
}
