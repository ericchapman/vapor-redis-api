public struct RedisApiType {
    
    /// Enumeration for defining the aggregate
    ///
    public enum Aggregate {
        case min
        case max
        case sum
        
        var string: String {
            switch self {
            case .min:
                return "MIN"
            case .max:
                return "MAX"
            case .sum:
                return "SUM"
            }
        }
    }
    
    /// Enumeration for double minimum entries
    ///
    public enum DoubleMin {
        case min
        case value(Double)
        
        var string: String {
            switch self {
            case .min:
                return "-inf"
            case .value(let number):
                return "\(number)"
            }
        }
    }
    
    /// Enumeration for double maximum entries
    ///
    public enum DoubleMax {
        case max
        case value(Double)
        
        var string: String {
            switch self {
            case .max:
                return "+inf"
            case .value(let number):
                return "\(number)"
            }
        }
    }

    /// Enumeration for lexical minimum entries
    ///
    public enum LexicalMin {
        case min
        case exclusive(String)
        case inclusive(String)
        
        var string: String {
            switch self {
            case .min:
                return "-"
            case .exclusive(let character):
                return "(\(character)"
            case .inclusive(let character):
                return "[\(character)"
            }
        }
    }
    
    /// Enumeration for lexical maximum entries
    ///
    public enum LexicalMax {
        case max
        case exclusive(String)
        case inclusive(String)
        
        var string: String {
            switch self {
            case .max:
                return "+"
            case .exclusive(let character):
                return "(\(character)"
            case .inclusive(let character):
                return "[\(character)"
            }
        }
    }
}
