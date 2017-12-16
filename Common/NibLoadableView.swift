import Foundation

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView {
    static var nibName: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
