// keybaord

// [M[ HEAD_BEGIN ]M]
// [M[ HEAD_FINISH ]M]

var KEYCODES : Map<Int, Array<String>> = [
    65 => ["a", "ھ", ""],
    66 => ["b", "ب", ""],
    67 => ["c", "غ", ""],
    68 => ["d", "د", "ژ"],
    69 => ["e", "ې", ""],
    70 => ["f", "ا", "ف"],
    71 => ["g", "ە", "گ"],
    72 => ["h", "ى", "خ"],
    73 => ["i", "ڭ", ""],
    74 => ["j", "ق", "ج"],
    75 => ["k", "ك", "ۆ"],
    76 => ["l", "ل", "لا"],
    77 => ["m", "م", ""],
    78 => ["n", "ن", ""],
    79 => ["o", "و", ""],
    80 => ["p", "پ", ""],
    81 => ["q", "چ", ""],
    82 => ["r", "ر", ""],
    83 => ["s", "س", ""],
    84 => ["t", "ت", ""],
    85 => ["u", "ۇ", ""],
    86 => ["v", "ۈ", ""],
    87 => ["w", "ۋ", ""],
    88 => ["x", "ش", ""],
    89 => ["y", "ي", ""],
    90 => ["z", "ز", ""],
    186 => [";", "؛", ":"],
    188 => [",", "،", ">"],
    191 => ["/", "ئ", "؟"],
];

class Keyboard {


    public static function toAlphabet(alphabet : String, isSHiftPressed : Bool) : String {
        if (alphabet.length != 1) return null;
        var index = isSHiftPressed ? 2 : 1;
        for (_ => values in KEYCODES) {
            if (values[index] != alphabet) continue;
            return values[0];
        }
        return null;
    }

    public static function fromAlphabet(alphabet : String, isSHiftPressed : Bool) : String {
        if (alphabet.length != 1) return null;
        var index = isSHiftPressed ? 2 : 1;
        for (_ => values in KEYCODES) {
            if (values[0] != alphabet) continue;
            return values[index];
        }
        return null;
    }

}
