public protocol JSEngine {
    associatedtype JSRuntime: JavaScript.JSRuntime
    static func createRuntime() throws -> JSRuntime
}

public protocol JSRuntime {
    associatedtype JSContext: JavaScript.JSContext
    func createContext() -> JSContext
}

public protocol JSContext {
    associatedtype JSValue: JavaScript.JSValue
    func evaluate(_ script: String) throws -> JSValue
}

public protocol JSValue {
    func toString() throws -> String

    var isNull: Bool { get }
    var isUndefined: Bool { get }
    var isBool: Bool { get }
    var isNumber: Bool { get }
    var isString: Bool { get }
    var isObject: Bool { get }
}
