// (C) 2019, Ralf Ebert - iOS Example Project: EmbeddedBrowser
// License: https://opensource.org/licenses/0BSD

import UIKit
import WebKit

class WebViewController: UIViewController {

    var webView: WKWebView!

    override func loadView() {
        self.webView = WKWebView()
        self.view = self.webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.load(URLRequest(url: URL(string: "https://www.duckduckgo.com/")!))
    }

}
