import Foundation

public protocol StringRepresentable {
    var stringValue: String { get }
    init?(_ stringValue: String)
}

extension String: StringRepresentable {
    public var stringValue: String {
        return self
    }

    public init?(_ stringValue: String) {
        self = stringValue
    }
}

public protocol DoubleRepresentable {
    var doubleValue: Double { get }
    init?(_ doubleValue: Double)
}

extension Double: DoubleRepresentable {
    public var doubleValue: Double {
        return self
    }
}

public protocol IntRepresentable {
    var intValue: Int { get }
    init?(_ intValue: Int)
}

extension Int: IntRepresentable {
    public var intValue: Int {
        return self
    }
}

public protocol Int16Representable {
    var int16Value: Int16 { get }
    init?(_ int16Value: Int16)
}

extension Int16: Int16Representable {
    public var int16Value: Int16 {
        return self
    }
    public init?(_ int16Value: Int16) {
        self.init(Float(int16Value))
    }
}

public protocol DateRepresentable {
    var dateValue: Date { get }
    init?(_ dateValue: Date)
}

extension Date: DateRepresentable {
    public init?(_ dateValue: Date) {
        self.init(timeIntervalSince1970: dateValue.timeIntervalSince1970)
    }

    public var dateValue: Date {
        return self
    }
}

public protocol BoolRepresentable {
    var boolValue: Bool { get }
    init?(_ boolValue: Bool)
}

extension Bool: BoolRepresentable {
    public var boolValue: Bool {
        return self
    }
}

public protocol UuidRepresentable {
    var uuidValue: UUID { get }
    init?(_ uuidValue: UUID)
}

extension UUID: UuidRepresentable {
    public init?(_ uuidValue: UUID) {
        self = uuidValue
    }
    
    public var uuidValue: UUID {
        return self
    }
}
