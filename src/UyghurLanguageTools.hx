
// UyghurLanguageTools

// [M[ HEAD_BEGIN ]M]
import Alphabets.LANG_KEYS;
import Alphabets.TYPES;
import Alphabets.NAMES;
// [M[ HEAD_FINISH ]M]

@:keep
@:expose
class UyghurLanguageTools {

    public static function getVersion() : String {
        return "0.1";
    }

    public static function toExtended(text : String) : String {
        return Reshaper.toExt(text);
    }

    public static function fromExtended(text : String) : String {
        return Reshaper.toBase(text);
    }

    public static function toCommon(text : String) : String {
        return Converter.work("arabic", "common", text);
    }

    public static function toCyrillic(text : String) : String {
        return Converter.work("arabic", "cyrillic", text);
    }

    public static function toLatin(text : String) : String {
        return Converter.work("arabic", "latin", text);
    }

    public static function fromCommon(text : String) : String {
        return Converter.work("common", "arabic", text);
    }

    public static function fromCyrillic(text : String) : String {
        return Converter.work("cyrillic", "arabic", text);
    }

    public static function fromLatin(text : String) : String {
        return Converter.work("arabic", "latin", text);
    }

    public static function toAlphabet(text : String, isSHiftPressed : Bool) : String {
        return Keyboard.toAlphabet(text, isSHiftPressed);
    }

    public static function fromAlphabet(alphabet : String, isSHiftPressed : Bool) : String {
        return Keyboard.fromAlphabet(alphabet, isSHiftPressed);
    }

    public static function doSyllable(text : String) : String {
        return Syllable.parse(text);
    }

    public static function readNumber(text : String) : String {
        return Numbers.read(text);
    }

    public static function writeNumber(text : String) : String {
        return Numbers.write(text);
    }


    static function main() {
        //
        trace("Uyghur Language Tools (" + getVersion() + "), for more infomation please visit https://github.com/kompasim");
        // trace("\n\n--->TEST:");
        // //
        // // converter
        // trace("converter:");
		// var origin = "???????????????? ???? ?????????????????? ???? ??????????.";
        // trace("origin", origin);
        // var result = toCommon(origin);
        // trace("result", result);
        // var reverse = fromCommon(result);
        // trace("reverse", reverse);
        // //
        // // alphabet
        // trace("alphabet:");
        // origin = "??";
        // trace("origin", origin);
        // result = toAlphabet(origin, true);
        // trace("result", result);
        // reverse = fromAlphabet(result, true);
        // trace("reverse", reverse);
        // // 
        // // numbers
        // trace("numbers:");
        // origin = "123.40110001";
        // trace("origin", origin);
        // result = readNumber(origin);
        // trace("result", result);
        // reverse = writeNumber(result);
        // trace("reverse", reverse);
        // // 
        // // reshaper
        // trace("reshaper:");
		// origin = "????????????????";
        // trace("origin", origin);
        // result = toExtended(origin);
        // trace("result", result);
        // reverse = fromExtended(result);
        // trace("reverse", reverse);
        // // 
        // // syllable
        // trace("syllable:");
        // origin = "????????????????";
        // trace("origin", origin);
        // result = doSyllable(origin);
        // trace("result", result);
        // reverse = StringTools.replace(result, " ", "");
        // trace("reverse", reverse);
        //
    }

}
