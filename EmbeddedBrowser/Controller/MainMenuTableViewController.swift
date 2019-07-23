// (C) 2019, Ralf Ebert - iOS Example Project: EmbeddedBrowser
// License: https://opensource.org/licenses/0BSD

import SafariServices
import UIKit

class MainMenuTableViewController: UITableViewController {

    enum Rows: Int {
        case WKWebView
        case SFSafariViewController
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if indexPath.row == Rows.SFSafariViewController.rawValue {
            self.showSafari()
        }

    }

    @IBAction func showSafari() {
        let url = URL(string: "https://duckduckgo.com/")!
        let controller = SFSafariViewController(url: url)
        self.present(controller, animated: true, completion: nil)
    }

}
