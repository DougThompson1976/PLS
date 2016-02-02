Rem     0001        <!DOCTYPE html>
Rem     0002        <html>
Rem     0003        <head>
Rem     0004        "   <meta charset=""utf-8"" />"
Rem     0005        "   <title>EmuLisp Console</title>"
Rem     0006        "   <meta name=""generator"" content=""BBEdit 9.6"" />"
Rem     0007        "   <style type=""text/css"" title=""text/css"">"
Rem     0008        body {
Rem     0009        "   margin: 12px 16px 0 16px;"
Rem     0010        "   background-color: #f0ecd0;"
Rem     0011        }
Rem     0012        div#head {
Rem     0013        "   white-space: nowrap;"
Rem     0014        }
Rem     0015        span#presentation {
Rem     0016        "   border: 1px solid gray;"
Rem     0017        "   border-radius: 4px;"
Rem     0018        "   padding: 4px 12px 4px 12px;"
Rem     0019        "   font: 15px Optima;"
Rem     0020        "   background-color: white;"
Rem     0021        }
Rem     0022        span#presentation em {
Rem     0023        "   font-size: 18px;"
Rem     0024        }
Rem     0025        img#infosymbol {
Rem     0026        "   position: relative;"
Rem     0027        "   top: 5px;"
Rem     0028        "   margin: 0 0 0 8px;"
Rem     0029        "   cursor: pointer;"
Rem     0030        }
Rem     0031        div#main {
Rem     0032        "   position: relative;"
Rem     0033        "   top: 7px;"
Rem     0034        }
Rem     0035        div#dcons {
Rem     0036        "   width: 520px;"
Rem     0037        }
Rem     0038        div#log {
Rem     0039        "   margin: 0;"
Rem     0040        "   width: 101.3%;"
Rem     0041        "   border: 1px solid gray;"
Rem     0042        "   border-bottom: none;"
Rem     0043        "   overflow: auto;"
Rem     0044        "   background-color: white;"
Rem     0045        }
Rem     0046        div#log pre {
Rem     0047        "   margin: 0 1px 0 1px;"
Rem     0048        "   padding: 2px 2px 2px 4px;"
Rem     0049        }
Rem     0050        pre.oldcode {
Rem     0051        "   background-color: #f0f5f7;"
Rem     0052        "   cursor: pointer;"
Rem     0053        }
Rem     0054        pre.filedrop {
Rem     0055        "   border-left: 4px solid #c0c5c7;"
Rem     0056        "   background-color: #f0f5f7;"
Rem     0057        }
Rem     0058        pre.print {
Rem     0059        "   background-color: #def;"
Rem     0060        }
Rem     0061        pre.println {
Rem     0062        "   background-color: #def;"
Rem     0063        "   border-bottom: 1px solid #bcf;"
Rem     0064        }
Rem     0065        pre.result {
Rem     0066        "   background-color: #dfd;"
Rem     0067        "   border-bottom: 1px solid #9b9;"
Rem     0068        }
Rem     0069        pre.warning {
Rem     0070        "   border-left: 4px solid #db3;"
Rem     0071        "   background-color: #ffa;"
Rem     0072        }
Rem     0073        pre.error {
Rem     0074        "   border-left: 4px solid #f33;"
Rem     0075        "   background-color: #fdd;"
Rem     0076        }
Rem     0077        textarea#newcode {
Rem     0078        "   margin: 0 0 4px 0;"
Rem     0079        "   width: inherit;"
Rem     0080        "   border: 1px solid gray;"
Rem     0081        "   padding: 2px 0 0 6px;"
Rem     0082        "   font: inherit;"
Rem     0083        }
Rem     0084        span#version {
Rem     0085        "   margin-left: 8px;"
Rem     0086        "   font: italic 11px Arial, sans-serif;"
Rem     0087        }
Rem     0088        div#dcons span#controls {
Rem     0089        "   float: right;"
Rem     0090        }
Rem     0091        div#dcons span#controls span {
Rem     0092        "   margin: 0;"
Rem     0093        "   border: 1px solid gray;"
Rem     0094        "   padding: 2px 4px 2px 4px;"
Rem     0095        "   font: 14px monospace;"
Rem     0096        "   background-color: white;"
Rem     0097        }
Rem     0098        div#dcons span#controls .nosymbol {
Rem     0099        "   color: black;"
Rem     0100        "   cursor: text;"
Rem     0101        }
Rem     0102        div#dcons span#controls .builtin {
Rem     0103        "   color: #00e;"
Rem     0104        "   cursor: pointer;"
Rem     0105        }
Rem     0106        div#dcons span#controls .othersymbol {
Rem     0107        "   color: #00e;"
Rem     0108        "   cursor: pointer;"
Rem     0109        "   background-color: #def;"
Rem     0110        }
Rem     0111        div#dcons input[type='button'] {
Rem     0112        }
Rem     0113        div#monitor {
Rem     0114        "   position: absolute;"
Rem     0115        "   top: 0;"
Rem     0116        "   left: 534px;"
Rem     0117        "   font: 15px Optima;"
Rem     0118        }
Rem     0119        div#monitor input[type='text'] {
Rem     0120        "   margin: 0 0 4px 0;"
Rem     0121        "   width: 300px;"
Rem     0122        "   font: 15px monospace;"
Rem     0123        }
Rem     0124        canvas#monView {
Rem     0125        "   border: 1px solid gray;"
Rem     0126        "   background-color: white;"
Rem     0127        }
Rem     0128        div#prefs {
Rem     0129        "   visibility: hidden;"
Rem     0130        "   position: absolute;"
Rem     0131        "   top: 46px;"
Rem     0132        "   left: 160px;"
Rem     0133        "   border: 2px ridge #999;"
Rem     0134        "   background-color: white;"
Rem     0135        "   -moz-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
Rem     0136        "   -webkit-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
Rem     0137        "   box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
Rem     0138        "   padding: 0 0 2px 0;"
Rem     0139        "   font: 14px Optima;"
Rem     0140        }
Rem     0141        p.paneHead {
Rem     0142        "   margin: 0 0 8px 0;"
Rem     0143        "   border-bottom: 1px solid #bbb;"
Rem     0144        "   background-color: #ddd;"
Rem     0145        "   padding: 0 0 1px 0;"
Rem     0146        }
Rem     0147        span.closebox {
Rem     0148        "   position: relative;"
Rem     0149        "   margin: 0;"
Rem     0150        "   left: 92%;"
Rem     0151        "   border: 1px solid #999;"
Rem     0152        "   background-color: #f9f9f9;"
Rem     0153        "   padding: 0 3px 0 3px;"
Rem     0154        "   text-align: center;"
Rem     0155        "   font: 10px Arial, sans-serif;"
Rem     0156        "   cursor: default;"
Rem     0157        }
Rem     0158        span.closebox:hover {
Rem     0159        "   color: #d22;"
Rem     0160        }
Rem     0161        p.pref {
Rem     0162        "   margin: 0 16px 8px 14px;"
Rem     0163        }
Rem     0164        div#prefs input[type='checkbox'] {
Rem     0165        "   margin: 0 6px 0 0;"
Rem     0166        }
Rem     0167        div#prefs input[type='text'] {
Rem     0168        "   background-color: #ffd;"
Rem     0169        "   padding-left: 2px;"
Rem     0170        }
Rem     0171
Rem     0172        "/* below are the following script sections (in one script tag)"
Rem     0173        "   <script src=""http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js"" type=""text/javascript""></script>"
Rem     0174        <script src="http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js" type="text/javascript"></script>
Rem     0175        */
Rem     0176
Rem     0177
Rem     0178        "   </style>"
Rem     0179
Rem     0180        "   <script src=""http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js"" type=""text/javascript""></script>"
Rem     0181
Rem     0182        <script type="text/javascript">
Rem     0183        /* 26nov10jk
Rem     0184        * (c) Jon Kleiser
Rem     0185        * http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js
Rem     0186        */
Rem     0187        var BOXNAT_EXP = "Boxed native object expected",
Rem     0188        "   BOOL_EXP = ""Boolean expected"", CELL_EXP = ""Cell expected"", LIST_EXP = ""List expected"","
Rem     0189        "   NUM_EXP = ""Number expected"", SYM_EXP = ""Symbol expected"", VAR_EXP = ""Variable expected"","
Rem     0190        "   EXEC_OR_NUM_EXP = ""Executable or Number expected"","
Rem     0191        "   BAD_ARG = ""Bad argument"", BAD_DOT = ""Bad dotted pair"", BAD_INPUT = ""Bad input"", DIV_0 = ""Div/0"","
Rem     0192        "   NOT_MAK = ""Not making"", PROT_SYM = ""Protected symbol"", UNDEF = ""Undefined"","
Rem     0193        "   JS_CTORNAME_EXP = ""Constructor name expected"", JS_RESERVED = ""Reserved word"";"
Rem     0194
Rem     0195        function getFileSync(fileUrl) {
Rem     0196        "   var req = new XMLHttpRequest();"
Rem     0197        "   req.open(""GET"", fileUrl, false);      // synchronous"
Rem     0198        "   req.overrideMimeType(""text/plain; charset=utf-8"");"
Rem     0199        "   req.send(null);"
Rem     0200        "   if (req.status == 0) {"
Rem     0201        "       return req.responseText;"
Rem     0202        "   }"
Rem     0203        "   throw new Error(""XMLHttpRequest status: "" + req.status);"
Rem     0204        }
Rem     0205
Rem     0206        var NILTYPE = 0, NUMBERTYPE = 1, SYMBOLTYPE = 2, CELLTYPE = 3, TRUETYPE = 4;
Rem     0207
Rem     0208        Number.prototype.TYPEVAL = NUMBERTYPE;
Rem     0209
Rem     0210        function lispToStr(x) {
Rem     0211        "   //if (!confirm(""lispToStr: "" + x.toString() + "", "" + x.TYPEVAL)) throw new Error(""lispToStr aborted"");"
Rem     0212        "   return x.toString();"
Rem     0213        }
Rem     0214
Rem     0215        function unknown(x) {
Rem     0216        "   if (!confirm(""Unknown Lisp type: "" + x)) throw new Error(""unknown aborted"");"
Rem     0217        "   return ""???"";"
Rem     0218        }
Rem     0219
Rem     0220        function valueToStr(x) {
Rem     0221        "   //if (!confirm(""valueToStr "" + lispToStr(x))) throw new Error(""valueToStr aborted"");"
Rem     0222        "   return (x instanceof Number) ? x.toString() :"
Rem     0223        "       (x instanceof Symbol) ? x.toValueString() :"
Rem     0224        "       (x instanceof Cell) ? x.toValueString() : unknown(x);"
Rem     0225        }
Rem     0226
Rem     0227        function Cell(car, cdr) {
Rem     0228        "   this.car = car;"
Rem     0229        "   this.cdr = cdr;"
Rem     0230        }
Rem     0231
Rem     0232        Cell.prototype.TYPEVAL = CELLTYPE;
Rem     0233
Rem     0234        Cell.prototype.getVal = function() {
Rem     0235        "   return this.car;"
Rem     0236        }
Rem     0237
Rem     0238        Cell.prototype.setVal = function(val) {
Rem     0239        "   this.car = val;"
Rem     0240        }
Rem     0241
Rem     0242        Cell.prototype.toString = function() {
Rem     0243        "   if (this.car === QUOTE) return ""'"" + lispToStr(this.cdr);"
Rem     0244        "   var arr = [], c = this;"
Rem     0245        "   do {"
Rem     0246        "       arr.push(lispToStr(c.car));"
Rem     0247        "       c = c.cdr;"
Rem     0248        "       //if (!confirm(""Cell.toString: "" + lispToStr(c.car))) throw new Error(""Cell.toString aborted"");"
Rem     0249        "       if (c === this) { arr.push("".""); c = NIL; }   // why didn't break work here?"
Rem     0250        "   } while (c instanceof Cell);"
Rem     0251        "   if (c !== NIL) {"
Rem     0252        "       arr.push(""."", lispToStr(c));  // last Cell was dotted"
Rem     0253        "   }"
Rem     0254        "   return ""("" + arr.join("" "") + "")"";"
Rem     0255        }
Rem     0256
Rem     0257        Cell.prototype.toValueString = function() {
Rem     0258        "   var str = """", c = this;"
Rem     0259        "   do {"
Rem     0260        "       str += valueToStr(c.car);"
Rem     0261        "       c = c.cdr;"
Rem     0262        "   } while (c instanceof Cell);"
Rem     0263        "   if (c !== NIL) {"
Rem     0264        "       str += valueToStr(c);   // last Cell was dotted"
Rem     0265        "   }"
Rem     0266        "   return str;"
Rem     0267        }
Rem     0268
Rem     0269        function Symbol(name, val) {
Rem     0270        "   this.name = name;"
Rem     0271        "   this.trans = false;"
Rem     0272        "   this.cdr = (val === undefined) ? NIL : val;"
Rem     0273        "   this.props = NIL;"
Rem     0274        }
Rem     0275
Rem     0276        function newTransSymbol(name) {
Rem     0277        "   var ts = new Symbol(name);"
Rem     0278        "   ts.trans = true;"
Rem     0279        "   ts.cdr = ts;"
Rem     0280        "   return ts;"
Rem     0281        }
Rem     0282
Rem     0283        // Creates and returns a new anonymous symbol
Rem     0284        function box(val) {
Rem     0285        "   var ts = new Symbol(null, val);"
Rem     0286        "   ts.trans = true;"
Rem     0287        "   return ts;"
Rem     0288        }
Rem     0289
Rem     0290        function boxNativeObject(obj) {
Rem     0291        "   var ts = newTransSymbol(null);"
Rem     0292        "   ts.obj = obj;"
Rem     0293        "   return ts;"
Rem     0294        }
Rem     0295
Rem     0296        Symbol.prototype.TYPEVAL = SYMBOLTYPE;
Rem     0297
Rem     0298        Symbol.prototype.getVal = function() {
Rem     0299        "   return this.cdr;"
Rem     0300        }
Rem     0301
Rem     0302        Symbol.prototype.valueOf = function() {
Rem     0303        "   return this.name;"
Rem     0304        }
Rem     0305
Rem     0306        Symbol.prototype.setVal = function(val) {
Rem     0307        "   if (this.lock) throw new Error(newErrMsg(PROT_SYM, this));"
Rem     0308        "   this.cdr = val;"
Rem     0309        }
Rem     0310
Rem     0311        // Internal symbol names can consist of any printable (non-whitespace) character,
Rem     0312        "// except for the following meta characters:       "" ' ( ) , [ ] ` ~ { }"
Rem     0313        // It is possible, though, to include these special characters into symbol names
Rem     0314        // by escaping them with a backslash '\'.
Rem     0315        Symbol.prototype.escName = function() {
Rem     0316        "   var eName = this.name.replace(/\\/g, ""\\\\"");"
Rem     0317        "   eName = eName.replace(/\^/g, ""Error! Hyperlink reference not valid."");"
Rem     0318        "   eName = eName.replace(/\t/g, ""^I"");"
Rem     0319        "   eName = eName.replace(/\r/g, ""^M"");"
Rem     0320        "   eName = eName.replace(/\n/g, ""^J"");"
Rem     0321        "   //if (eName != this.name) alert(""Symbol.escName: "" + this.name + "" -> "" + eName);"
Rem     0322        "   return eName;"
Rem     0323        }
Rem     0324
Rem     0325        Symbol.prototype.noName = function() {
Rem     0326        "   return (this.obj !== undefined) ? ""$"" + typeof this.obj : ""$*"";"
Rem     0327        }
Rem     0328
Rem     0329        Symbol.prototype.toString = function() {
Rem     0330        "   return this.trans ? (this.name != null) ? ('""' + this.escName() + '""') : this.noName() : this.name;"
Rem     0331        }
Rem     0332
Rem     0333        Symbol.prototype.toValueString = function() {
Rem     0334        "   return (this === NIL) ? """" : (this.name != null) ? this.name : this.noName();"
Rem     0335        }
Rem     0336
Rem     0337        Symbol.prototype.pushValue = function(val) {
Rem     0338        "   if (this.stack === undefined) this.stack = [];"
Rem     0339        "   this.stack.push(this.cdr);"
Rem     0340        "   this.cdr = val;"
Rem     0341        }
Rem     0342
Rem     0343        Symbol.prototype.popValue = function() {
Rem     0344        "   var pv = this.cdr;"
Rem     0345        "   this.cdr = this.stack.pop();"
Rem     0346        "   //if (this.stack.length === 0) delete this.stack;"
Rem     0347        "   return pv;"
Rem     0348        }
Rem     0349
Rem     0350        function getSymbol(name, editMode) {
Rem     0351        "   if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));"
Rem     0352        "   var s = gSym[name];"
Rem     0353        "   if (s === undefined) {"
Rem     0354        "       s = new Symbol(name, NIL);"
Rem     0355        "       if (! editMode) gSym[name] = s;"
Rem     0356        "   }"
Rem     0357        "   return s;"
Rem     0358        }
Rem     0359
Rem     0360        function setSymbolValue(s, val) {
Rem     0361        "   if (!(s instanceof Symbol)) throw new Error(newErrMsg(VAR_EXP, s));"
Rem     0362        "   s.setVal(val);"
Rem     0363        }
Rem     0364
Rem     0365        function Source(text, chars) {
Rem     0366        "   this.src = text;"
Rem     0367        "   // character limitation for symbols"
Rem     0368        "   if (chars instanceof Symbol) {"
Rem     0369        "       this.charset = chars.valueOf();"
Rem     0370        "   } else if (typeof chars == ""string"") {"
Rem     0371        "       //alert(""Source2: "" + chars);"
Rem     0372        "       this.charset = chars;"
Rem     0373        "   }"
Rem     0374        "   this.pos = 0;"
Rem     0375        "   this.trace = null;"
Rem     0376        }
Rem     0377
Rem     0378        Source.prototype.CLOSEPAREN = -1;
Rem     0379        Source.prototype.CLOSESYM = -2;
Rem     0380        Source.prototype.QUOTE2 = -3;
Rem     0381        Source.prototype.EOF = null;
Rem     0382
Rem     0383        Source.prototype.unescMap = {I: "\t", i: "\t", J: "\n", j: "\n", M: "\r", m: "\r"};
Rem     0384
Rem     0385        Source.prototype.getNextSignificantChar = function() {
Rem     0386        "   while (this.pos < this.src.length) {"
Rem     0387        "       while (this.src.charAt(this.pos) == ""#"") {"
Rem     0388        "           var ch;"
Rem     0389        "           do { ch = this.src.charAt(this.pos++); } while ((ch != ""\n"") && (this.pos < this.src.length));"
Rem     0390        "       }"
Rem     0391        "       if (this.src.charAt(this.pos) == ""\\"") this.pos++;"
Rem     0392        "       if ("" \t\r\n"".indexOf(this.src.charAt(this.pos)) == -1) return this.src.charAt(this.pos++);"
Rem     0393        "       this.pos++;"
Rem     0394        "   }"
Rem     0395        "   return this.EOF;"
Rem     0396        }
Rem     0397
Rem     0398        Source.prototype.getNextStringChar = function() {
Rem     0399        "   while (this.pos < this.src.length) {"
Rem     0400        "       var ch = this.src.charAt(this.pos++);"
Rem     0401        "       if (ch == ""\"""") return this.QUOTE2;"
Rem     0402        "       if (ch == ""\\"") return this.src.charAt(this.pos++);"
Rem     0403        "       if (ch != ""^"") return ch;"
Rem     0404        "       ch = this.unescMap[this.src.charAt(this.pos++)];"
Rem     0405        "       if (ch != null) return ch;"
Rem     0406        "   }"
Rem     0407        "   return this.EOF;"
Rem     0408        }
Rem     0409
Rem     0410        Source.prototype.getNextSymbolChar = function() {
Rem     0411        "   if ("" \t\r\n('\"""".indexOf(this.src.charAt(this.pos)) >= 0) return this.CLOSESYM;"
Rem     0412        "   var ch = this.src.charAt(this.pos++);"
Rem     0413        "   if (ch == "")"") return this.CLOSEPAREN;"
Rem     0414        "   if (ch == ""\\"") return this.src.charAt(this.pos++);"
Rem     0415        "   return ch;"
Rem     0416        }
Rem     0417
Rem     0418        Source.prototype.withTrace = function() {
Rem     0419        "   this.trace = [];"
Rem     0420        "   return this;"
Rem     0421        }
Rem     0422
Rem     0423        Source.prototype.traceItemEnd = function(item) {
Rem     0424        "   if (this.trace) this.trace.push({item: item, endPos: this.pos});"
Rem     0425        }
Rem     0426
Rem     0427        Source.prototype.getItemBeforePos = function(endPos) {
Rem     0428        "   for (var i=this.trace.length-1; i>=0; i--) {"
Rem     0429        "       var t = this.trace[i];"
Rem     0430        "       if ((t.endPos - t.item.toString().length) <= endPos) return {item: t.item, tInd: i};"
Rem     0431        "   }"
Rem     0432        "   return null;"
Rem     0433        }
Rem     0434
Rem     0435        Source.prototype.getSymbolBeforePos = function(endPos) {
Rem     0436        "   for (var i=this.trace.length-1; i>=0; i--) {"
Rem     0437        "       var t = this.trace[i];"
Rem     0438        "       if (((t.endPos - t.item.toString().length) <= endPos) &&"
Rem     0439        "           (t.item instanceof Symbol) && gSym[t.item.name]) return {item: t.item, tInd: i};"
Rem     0440        "   }"
Rem     0441        "   return null;"
Rem     0442        }
Rem     0443
Rem     0444        "var NIL = new Symbol(""NIL""); NIL.car = NIL;  NIL.cdr = NIL;  NIL.props = NIL;"
Rem     0445        "       NIL.lock = true; NIL.TYPEVAL = NILTYPE; NIL.bool = false;"
Rem     0446        "var T = new Symbol(""T""); T.cdr = T;  T.lock = true; T.TYPEVAL = TRUETYPE; T.bool = true;"
Rem     0447        var A1 = new Symbol("@", NIL), A2 = new Symbol("@@", NIL), A3 = new Symbol("@@@", NIL);
Rem     0448        var ZERO = new Number(0), ONE = new Number(1);
Rem     0449        "var gSym = {NIL: NIL, T: T, ""@"": A1, ""@@"": A2, ""@@@"": A3};   // dictionary/index for internal symbols"
Rem     0450        "var gTrans = {};   // dictionary/index for transient symbols (strings)"
Rem     0451        var gEmptyObj = {};
Rem     0452        var gParseCache = {};
Rem     0453        "var mk = [];   // 'make' stack"
Rem     0454        var evFrames = NIL;
Rem     0455        var gTrcIndent = "";
Rem     0456        var startupMillis = (new Date()).getTime();
Rem     0457
Rem     0458        function mkNew() { mk.unshift({h: NIL, t: NIL}); }
Rem     0459        function linkc(c) {
Rem     0460        "   if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));"
Rem     0461        "   c = (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL);"
Rem     0462        "   if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }"
Rem     0463        "   while (c.cdr !== NIL) { c = c.cdr; }; mk[0].t = c; return c.car;"
Rem     0464        }
Rem     0465        function link(x) {
Rem     0466        "   if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));"
Rem     0467        "   var c = new Cell(x, NIL);"
Rem     0468        "   if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }"
Rem     0469        "   mk[0].t = c; return x;"
Rem     0470        }
Rem     0471        function mkResult() { return mk.shift().h; }
Rem     0472
Rem     0473        function getString(str, editMode) {
Rem     0474        "   var s = (str in gEmptyObj) ? undefined : gTrans[str];"
Rem     0475        "   if (s === undefined) {"
Rem     0476        "       s = newTransSymbol(str);"
Rem     0477        "       if (! (editMode || (str in gEmptyObj))) gTrans[str] = s;"
Rem     0478        "   }"
Rem     0479        "   return s;"
Rem     0480        }
Rem     0481
Rem     0482        function newErrMsg(msg, badValue) {
Rem     0483        "   getSymbol(""*Msg"").setVal(newTransSymbol(msg));"
Rem     0484        "   return (badValue === undefined) ? msg : lispToStr(badValue) + "" -- "" + msg;"
Rem     0485        }
Rem     0486
Rem     0487        function deFn(name, jsFn) {
Rem     0488        "   if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));"
Rem     0489        "   var sym = new Symbol(name, jsFn);"
Rem     0490        "   gSym[name] = sym;"
Rem     0491        }
Rem     0492
Rem     0493        function aTrue(val) { if (val !== NIL) { A1.pushValue(val); return true; } else return false; }
Rem     0494
Rem     0495        function aPop(val) { A1.popValue(); return val; }
Rem     0496
Rem     0497        function car(c) { if (c.car) return c.car; else throw new Error(newErrMsg(LIST_EXP)); }
Rem     0498        function cdr(c) { if ((c instanceof Cell) || (c === NIL)) return c.cdr;
Rem     0499        "                       else throw new Error(newErrMsg(LIST_EXP)); }"
Rem     0500
Rem     0501        function numeric(val) {
Rem     0502        "   if (val instanceof Number) return val;"
Rem     0503        "   throw new Error(newErrMsg(NUM_EXP, val));"
Rem     0504        }
Rem     0505
Rem     0506        function nth(lst, n) {
Rem     0507        "   if (lst instanceof Cell) {"
Rem     0508        "       if (n <= 0) return NIL;"
Rem     0509        "       while ((lst !== NIL) && (--n > 0)) { lst = lst.cdr; }"
Rem     0510        "   }"
Rem     0511        "   return lst;"
Rem     0512        }
Rem     0513
Rem     0514        function getAlg(c) {
Rem     0515        "   //alert(""getAlg: "" + lispToStr(c));"
Rem     0516        "   var s = c.car; c = c.cdr;"
Rem     0517        "   while (c instanceof Cell) {"
Rem     0518        "       var k = c.car;"
Rem     0519        "       if (s instanceof Symbol) {"
Rem     0520        "           if (eqVal(k, ZERO)) {"
Rem     0521        "               s = s.getVal();"
Rem     0522        "           } else {"
Rem     0523        "               var pLst = s.props, p = NIL, pk, pv;"
Rem     0524        "               while (pLst !== NIL) {"
Rem     0525        "                   var pc = pLst.car;"
Rem     0526        "                   if (pc instanceof Cell) { pk = pc.cdr; pv = pc.car; } else { pk = pc; pv = T; }"
Rem     0527        //if (!confirm("getAlg: " + lispToStr(pc) + ", " + lispToStr(pk) + ", " + lispToStr(pv))) throw new Error("getAlg aborted");
Rem     0528        "                   if (pk === k) { p = pv; break; }"
Rem     0529        "                   pLst = pLst.cdr;"
Rem     0530        "               }"
Rem     0531        "               s = p;  // the symbol or list to use in the next step"
Rem     0532        "           }"
Rem     0533        "       } else if (s instanceof Cell) {"
Rem     0534        "           if (k instanceof Number) {"
Rem     0535        "               if (k >= 0) {"
Rem     0536        "                   s = nth(s, k).car;"
Rem     0537        "               } else {"
Rem     0538        "                   do { s = s.cdr; } while ((s !== NIL) && (++k < 0));"
Rem     0539        "               }"
Rem     0540        "           }"
Rem     0541        "       } else throw new Error(newErrMsg(SYM_EXP));"
Rem     0542        "       c = c.cdr;"
Rem     0543        "   }"
Rem     0544        "   return s;"
Rem     0545        }
Rem     0546
Rem     0547        function prog(c) {
Rem     0548        "   var v = NIL; while (c instanceof Cell) { v = evalLisp(c.car); c = c.cdr; }; return v;"
Rem     0549        }
Rem     0550
Rem     0551        function iter(c) {
Rem     0552        "   var v = NIL;"
Rem     0553        "   while (c instanceof Cell) {"
Rem     0554        "       var cv = c.car, cond = false, cMatch = false;"
Rem     0555        "       if (cv instanceof Cell) {"
Rem     0556        "           if (cond = (cv.car === NIL)) {"
Rem     0557        "               cMatch = (evalLisp(cv.cdr.car) === NIL);"
Rem     0558        "           } else if (cond = (cv.car === T)) {"
Rem     0559        "               cMatch = aTrue(evalLisp(cv.cdr.car));"
Rem     0560        "           }"
Rem     0561        "       }"
Rem     0562        "       if (cond) {"
Rem     0563        "           if (cMatch) {"
Rem     0564        "               v = prog(cv.cdr.cdr);"
Rem     0565        "               if (cv.car === T) aPop(v);"
Rem     0566        "               return {v: v, m: true};"
Rem     0567        "           }"
Rem     0568        "       } else v = evalLisp(cv);"
Rem     0569        "       c = c.cdr;"
Rem     0570        "   }"
Rem     0571        "   return {v: v, m: false};"
Rem     0572        }
Rem     0573
Rem     0574        function div(c, divFn) {
Rem     0575        "   var t = evalLisp(c.car);"
Rem     0576        "   if (t === NIL) return NIL;"
Rem     0577        "   t = numeric(t);"
Rem     0578        "   while (c.cdr !== NIL) {"
Rem     0579        "       c = c.cdr;"
Rem     0580        "       var v = evalLisp(c.car); if (v === NIL) return NIL;"
Rem     0581        "       if (numeric(v) == 0) throw new Error(newErrMsg(DIV_0));"
Rem     0582        "       t = divFn(t, v);"
Rem     0583        "   }"
Rem     0584        "   return new Number(t);"
Rem     0585        }
Rem     0586
Rem     0587        function eqVal(a, b) {
Rem     0588        "   //alert(""eqVal() "" + a + "", "" + b);"
Rem     0589        "   if (a.TYPEVAL === b.TYPEVAL) {"
Rem     0590        "       if (a === b) return true;"
Rem     0591        "       if (a.TYPEVAL === CELLTYPE) {"
Rem     0592        "           return eqVal(a.car, b.car) ? eqVal(a.cdr, b.cdr) : false;"
Rem     0593        "       }"
Rem     0594        "       return (a.valueOf() == b.valueOf());    // Number or Symbol"
Rem     0595        "   }"
Rem     0596        "   return false;"
Rem     0597        }
Rem     0598
Rem     0599        function ltVal(a, b) {
Rem     0600        "   if (a.TYPEVAL === b.TYPEVAL) {"
Rem     0601        "       if (a === b) return false;"
Rem     0602        "       if (a.TYPEVAL === CELLTYPE) {"
Rem     0603        "           return eqVal(a.car, b.car) ? ltVal(a.cdr, b.cdr) : ltVal(a.car, b.car);"
Rem     0604        "       }"
Rem     0605        "       return a.valueOf() < b.valueOf();   // Number or Symbol"
Rem     0606        "   }"
Rem     0607        "   return a.TYPEVAL < b.TYPEVAL;"
Rem     0608        }
Rem     0609
Rem     0610        function idxLookup(owner, v) {
Rem     0611        "   var tree = owner.getVal();"
Rem     0612        "   if (tree === NIL) return NIL;"
Rem     0613        "   while (!eqVal(v, tree.car)) {"
Rem     0614        "       if (tree.cdr === NIL) return NIL;"
Rem     0615        "       if (ltVal(v, tree.car)) return idxLookup(tree.cdr, v);"
Rem     0616        "       tree = tree.cdr;"
Rem     0617        "       if (tree.cdr === NIL) return NIL;"
Rem     0618        "       tree = tree.cdr;"
Rem     0619        "   }"
Rem     0620        "   return tree;"
Rem     0621        }
Rem     0622
Rem     0623        function idxInsert(owner, v) {
Rem     0624        "   var tree = owner.getVal();"
Rem     0625        "   if (tree === NIL) { owner.setVal(new Cell(v, NIL)); return NIL; }"
Rem     0626        "   while (!eqVal(v, tree.car)) {"
Rem     0627        "       if (tree.cdr === NIL) tree.cdr = new Cell(NIL, NIL);"
Rem     0628        "       if (ltVal(v, tree.car)) return idxInsert(tree.cdr, v);"
Rem     0629        "       tree = tree.cdr;"
Rem     0630        "       if (tree.cdr === NIL) { tree.cdr = new Cell(v, NIL); return NIL; }"
Rem     0631        "       tree = tree.cdr;"
Rem     0632        "       //if (!confirm(""idxInsert: "" + lispToStr(tree))) throw new Error(""idxInsert aborted"");"
Rem     0633        "   }"
Rem     0634        "   return tree;"
Rem     0635        }
Rem     0636
Rem     0637        function idxDelete(owner, v) {
Rem     0638        "   var tree = owner.getVal(), pre = NIL;"
Rem     0639        "   if (tree === NIL) return NIL;"
Rem     0640        "   while (!eqVal(v, tree.car)) {"
Rem     0641        "       if (tree.cdr === NIL) return NIL;"
Rem     0642        "       if (ltVal(v, tree.car)) return idxDelete(tree.cdr, v);"
Rem     0643        "       pre = tree; tree = tree.cdr;"
Rem     0644        "       if (tree.cdr === NIL) return NIL;"
Rem     0645        "       pre = tree; tree = tree.cdr;"
Rem     0646        "       //if (!confirm(""idxDelete: "" + lispToStr(tree))) throw new Error(""idxDelete aborted"");"
Rem     0647        "   }"
Rem     0648        "   // tree.car is the value to delete"
Rem     0649        "   //var bbc = null;       // cell with ""big brother"" to replace tree.car, if needed"
Rem     0650        "   if (tree.cdr.car !== NIL) {"
Rem     0651        "       // There are lesser values that need a new ""big brother""."
Rem     0652        "       if (tree.cdr.cdr !== NIL) {"
Rem     0653        "           var pbc = tree.cdr, bbc = pbc.cdr;"
Rem     0654        "           if (bbc.cdr.car !== NIL) {"
Rem     0655        "               // There are several ""big brother"" candidates, get the smallest ..."
Rem     0656        "               do { pbc = bbc; bbc = bbc.cdr.car; } while (bbc.cdr.car !== NIL);"
Rem     0657        "               pbc.cdr.car = NIL;  // brother's old cell replaced by NIL"
Rem     0658        "           } else {"
Rem     0659        "               // Only one candidate. Cut it and following NIL from list ..."
Rem     0660        "               pbc.cdr = pbc.cdr.cdr.cdr;"
Rem     0661        "           }"
Rem     0662        "           //alert(""idxDelete: "" + lispToStr(bbc));"
Rem     0663        "           tree.car = bbc.car; // value to delete replaced by ""big brother"""
Rem     0664        "       } else {"
Rem     0665        "           // Must promote lesser values"
Rem     0666        "           if (pre === NIL) {"
Rem     0667        "               owner.setVal(tree.cdr.car);"
Rem     0668        "           } else {"
Rem     0669        "               pre.cdr = tree.cdr.car;"
Rem     0670        "           }"
Rem     0671        "       }"
Rem     0672        "   } else {"
Rem     0673        "       // No lesser values following value to delete"
Rem     0674        "       if (pre === NIL) {"
Rem     0675        "           owner.setVal(tree.cdr.cdr);"
Rem     0676        "       } else {"
Rem     0677        "           pre.cdr = tree.cdr.cdr;"
Rem     0678        "       }"
Rem     0679        "   }"
Rem     0680        "   return tree;"
Rem     0681        }
Rem     0682
Rem     0683        function idxLinkSorted(tree) {
Rem     0684        "   while (tree !== NIL)"
Rem     0685        "   { idxLinkSorted(tree.cdr.car); link(tree.car); tree = tree.cdr.cdr; }"
Rem     0686        }
Rem     0687
Rem     0688        /*
Rem     0689        * If 'evaluate' is true, each top level expression will be evaluated, and the result
Rem     0690        * of the last evaluation ('evRes') will be returned. A top level NIL or equivalent
Rem     0691        * will terminate further parsing.
Rem     0692        * If 'evaluate' is false/undefined, the source at the current level will be parsed,
Rem     0693        * and a corresponding tree of cells will be returned (through the 'cdr' at the bottom).
Rem     0694        * If 'editMode' is true, parsed symbols will not be inserted into the dictionaries.
Rem     0695        */
Rem     0696        function parseList(src, evaluate, editMode) {
Rem     0697        "   var ch, s, dotPos = 0, quotes = 0, items = [], cdr = NIL, evRes = NIL, circEnd = null;"
Rem     0698        "   do {"
Rem     0699        "       ch = src.getNextSignificantChar();"
Rem     0700        "       if (ch == ""'"") {"
Rem     0701        "           quotes++;"
Rem     0702        "       } else if (ch == "")"") {"
Rem     0703        "           break;"
Rem     0704        "       } else if ((ch == ""."") && (items.length > 0)) {"
Rem     0705        "           if (dotPos > 0) throw new Error(newErrMsg(BAD_DOT,"
Rem     0706        "                                               ""("" + lispToStr(items[items.length-1]) + "" . \\.)""));"
Rem     0707        "           dotPos = items.length;"
Rem     0708        "       } else if (ch !== src.EOF) {"
Rem     0709        "           var item;"
Rem     0710        "           if (ch == ""("") {"
Rem     0711        "               var tmp = parseList(src, false, editMode);"
Rem     0712        "               if (evaluate && (tmp !== NIL)) evRes = evalLisp(tmp);"
Rem     0713        "               item = tmp;"
Rem     0714        "           } else if (ch == ""\"""") {"
Rem     0715        "               s = """";"
Rem     0716        "               while (typeof (ch = src.getNextStringChar()) == ""string"") s += ch;"
Rem     0717        "               item = (s == """") ? NIL : getString(s, editMode);"
Rem     0718        "               src.traceItemEnd(item);     // in case we would like to know item's position"
Rem     0719        "           } else {"
Rem     0720        "               s = ch;"
Rem     0721        "               while (typeof (ch = src.getNextSymbolChar()) == ""string"") s += ch;"
Rem     0722        "               item = isNaN(s) ? getSymbol(s, editMode) : new Number(s);"
Rem     0723        "               src.traceItemEnd(item);     // in case we would like to know item's position"
Rem     0724        "           }"
Rem     0725        "           if (evaluate && (item === NIL)) return evRes;"
Rem     0726        "           if ((dotPos > 0) && (items.length > dotPos)) throw new Error(newErrMsg(BAD_DOT));"
Rem     0727        "           // TODO: provide a 'badValue' param for newErrMsg(BAD_DOT) above. Case: (1 (2 3) . 4 5)"
Rem     0728        "           while (quotes > 0) { item = new Cell(QUOTE, item); quotes--; }"
Rem     0729        "           items.push(item);"
Rem     0730        "       }"
Rem     0731        "   } while ((ch !== src.CLOSEPAREN) && (ch !== src.EOF));"
Rem     0732        "   if (evaluate) return evRes;"
Rem     0733        "   if (dotPos > 0) {"
Rem     0734        "       if (dotPos == items.length) {"
Rem     0735        "           cdr = new Cell(items.pop(), cdr);"
Rem     0736        "           circEnd = cdr;      // last cell in circular (x y z .) notation"
Rem     0737        "       } else { cdr = items.pop(); }   // normal dot notation"
Rem     0738        "   }"
Rem     0739        "   while (items.length > 0) cdr = new Cell(items.pop(), cdr);"
Rem     0740        "   if (circEnd != null) circEnd.cdr = cdr;"
Rem     0741        "   return cdr;"
Rem     0742        }
Rem     0743
Rem     0744        function cachedTextParse(str) {
Rem     0745        "   var lst = gParseCache[str];"
Rem     0746        "   if (lst === undefined) {"
Rem     0747        "       lst = parseList(new Source(str));"
Rem     0748        "       gParseCache[str] = lst;"
Rem     0749        "   }"
Rem     0750        "   return lst;"
Rem     0751        }
Rem     0752
Rem     0753        function unevalArgs(lst) {
Rem     0754        "   // Putting elements of lst into anonymous symbols"
Rem     0755        "   mkNew(); while (lst !== NIL) { link(box(lst.car)); lst = lst.cdr; }"
Rem     0756        "   return mkResult();"
Rem     0757        }
Rem     0758
Rem     0759        function applyFn(rawFn, lst, more) {
Rem     0760        "   if (more !== NIL) {"
Rem     0761        "       mkNew(); do { link(evalLisp(more.car)); more = more.cdr; } while (more !== NIL);"
Rem     0762        "       mk[0].t.cdr = lst; lst = mkResult();"
Rem     0763        "   }"
Rem     0764        "   var fn = evalLisp(rawFn); if (! (fn instanceof Symbol)) fn = box(fn);"
Rem     0765        "   return evalLisp(new Cell(fn, unevalArgs(lst)));"
Rem     0766        }
Rem     0767
Rem     0768        deFn("apply", function(c) { return applyFn(c.car, evalLisp(c.cdr.car), c.cdr.cdr); });
Rem     0769        deFn("arg", function(c) { var n = 0, f = evFrames.car;
Rem     0770        "   if (c !== NIL) {"
Rem     0771        "       n = Math.round(numeric(evalLisp(c.car))); if (n < 1) return NIL;"
Rem     0772        "   }"
Rem     0773        "   while (n-- > 0) f = f.cdr;"
Rem     0774        "   return f.car;"
Rem     0775        });
Rem     0776        deFn("args", function(c) { return (evFrames.car.cdr === NIL) ? NIL : T; });
Rem     0777        deFn("bench", function(c) { var t0 = (new Date()).getTime(), r = prog(c);
Rem     0778        "   _stdPrint(((new Date()).getTime() - t0) / 1000 + "" sec\n""); return r;"
Rem     0779        });
Rem     0780        deFn("box", function(c) { return box(evalLisp(c.car)); });
Rem     0781        deFn("caar", function(c) { return car(car(evalLisp(c.car))); });
Rem     0782        deFn("caddr", function(c) { return car(cdr(cdr(evalLisp(c.car)))); });
Rem     0783        deFn("cadr", function(c) { return car(cdr(evalLisp(c.car))); });
Rem     0784        deFn("car", function(c) { return car(evalLisp(c.car)); });
Rem     0785        deFn("cdar", function(c) { return cdr(car(evalLisp(c.car))); });
Rem     0786        deFn("cddr", function(c) { return cdr(cdr(evalLisp(c.car))); });
Rem     0787        deFn("cdr", function(c) { return cdr(evalLisp(c.car)); });
Rem     0788        deFn("chop", function(c) { var cv = evalLisp(c.car);
Rem     0789        "   if ((cv === NIL) || (cv instanceof Cell)) return cv;"
Rem     0790        "   var s = (cv instanceof Symbol) ? cv.valueOf() : cv.toString();"
Rem     0791        "   if (s === null) return NIL;"
Rem     0792        "   var arr = s.split(""""), v = NIL;"
Rem     0793        "   while (arr.length > 0) v = new Cell(newTransSymbol(arr.pop()), v);"
Rem     0794        "   return v;"
Rem     0795        });
Rem     0796        deFn("cond", function(c) {
Rem     0797        "   while (c.car instanceof Cell) {"
Rem     0798        "       if (aTrue(evalLisp(c.car.car))) return aPop(prog(c.car.cdr));"
Rem     0799        "       c = c.cdr;"
Rem     0800        "   }"
Rem     0801        "   return NIL;"
Rem     0802        });
Rem     0803        deFn("cons", function(c) { var r = new Cell(evalLisp(c.car), evalLisp(c.cdr.car)), t = r;
Rem     0804        "   c = c.cdr.cdr;"
Rem     0805        "   while (c !== NIL) { var d = new Cell(t.cdr, evalLisp(c.car)); t.cdr = d; t = d; c = c.cdr; }"
Rem     0806        "   return r;"
Rem     0807        });
Rem     0808        deFn("de", function(c) { var old = c.car.getVal();
Rem     0809        "   setSymbolValue(c.car, c.cdr);"
Rem     0810        "   if ((old !== NIL) && !eqVal(c.cdr, old)) _warn(""# "" + c.car.valueOf() + "" redefined"");"
Rem     0811        "   return c.car;"
Rem     0812        });
Rem     0813        deFn("dec", function(c) {
Rem     0814        "   if (c === NIL) return NIL;"
Rem     0815        "   var ns = evalLisp(c.car);"
Rem     0816        "   if (ns instanceof Number) return new Number(ns - 1);"
Rem     0817        "   var v = new Number(ns.getVal() - ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));"
Rem     0818        "   ns.setVal(v); return v;"
Rem     0819        });
Rem     0820        deFn("delete", function(c) { var a = evalLisp(c.car), lst = evalLisp(c.cdr.car);
Rem     0821        "   if (!(lst instanceof Cell)) return lst;"
Rem     0822        "   if (eqVal(a, lst.car)) return lst.cdr;"
Rem     0823        "   mkNew(); link(lst.car); lst = lst.cdr;"
Rem     0824        "   while (lst instanceof Cell) {"
Rem     0825        "       if (eqVal(a, lst.car)) { mk[0].t.cdr = lst.cdr; return mkResult(); }"
Rem     0826        "       link(lst.car); lst = lst.cdr;"
Rem     0827        "   }"
Rem     0828        "   mk[0].t.cdr = lst;  // taking care of dotted tail"
Rem     0829        "   return mkResult();"
Rem     0830        });
Rem     0831        deFn("do", function(c) {
Rem     0832        "   var n = evalLisp(c.car);"
Rem     0833        "   if (n === NIL) return NIL;"
Rem     0834        "   var step = 1, b = c.cdr, v = NIL;"
Rem     0835        "   if (n === T) { n = 1; step = 0; }"
Rem     0836        "   for (var i=1; i<=n; i+=step) {"
Rem     0837        "       var r = iter(b); v = r.v; if (r.m) break;"
Rem     0838        "   }"
Rem     0839        "   return v;"
Rem     0840        });
Rem     0841        "deFn(""eval"", function(c) { return evalLisp(evalLisp(c.car)); }); // TODO: binding env. offset cnt"
Rem     0842        deFn("fin", function(c) { c = evalLisp(c.car); while (c instanceof Cell) { c = c.cdr; }; return c; });
Rem     0843        deFn("for", function(c) {
Rem     0844        "   var s = null, s2 = null, v = NIL;"
Rem     0845        "   if (c.car instanceof Symbol) {"
Rem     0846        "       s = c.car;"
Rem     0847        "   } else if (c.car.cdr instanceof Symbol) {"
Rem     0848        "       s2 = c.car.car; s = c.car.cdr;"
Rem     0849        "   }"
Rem     0850        "   if (s != null) {"
Rem     0851        "       s.pushValue(NIL);   if (s2 != null) s2.pushValue(ZERO);"
Rem     0852        "       var nl = evalLisp(c.cdr.car), b = c.cdr.cdr, i = 0;"
Rem     0853        "       if (nl instanceof Number) {"
Rem     0854        "           //alert(""for: 1st form""); // (for I 3 (js:confirm I))"
Rem     0855        "           while (++i <= nl) {"
Rem     0856        "               s.setVal(new Number(i));"
Rem     0857        "               var r = iter(b); v = r.v; if (r.m) break;"
Rem     0858        "           }"
Rem     0859        "       } else {"
Rem     0860        "           //alert(""for: 2nd form""); // (for (I . X) (22 33 44) (js:confirm (+ I X)) (+ I X))"
Rem     0861        "           while (nl instanceof Cell) {"
Rem     0862        "               s.setVal(nl.car); if (s2 != null) s2.setVal(new Number(++i));"
Rem     0863        "               var r = iter(b); v = r.v; if (r.m) break;"
Rem     0864        "               nl = nl.cdr;"
Rem     0865        "           }"
Rem     0866        "       }"
Rem     0867        "   } else {"
Rem     0868        "       //alert(""for: 3rd form"");"
Rem     0869        "       if (c.car.car instanceof Symbol) {"
Rem     0870        "           s = c.car.car;"
Rem     0871        "       } else {"
Rem     0872        "           s2 = c.car.car.car; s = c.car.car.cdr;"
Rem     0873        "       }"
Rem     0874        "       s.pushValue(evalLisp(c.car.cdr.car));   if (s2 != null) s2.pushValue(ZERO);"
Rem     0875        "       var a2p = c.car.cdr.cdr, a2 = a2p.car, b = c.cdr, i = 0;"
Rem     0876        "       var p = (a2p.cdr instanceof Cell) ? a2p.cdr.car : null;"
Rem     0877        "       while (evalLisp(a2) !== NIL) {"
Rem     0878        "           if (s2 != null) s2.setVal(new Number(++i));"
Rem     0879        "           var r = iter(b); v = r.v; if (r.m) break;"
Rem     0880        "           if (p != null) s.setVal(evalLisp(p));"
Rem     0881        "       }"
Rem     0882        "   }"
Rem     0883        "   s.popValue();   if (s2 != null) s2.popValue();"
Rem     0884        "   return v;"
Rem     0885        });
Rem     0886        deFn("get", function(c) { return getAlg(evalArgs(c)); });
Rem     0887        deFn("getl", function(c) { var s = getAlg(evalArgs(c));
Rem     0888        "   if (s instanceof Symbol) return s.props;"
Rem     0889        "   throw new Error(newErrMsg(SYM_EXP, s));"
Rem     0890        });
Rem     0891        deFn("idx", function(c) { var s = evalLisp(c.car);
Rem     0892        "   if (!(s instanceof Symbol)) return NIL;"
Rem     0893        "   if (c.cdr === NIL) { mkNew(); idxLinkSorted(s.getVal()); return mkResult(); }"
Rem     0894        "   var a = evalLisp(c.cdr.car);"
Rem     0895        "   if (c.cdr.cdr === NIL) return idxLookup(s, a);"
Rem     0896        "   return (evalLisp(c.cdr.cdr.car) === NIL) ? idxDelete(s, a) : idxInsert(s, a);"
Rem     0897        });
Rem     0898        deFn("if", function(c) { return aTrue(evalLisp(c.car)) ? aPop(evalLisp(c.cdr.car)) : prog(c.cdr.cdr); });
Rem     0899        deFn("ifn", function(c) { return aTrue(evalLisp(c.car)) ? aPop(prog(c.cdr.cdr)) : evalLisp(c.cdr.car); });
Rem     0900        deFn("inc", function(c) {
Rem     0901        "   if (c === NIL) return NIL;"
Rem     0902        "   var ns = evalLisp(c.car);"
Rem     0903        "   if (ns instanceof Number) return new Number(ns + 1);"
Rem     0904        "   var v = new Number(ns.getVal() + ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));"
Rem     0905        "   ns.setVal(v); return v;"
Rem     0906        });
Rem     0907        deFn("length", function(c) { var cv = evalLisp(c.car), v = 0;
Rem     0908        "   if (cv instanceof Number) { v = cv.toString().length; }"
Rem     0909        "   else if (cv instanceof Symbol) { v = cv.lock ? cv.toValueString().length :"
Rem     0910        "       (cv.name === null) ? 0 : cv.name.length; }"
Rem     0911        "   else if (cv instanceof Cell) { var cs = cv;"
Rem     0912        "       while (cs !== NIL) { v++; cs = cs.cdr; if (cs === cv) return T; }}"
Rem     0913        "   return new Number(v);"
Rem     0914        });
Rem     0915        deFn("let", function(c) {
Rem     0916        "   var symArr = [], p = c.cdr;"
Rem     0917        "   if (c.car instanceof Symbol) {"
Rem     0918        "       if (c.car !== NIL) {"
Rem     0919        "           c.car.pushValue(evalLisp(c.cdr.car)); symArr.push(c.car); p = c.cdr.cdr;"
Rem     0920        "       }"
Rem     0921        "   } else if (c.car instanceof Cell) {"
Rem     0922        "       var sv = c.car;"
Rem     0923        "       while (sv !== NIL) {"
Rem     0924        "           sv.car.pushValue(evalLisp(sv.cdr.car)); symArr.push(sv.car); sv = sv.cdr.cdr;"
Rem     0925        "       }"
Rem     0926        "   }"
Rem     0927        "   var v = prog(p);"
Rem     0928        "   while (symArr.length > 0) { symArr.pop().popValue(); }"
Rem     0929        "   return v;"
Rem     0930        });
Rem     0931        deFn("link", linkc);
Rem     0932        deFn("list", function(c) { return (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL); });
Rem     0933        deFn("load", function(c) { var r = NIL;
Rem     0934        "   while (c instanceof Cell) {"
Rem     0935        "       var cv = evalLisp(c.car);"
Rem     0936        "       if (cv instanceof Symbol) {"
Rem     0937        "           var f = cv.toValueString();"
Rem     0938        "           if (f.charAt(0) == ""-"") {"
Rem     0939        "               r = parseList(new Source(""("" + f.substring(1) + "")""), true);"
Rem     0940        "           } else {"
Rem     0941        "               r = (f.match(/\.js$/)) ? loadJavaScript(f) : loadLisp(f);"
Rem     0942        "           }"
Rem     0943        "       }"
Rem     0944        "       c = c.cdr;"
Rem     0945        "   }"
Rem     0946        "   return r;"
Rem     0947        });
Rem     0948        deFn("loop", function(c) {
Rem     0949        "   var v = NIL; while (true) { var r = iter(c); v = r.v; if (r.m) break; }; return v;"
Rem     0950        });
Rem     0951        deFn("make", function(c) { mkNew(); prog(c); return mkResult(); });
Rem     0952        deFn("mapc", function(c) { var r = NIL, fn = evalLisp(c.car), ci = evalArgs(c.cdr);
Rem     0953        "   if (! (fn instanceof Symbol)) fn = box(fn);"
Rem     0954        "   while (ci.car !== NIL) { var cj = ci; mkNew();"
Rem     0955        "       while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }"
Rem     0956        "       r = evalLisp(new Cell(fn, unevalArgs(mkResult())));"
Rem     0957        "   }"
Rem     0958        "   return r;"
Rem     0959        });
Rem     0960        deFn("mapcar", function(c) { var fn = evalLisp(c.car), ci = evalArgs(c.cdr);
Rem     0961        "   if (! (fn instanceof Symbol)) fn = box(fn);"
Rem     0962        "   mkNew();"
Rem     0963        "   while (ci.car !== NIL) { var cj = ci; mkNew();"
Rem     0964        "       //if (!confirm(lispToStr(cj))) throw new Error(""mapcar aborted"");"
Rem     0965        "       while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }"
Rem     0966        "       link(evalLisp(new Cell(fn, unevalArgs(mkResult()))));"
Rem     0967        "   }"
Rem     0968        "   return mkResult();"
Rem     0969        });
Rem     0970        deFn("next", function(c) { evFrames.car = evFrames.car.cdr; return evFrames.car.car; });
Rem     0971        deFn("not", function(c) { return (evalLisp(c.car) === NIL) ? T : NIL; });
Rem     0972        deFn("nth", function(c) { var lst = evalArgs(c); c = lst.cdr;
Rem     0973        "   do { lst = nth(lst.car, numeric(c.car)); c = c.cdr; } while(c !== NIL); return lst; });"
Rem     0974        // pack has no support for circular lists, same as in PicoLisp
Rem     0975        deFn("pack", function(c) { return (c !== NIL) ? newTransSymbol(valueToStr(evalArgs(c))) : NIL; });
Rem     0976        deFn("pass", function(c) { return applyFn(c.car, evFrames.car.cdr, c.cdr); });
Rem     0977        deFn("pop", function(c) { var cv = evalLisp(c.car);
Rem     0978        "   if (cv.getVal) {"
Rem     0979        "       var v = cv.getVal();"
Rem     0980        "       if (v instanceof Cell) { cv.setVal(v.cdr); return v.car; }"
Rem     0981        "       if (v === NIL) return NIL;"
Rem     0982        "       if (cv instanceof Cell) return cv.car;"
Rem     0983        "   }"
Rem     0984        "   throw new Error(newErrMsg(VAR_EXP, cv));"
Rem     0985        });
Rem     0986        deFn("prin", function(c) {
Rem     0987        "   c = evalArgs(c); _stdPrint(c.toValueString());"
Rem     0988        "   while (c.cdr !== NIL) { c = c.cdr; }; return c.car;"
Rem     0989        });
Rem     0990        deFn("prinl", function(c) {
Rem     0991        "   c = evalArgs(c); _stdPrint(c.toValueString() + ""\n"");"
Rem     0992        "   while (c.cdr !== NIL) { c = c.cdr; }; return c.car;"
Rem     0993        });
Rem     0994
Rem     0995        function printx(c, x) { var arr = [];
Rem     0996        "   c = evalArgs(c); arr.push(lispToStr(c.car));"
Rem     0997        "   while (c.cdr !== NIL) { c = c.cdr; arr.push(lispToStr(c.car)); }"
Rem     0998        "   _stdPrint(arr.join("" "") + x); return c.car;"
Rem     0999        }
Rem     1000
Rem     1001        deFn("print", function(c) { return printx(c, ""); });
Rem     1002        deFn("println", function(c) { return printx(c, "\n"); });
Rem     1003        deFn("printsp", function(c) { return printx(c, " "); });
Rem     1004        deFn("prog", prog);
Rem     1005        deFn("push", function(c) { var t = evalLisp(c.car), v;
Rem     1006        "   if (t.getVal) {"
Rem     1007        "       do { c = c.cdr; v = evalLisp(c.car); t.setVal(new Cell(v, t.getVal())); } while (c.cdr !== NIL);"
Rem     1008        "       return v;"
Rem     1009        "   }"
Rem     1010        "   throw new Error(newErrMsg(VAR_EXP, t));"
Rem     1011        });
Rem     1012        deFn("put", function(c) {
Rem     1013        "   var kc, vc;"
Rem     1014        "   c = evalArgs(c); mkNew();"
Rem     1015        "   do { link(c.car); kc = c.cdr; vc = kc.cdr; c = c.cdr; } while (vc.cdr !== NIL);"
Rem     1016        "   var s = getAlg(mkResult()), k = kc.car;"
Rem     1017        "   if (!(s instanceof Symbol)) throw new Error(newErrMsg(SYM_EXP, s));"
Rem     1018        "   if (s === NIL) throw new Error(newErrMsg(PROT_SYM, s));"
Rem     1019        "   if (eqVal(k, ZERO)) {"
Rem     1020        "       s.setVal(vc.car);"
Rem     1021        "   } else {"
Rem     1022        "       var pLst = s.props, pre = NIL;"
Rem     1023        "       while (pLst !== NIL) {"
Rem     1024        "           var pc = pLst.car, pk = (pc instanceof Cell) ? pc.cdr : pc;"
Rem     1025        "           if (pk === k) {"
Rem     1026        "               if (pre === NIL) { s.props = pLst.cdr; } else { pre.cdr = pLst.cdr; }   // removing old"
Rem     1027        "               break;"
Rem     1028        "           }"
Rem     1029        "           pre = pLst; pLst = pLst.cdr;"
Rem     1030        "       }"
Rem     1031        "       if (vc.car !== NIL) {"
Rem     1032        "           var pc = new Cell((vc.car === T) ? k : new Cell(vc.car, k), s.props);"
Rem     1033        "           s.props = pc;"
Rem     1034        "       }"
Rem     1035        "       //alert(""put props: "" + lispToStr(s.props));"
Rem     1036        "   }"
Rem     1037        "   return vc.car;"
Rem     1038        });
Rem     1039        deFn("queue", function(c) { var s = evalLisp(c.car);
Rem     1040        "   if (s.getVal) {"
Rem     1041        "       var cv = s.getVal(), t = new Cell(evalLisp(c.cdr.car), NIL);"
Rem     1042        "       if (cv === NIL) { s.setVal(t); return t.car; }"
Rem     1043        "       if (cv instanceof Cell) {"
Rem     1044        "           while (cv.cdr !== NIL) cv = cv.cdr;"
Rem     1045        "           cv.cdr = t; return t.car;"
Rem     1046        "       }"
Rem     1047        "   }"
Rem     1048        "   throw new Error(newErrMsg(VAR_EXP, s));"
Rem     1049        });
Rem     1050        deFn("quote", function(c) { return c; });
Rem     1051        var QUOTE = getSymbol("quote");
Rem     1052        deFn("rand", function(c) { var r = Math.random();
Rem     1053        "   if (c === NIL) return new Number(r);    // range 0.0 .. 1.0"
Rem     1054        "   var n = evalLisp(c.car);"
Rem     1055        "   if (n === T) return (r < 0.5) ? NIL : T;"
Rem     1056        "   return new Number((-numeric(n) + numeric(evalLisp(c.cdr.car))) * r + n);"
Rem     1057        });
Rem     1058        deFn("range", function(c) {
Rem     1059        "   var n = numeric(evalLisp(c.car)), n2 = numeric(evalLisp(c.cdr.car)), s = evalLisp(c.cdr.cdr.car);"
Rem     1060        "   if (s === NIL) { s = 1; } else if (numeric(s) <= 0) throw new Error(newErrMsg(BAD_ARG, s));"
Rem     1061        "   if (n > n2) s = -s;"
Rem     1062        "   mkNew(); do { link(n); n = new Number(n + s); } while ((s > 0) ? (n <= n2) : (n >= n2));"
Rem     1063        "   return mkResult();"
Rem     1064        });
Rem     1065        deFn("rest", function(c) { return evFrames.car.cdr; });
Rem     1066        deFn("reverse", function(c) { var lst = evalLisp(c.car), r = NIL;
Rem     1067        "   if (!(lst instanceof Cell)) return NIL;"
Rem     1068        "   do { r = new Cell(lst.car, r); lst = lst.cdr; } while (lst instanceof Cell);"
Rem     1069        "   return r;"
Rem     1070        });
Rem     1071        deFn("setq", function(c) {
Rem     1072        "   var v = NIL;"
Rem     1073        "   while (c instanceof Cell) {"
Rem     1074        "       v = (c.cdr instanceof Cell) ? evalLisp(c.cdr.car) : NIL;"
Rem     1075        "       setSymbolValue(c.car, v);"
Rem     1076        "       c = (c.cdr instanceof Cell) ? c.cdr.cdr : NIL;"
Rem     1077        "   }"
Rem     1078        "   return v;"
Rem     1079        });
Rem     1080
Rem     1081        function ascending(a, b) { return ltVal(a, b) ? -1 : eqVal(a, b) ? 0 : 1; }
Rem     1082        //function descending(a, b) { return ltVal(a, b) ? 1 : eqVal(a, b) ? 0 : -1; }
Rem     1083
Rem     1084        "var compExprArr = [];  // sort expression stack"
Rem     1085
Rem     1086        function CompExpr(fn) {
Rem     1087        "   if (! (fn instanceof Symbol)) fn = box(fn);"
Rem     1088        "   this.arg1Sym = box(NIL);"
Rem     1089        "   this.arg2Sym = box(NIL);"
Rem     1090        "   this.expr = new Cell(fn, new Cell(this.arg1Sym, new Cell(this.arg2Sym, NIL)));"
Rem     1091        }
Rem     1092
Rem     1093        CompExpr.prototype.evalTrue = function(a, b) {
Rem     1094        "   this.arg1Sym.cdr = a;   // faster than this.arg1Sym.setVal(a);"
Rem     1095        "   this.arg2Sym.cdr = b;"
Rem     1096        "   return (evalLisp(this.expr) === T);"
Rem     1097        }
Rem     1098
Rem     1099        function lispFnOrder(a, b) { return compExprArr[0].evalTrue(a, b) ? -1 : 1; }
Rem     1100
Rem     1101        deFn("sort", function(c) {
Rem     1102        "   var lst = evalLisp(c.car);"
Rem     1103        "   if (lst instanceof Cell) {"
Rem     1104        "       var fn = evalLisp(c.cdr.car), arr = [];"
Rem     1105        "       do { arr.push(lst.car); lst = lst.cdr; } while (lst instanceof Cell);"
Rem     1106        "       if (fn === NIL) {"
Rem     1107        "           arr.sort(ascending);"
Rem     1108        "       } else {"
Rem     1109        "           compExprArr.unshift(new CompExpr(fn));"
Rem     1110        "           arr.sort(lispFnOrder);  // roughly twice as slow as 'ascending' (above), if fn is '>'"
Rem     1111        "           compExprArr.shift();"
Rem     1112        "       }"
Rem     1113        "       lst = NIL;"
Rem     1114        "       while (arr.length > 0) lst = new Cell(arr.pop(), lst);"
Rem     1115        "   }"
Rem     1116        "   return lst;"
Rem     1117        });
Rem     1118        deFn("str", function(c) {
Rem     1119        "   var cv = evalLisp(c.car);"
Rem     1120        "   if (cv instanceof Symbol) {"
Rem     1121        "       var cs = evalLisp(c.cdr.car);"
Rem     1122        "       return (cs === NIL) ? cachedTextParse(cv.valueOf()) :"
Rem     1123        "               parseList(new Source(cv.valueOf(), cs.valueOf()));"
Rem     1124        "   }"
Rem     1125        "   if (cv instanceof Cell) {"
Rem     1126        "       var arr = [];"
Rem     1127        "       do { arr.push(lispToStr(cv.car)); cv = cv.cdr; } while (cv instanceof Cell);"
Rem     1128        "       return newTransSymbol(arr.join("" ""));"
Rem     1129        "   }"
Rem     1130        "   if (cv === NIL) return NIL;"
Rem     1131        "   throw new Error(newErrMsg(CELL_EXP, cv));"
Rem     1132        });
Rem     1133        deFn("tail", function(c) {
Rem     1134        "   var cl = evalLisp(c.car), lst = evalLisp(c.cdr.car);"
Rem     1135        "   if (cl instanceof Cell) {"
Rem     1136        "       var cv = cl, arr = []; while (lst !== NIL) { arr.unshift(lst.car); lst = lst.cdr; }"
Rem     1137        "       if (arr.length == 0) return NIL;"
Rem     1138        "       var sub = []; while (cl !== NIL) { sub.unshift(cl.car); cl = cl.cdr; }"
Rem     1139        "       if (arr.length < sub.length) return NIL;"
Rem     1140        "       for (var i=0; i<sub.length; i++) {"
Rem     1141        "           if (!eqVal(sub[i], arr[i])) return NIL;"
Rem     1142        "       }"
Rem     1143        "       return cv;"
Rem     1144        "   }"
Rem     1145        "   if (cl instanceof Number) {"
Rem     1146        "       cl = Math.round(cl);"
Rem     1147        "       if (cl > 0) {"
Rem     1148        "           var arr = []; while (lst !== NIL) { arr.push(lst); lst = lst.cdr; }"
Rem     1149        "           return arr[Math.max(arr.length - cl, 0)];"
Rem     1150        "       }"
Rem     1151        "       if (cl < 0) {"
Rem     1152        "           do { lst = lst.cdr; if (++cl == 0) return lst; } while (lst !== NIL);"
Rem     1153        "       }"
Rem     1154        "       return NIL; // cl == 0, or we did not return above"
Rem     1155        "   }"
Rem     1156        "   if (cl === NIL) return NIL;"
Rem     1157        "   throw new Error(newErrMsg(NUM_EXP, cl));"
Rem     1158        });
Rem     1159        deFn("trace", function(c) { var s = evalLisp(c.car), f = evalLisp(s);
Rem     1160        "   if (f instanceof Cell) {"
Rem     1161        "       setSymbolValue(s, new Cell(f.car, new Cell(new Cell(gSym[""$""], new Cell(s, f)), NIL)));"
Rem     1162        "   } else {"
Rem     1163        "       setSymbolValue(s, new Cell(A1, new Cell(new Cell(gSym[""$""], new Cell(s,"
Rem     1164        "           new Cell(A1, new Cell(new Cell(gSym[""pass""], new Cell(box(f), NIL)), NIL)))), NIL)));"
Rem     1165        "   }"
Rem     1166        "   return s;"
Rem     1167        });
Rem     1168        deFn("untrace", function(c) {
Rem     1169        "   var s = evalLisp(c.car), f = cdr(cdr(car(cdr(evalLisp(s))))), b = car(cdr(f));"
Rem     1170        "   if (car(b) === gSym[""pass""]) f = evalLisp(car(cdr(b)));"
Rem     1171        "   setSymbolValue(s, f);"
Rem     1172        "   return s;"
Rem     1173        });
Rem     1174        deFn("usec", function(c) { return new Number(((new Date()).getTime() - startupMillis) * 1000); });
Rem     1175        deFn("yoke", function(c) { if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));
Rem     1176        "   var tn = (mk[0].t === NIL);"
Rem     1177        "   do { var h = new Cell(evalLisp(c.car), mk[0].h);"
Rem     1178        "       mk[0].h = h; if (tn) { mk[0].t = h; tn = false; }"
Rem     1179        "       c = c.cdr; } while (c !== NIL);"
Rem     1180        "   return mk[0].h.car;"
Rem     1181        });
Rem     1182        deFn("zero", function(c) {
Rem     1183        "   do { setSymbolValue(c.car, ZERO); c = c.cdr; } while (c instanceof Cell); return ZERO;"
Rem     1184        });
Rem     1185        // Test: (let (A 3 B 5) ($ f1 (A B) ($ f2 (A B) (* A B))))
Rem     1186        "// (de foo (X Y . @) (+ X Y (next) (next))) (trace 'foo) (foo 4 5 6 7) // not yet"
Rem     1187        deFn("$", function(c) { var lst = c.cdr.car;
Rem     1188        "   gTrcIndent += "" "";"
Rem     1189        "   _stdPrint(gTrcIndent + c.car.name + "" :"");    // TODO: Handle methods"
Rem     1190        "   while (lst instanceof Cell) { _stdPrint("" "" + lispToStr(lst.car.getVal())); lst = lst.cdr; }"
Rem     1191        "   if (lst === A1) {"
Rem     1192        "       lst = evFrames.car.cdr;"
Rem     1193        "       while (lst instanceof Cell) { _stdPrint("" "" + lispToStr(lst.car)); lst = lst.cdr; }"
Rem     1194        "   }"
Rem     1195        "   _stdPrint(""\n"");"
Rem     1196        "   var res = prog(c.cdr.cdr);"
Rem     1197        "   _stdPrint(gTrcIndent + c.car.name + "" = "" + lispToStr(res) + ""\n"");"
Rem     1198        "   gTrcIndent = gTrcIndent.substring(1);"
Rem     1199        "   return res;"
Rem     1200        });
Rem     1201        deFn("+", function(c) { var t = 0;
Rem     1202        "   do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
Rem     1203        "       t += numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
Rem     1204        });
Rem     1205        deFn("-", function(c) { var t = evalLisp(c.car);
Rem     1206        "   if (t === NIL) return NIL;"
Rem     1207        "   t = numeric(t); c = c.cdr;"
Rem     1208        "   if (c === NIL) return new Number(-t);"
Rem     1209        "   do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
Rem     1210        "       t -= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
Rem     1211        });
Rem     1212        deFn("*", function(c) { var t = 1;
Rem     1213        "   do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
Rem     1214        "       t *= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
Rem     1215        });
Rem     1216        "deFn(""/"", function(c) { return div(c, function(a, b) { return a / b; }); }); // floating point division"
Rem     1217        deFn("/t", function(c) { return div(c, function(a, b) { var d = a / b;
Rem     1218        "   return (d >= 0) ? Math.floor(d) : Math.ceil(d); }); }); // truncated division"
Rem     1219        deFn("=", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1220        "   while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (!eqVal(cv, dv)) return NIL; }; return T; });"
Rem     1221        deFn("==", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1222        "   while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (cv !== dv) return NIL; }; return T; });"
Rem     1223        deFn("<", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1224        "   while (d.cdr !== NIL) {"
Rem     1225        "       d = d.cdr; dv = evalLisp(d.car); if (!ltVal(cv, dv)) return NIL;"
Rem     1226        "       cv = dv;"
Rem     1227        "   }; return T;"
Rem     1228        });
Rem     1229        deFn("<=", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1230        "   while (d.cdr !== NIL) {"
Rem     1231        "       d = d.cdr; dv = evalLisp(d.car); if (ltVal(dv, cv)) return NIL;"
Rem     1232        "       cv = dv;"
Rem     1233        "   }; return T;"
Rem     1234        });
Rem     1235        deFn(">", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1236        "   while (d.cdr !== NIL) {"
Rem     1237        "       d = d.cdr; dv = evalLisp(d.car); if (!ltVal(dv, cv)) return NIL;"
Rem     1238        "       cv = dv;"
Rem     1239        "   }; return T;"
Rem     1240        });
Rem     1241        deFn(">=", function(c) { var cv = evalLisp(c.car), d = c, dv;
Rem     1242        "   while (d.cdr !== NIL) {"
Rem     1243        "       d = d.cdr; dv = evalLisp(d.car); if (ltVal(cv, dv)) return NIL;"
Rem     1244        "       cv = dv;"
Rem     1245        "   }; return T;"
Rem     1246        });
Rem     1247        deFn(";", function(c) { return getAlg(new Cell(evalLisp(c.car), c.cdr)); });
Rem     1248
Rem     1249        function evalDef(def, inExprLst) {
Rem     1250        "   //alert(""evalDef: "" + lispToStr(def.cdr) + "", "" + lispToStr(inExprLst));"
Rem     1251        "   var locVars = null, locSym = null, evFrame = null;"
Rem     1252        "   if (def.car instanceof Symbol) {"
Rem     1253        "       if (def.car === A1) {"
Rem     1254        "           evFrame = new Cell(NIL, evalArgs(inExprLst));"
Rem     1255        "           evFrames = new Cell(evFrame, evFrames); // pushing evFrame onto evFrames"
Rem     1256        "       } else {"
Rem     1257        "           locSym = def.car;"
Rem     1258        "           locSym.pushValue(inExprLst);    // Binding unevaluated list to a single symbol"
Rem     1259        "       }"
Rem     1260        "   } else {"
Rem     1261        "       locVars = def.car;"
Rem     1262        "       var evArgs = evalArgs(inExprLst);"
Rem     1263        "       // Saving old symbol values and binding new values ..."
Rem     1264        "       while (locVars instanceof Cell) {"
Rem     1265        "           //if (!confirm(""locVars: "" + lispToStr(locVars.car))) throw new Error(""evalDef aborted"");"
Rem     1266        "           locVars.car.pushValue(evArgs.car);"
Rem     1267        "           locVars = locVars.cdr;"
Rem     1268        "           evArgs = evArgs.cdr;"
Rem     1269        "       }"
Rem     1270        "       locVars = def.car;"
Rem     1271        "   }"
Rem     1272        "   // Executing body ..."
Rem     1273        "   var res = prog(def.cdr);"
Rem     1274        "   // Restoring previous symbol values ..."
Rem     1275        "   if (locSym instanceof Symbol) locSym.popValue();"
Rem     1276        "   if (locVars instanceof Cell) {"
Rem     1277        "       while (locVars instanceof Cell) { locVars.car.popValue(); locVars = locVars.cdr; }"
Rem     1278        "   }"
Rem     1279        "   if (evFrame instanceof Cell) evFrames = evFrames.cdr;       // popping evFrame"
Rem     1280        "   return res;"
Rem     1281        }
Rem     1282
Rem     1283        function evalLisp(lst) {
Rem     1284        "   if (lst instanceof Symbol) return lst.cdr;"
Rem     1285        "   if (lst instanceof Cell) {"
Rem     1286        "       if (typeof lst.car.cdr === ""function"") {"
Rem     1287        "           return lst.car.cdr(lst.cdr);"
Rem     1288        "       }"
Rem     1289        "       if (lst.car instanceof Symbol) {"
Rem     1290        "           if (lst.car.cdr === NIL) throw new Error(newErrMsg(UNDEF, lst.car));"
Rem     1291        "           return evalDef(lst.car.cdr, lst.cdr);"
Rem     1292        "       }"
Rem     1293        "       if ((lst.car.car === QUOTE) && (lst.car.cdr instanceof Cell)) {"
Rem     1294        "           return evalDef(lst.car.cdr, lst.cdr);"
Rem     1295        "       }"
Rem     1296        "       if (lst.car instanceof Number) return lst;"
Rem     1297        "       throw new Error(newErrMsg(EXEC_OR_NUM_EXP, lst.car));"
Rem     1298        "   }"
Rem     1299        "   return lst;     // a number, or text"
Rem     1300        }
Rem     1301
Rem     1302        function evalArgs(lst) {
Rem     1303        "   if (lst === NIL) return NIL;"
Rem     1304        "   var resLst = new Cell(NIL, NIL);    // to become new list of evaluation results"
Rem     1305        "   var res = resLst;"
Rem     1306        "   do {"
Rem     1307        "       //alert(""evalArgs: "" + lispToStr(lst.car));"
Rem     1308        "       res.car = evalLisp(lst.car);"
Rem     1309        "       lst = lst.cdr;"
Rem     1310        "       if (lst instanceof Cell) {"
Rem     1311        "           res.cdr = new Cell(NIL, NIL);"
Rem     1312        "           res = res.cdr;"
Rem     1313        "       }"
Rem     1314        "   } while (lst instanceof Cell);"
Rem     1315        "   return resLst;"
Rem     1316        }
Rem     1317
Rem     1318        function loadLisp(fileUrl) {
Rem     1319        "   gTrans = {};"
Rem     1320        "   var res = parseList(new Source(getFileSync(fileUrl)), true);"
Rem     1321        "   gTrans = {};"
Rem     1322        "   //alert(""loadLisp: "" + lispToStr(res));"
Rem     1323        "   return res;"
Rem     1324        }
Rem     1325
Rem     1326        function loadJavaScript(fileUrl) {
Rem     1327        "   return newTransSymbol(eval(getFileSync(fileUrl)).toString());"
Rem     1328        }
Rem     1329
Rem     1330        function _stdPrint(text) {
Rem     1331        "   if (typeof stdPrint === ""function"") stdPrint(text)"
Rem     1332        "   else // when function stdPrint is not available in front end"
Rem     1333        "   if (!confirm(""_stdPrint:\n"" + text)) throw new Error(""_stdPrint aborted"");"
Rem     1334        }
Rem     1335
Rem     1336        function _warn(msg) {
Rem     1337        "   if (typeof warn === ""function"") warn(msg);"
Rem     1338        }
Rem     1339
Rem     1340        /*
Rem     1341        * Objects of the Params class are used to deliver evaluated parameter values to
Rem     1342        * JavaScript functions. Some functions take an optional default input value.
Rem     1343        */
Rem     1344        function Params(lst) {
Rem     1345        "   this.lst = lst;"
Rem     1346        }
Rem     1347
Rem     1348        Params.prototype.any = function() {
Rem     1349        "   var val = null;"
Rem     1350        "   if (this.lst !== NIL) {"
Rem     1351        "       val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1352        "   }"
Rem     1353        "   return val;"
Rem     1354        }
Rem     1355
Rem     1356        Params.prototype.bool = function(val) {
Rem     1357        "   if (this.lst !== NIL) {"
Rem     1358        "       val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1359        "   }"
Rem     1360        "   if ((val === NIL) || (val === T)) return val.bool;"
Rem     1361        "   throw new Error(newErrMsg(BOOL_EXP, val));"
Rem     1362        }
Rem     1363
Rem     1364        Params.prototype.natObj = function() {
Rem     1365        "   if (this.lst !== NIL) {"
Rem     1366        "       val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1367        "   }"
Rem     1368        "   if ((val instanceof Symbol) && (val.obj !== undefined)) return val.obj;"
Rem     1369        "   throw new Error(newErrMsg(BOXNAT_EXP, val));"
Rem     1370        }
Rem     1371
Rem     1372        Params.prototype.num = function(val) {
Rem     1373        "   if (this.lst !== NIL) {"
Rem     1374        "       val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1375        "   }"
Rem     1376        "   if (val instanceof Number) return val;"
Rem     1377        "   throw new Error(newErrMsg(NUM_EXP, val));"
Rem     1378        }
Rem     1379
Rem     1380        Params.prototype.optNum = function() {
Rem     1381        "   if (this.lst !== NIL) {"
Rem     1382        "       var val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1383        "       if (val instanceof Number) return val;"
Rem     1384        "       throw new Error(newErrMsg(NUM_EXP, val));"
Rem     1385        "   }"
Rem     1386        "   return null;"
Rem     1387        }
Rem     1388
Rem     1389        Params.prototype.str = function(val) {
Rem     1390        "   if (this.lst !== NIL) {"
Rem     1391        "       val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
Rem     1392        "   }"
Rem     1393        "   if (val instanceof Symbol) return val.valueOf();"
Rem     1394        "   throw new Error(newErrMsg(SYM_EXP, val));"
Rem     1395        }
Rem     1396
Rem     1397        function symbolRefUrl(symbolName) {
Rem     1398        "   if (symbolName == ""NIL"") {"
Rem     1399        "       return ""ref.html#nilSym"";"
Rem     1400        "   } else if (symbolName.match(/^[a-zA-Z_]/)) {"
Rem     1401        "       return ""ref"" + symbolName.substring(0, 1).toUpperCase() + "".html#"" + symbolName;"
Rem     1402        "   } else if (symbolName.match(/^\*[a-zA-Z_]/)) {"
Rem     1403        "       return ""ref"" + symbolName.substring(1, 2) + "".html#"" + symbolName;"
Rem     1404        "   } else {"
Rem     1405        "       return ""ref_.html#"" + symbolName;"
Rem     1406        "   }"
Rem     1407        }
Rem     1408
Rem     1409
Rem     1410
Rem     1411        "   "
Rem     1412
Rem     1413
Rem     1414        </script>
Rem     1415
Rem     1416        <script type="text/javascript">
Rem     1417        /* 26nov10jk
Rem     1418        * (c) Jon Kleiser
Rem     1419        * http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js
Rem     1420        */
Rem     1421
Rem     1422        /* 26nov10jk
Rem     1423        * (c) Jon Kleiser
Rem     1424        */
Rem     1425
Rem     1426        getSymbol("js:E").setVal(new Number(Math.E));
Rem     1427        getSymbol("js:PI").setVal(new Number(Math.PI));
Rem     1428        getSymbol("js:Doc").setVal(boxNativeObject(document));
Rem     1429        getSymbol("js:Win").setVal(boxNativeObject(window));
Rem     1430
Rem     1431        deFn("js:alert", function(c) { var arr = [], v = NIL;
Rem     1432        "   c = evalArgs(c); while (c !== NIL) { v = c.car; arr.push(valueToStr(v)); c = c.cdr; }"
Rem     1433        "   alert(arr.join(""\n"")); return v;"
Rem     1434        });
Rem     1435
Rem     1436        deFn("js:confirm", function(c) { var arr = [];
Rem     1437        "   c = evalArgs(c); while (c !== NIL) { arr.push(valueToStr(c.car)); c = c.cdr; }"
Rem     1438        "   return confirm(arr.join(""\n"")) ? T : NIL;"
Rem     1439        });
Rem     1440
Rem     1441        // (js:prompt "What's your age?" "fiftysomething")
Rem     1442        deFn("js:prompt", function(c) {
Rem     1443        "   var r = prompt(valueToStr(evalLisp(c.car)), valueToStr(evalLisp(c.cdr.car)));"
Rem     1444        "   return (r !== null) ? newTransSymbol(r) : NIL;"
Rem     1445        });
Rem     1446
Rem     1447        deFn("js:getElementById", function(c) {
Rem     1448        "   var doc = document, elem = doc.getElementById(evalLisp(c.car).valueOf());"
Rem     1449        "   return (elem != null) ? boxNativeObject(elem) : NIL;"
Rem     1450        });
Rem     1451
Rem     1452        // (js:onEventLisp (js:getElementById "parGuide") "click" (prinl "A click on " js:Target))
Rem     1453        deFn("js:onEventLisp", function(c) {
Rem     1454        "   var objBox = evalLisp(c.car), obj = objBox.obj, evtType = evalLisp(c.cdr.car).valueOf();"
Rem     1455        "   obj[evtType + ""Lisp""] = c.cdr.cdr;    // Lisp code to execute on event"
Rem     1456        "   if (c.cdr.cdr != NIL) {"
Rem     1457        "       // Installing event handler"
Rem     1458        "       obj[""on"" + evtType] = function(evt) {"
Rem     1459        "           try {"
Rem     1460        "               var ts = getSymbol(""js:Target""); ts.pushValue(objBox);"
Rem     1461        "               var es = getSymbol(""js:Event""); es.pushValue(boxNativeObject(evt ? evt : window.event));"
Rem     1462        "               prog(obj[evtType + ""Lisp""]);"
Rem     1463        "               ts.popValue();"
Rem     1464        "               es.popValue();"
Rem     1465        "           } catch (e) { alert(evtType + ""Lisp: "" + e); }"
Rem     1466        "       };"
Rem     1467        "   } else {"
Rem     1468        "       // Removing event handler"
Rem     1469        "       obj[""on"" + evtType] = null;"
Rem     1470        "   }"
Rem     1471        "   return objBox;"
Rem     1472        });
Rem     1473
Rem     1474
Rem     1475        // (js:clearInterval intervalId)
Rem     1476        deFn("js:clearInterval", function(c) { return clearInterval(evalLisp(c.car)) ? T : NIL; });
Rem     1477
Rem     1478        // (js:clearTimeout timeoutId)
Rem     1479        deFn("js:clearTimeout", function(c) { return clearTimeout(evalLisp(c.car)) ? T : NIL; });
Rem     1480
Rem     1481        /* Most browsers seem to support the form of setInterval(f,t,p) and setTimeout(f,t,p) where
Rem     1482        the first parameter is of type function, and the parameters after the second are parameters
Rem     1483        to that function. If your browser requires the first parameter to be of type string, then
Rem     1484        you can use the two slightly longer alternatives.
Rem     1485        */
Rem     1486        // (js:setIntervalLisp (prinl "ping") 5000)
Rem     1487        deFn("js:setIntervalLisp", function(c) {
Rem     1488        "   var id = setInterval(evalLisp, evalLisp(c.cdr.car), c.car);"
Rem     1489        "   return new Number(id);"
Rem     1490        });
Rem     1491        /*
Rem     1492        deFn("js:setIntervalLisp", function(c) {
Rem     1493        "   var str = lispToStr(c.car);"
Rem     1494        "   gParseCache[str] = c.car;"
Rem     1495        "   var jsStr = ""evalLisp(gParseCache[\"""" + str.replace(/""/g, ""\\\"""") + ""\""])"";"
Rem     1496        "   var id = setInterval(jsStr, evalLisp(c.cdr.car));"
Rem     1497        "   return new Number(id);"
Rem     1498        });
Rem     1499        */
Rem     1500        // (js:setTimeoutLisp (prinl "ping") 3000)
Rem     1501        deFn("js:setTimeoutLisp", function(c) {
Rem     1502        "   var id = setTimeout(evalLisp, evalLisp(c.cdr.car), c.car);"
Rem     1503        "   return new Number(id);"
Rem     1504        });
Rem     1505        /*
Rem     1506        deFn("js:setTimeoutLisp", function(c) {
Rem     1507        "   var str = lispToStr(c.car);"
Rem     1508        "   gParseCache[str] = c.car;"
Rem     1509        "   var jsStr = ""evalLisp(gParseCache[\"""" + str.replace(/""/g, ""\\\"""") + ""\""])"";"
Rem     1510        "   var id = setTimeout(jsStr, evalLisp(c.cdr.car));"
Rem     1511        "   return new Number(id);"
Rem     1512        });
Rem     1513        */
Rem     1514
Rem     1515
Rem     1516        // Some reflection stuff similar to the 'java' and 'public' functions in ErsatzLisp
Rem     1517
Rem     1518        function applyConstructor(ctor, args) {
Rem     1519        "   switch (args.length) {"
Rem     1520        "       case 0: return new ctor();"
Rem     1521        "       case 1: return new ctor(args[0]);"
Rem     1522        "       case 2: return new ctor(args[0], args[1]);"
Rem     1523        "       case 3: return new ctor(args[0], args[1], args[2]);"
Rem     1524        "       // add more cases if you like"
Rem     1525        "   }"
Rem     1526        "   var jsStr = ""new ctor(args[0]"";"
Rem     1527        "   for (var i=1; i<args.length; i++) jsStr += "",args["" + i + ""]"";"
Rem     1528        "   jsStr += "")"";"
Rem     1529        "   return eval(jsStr);"
Rem     1530        }
Rem     1531
Rem     1532        // First a couple of conversion functions ...
Rem     1533        function lispToNativeData(vl) {
Rem     1534        "   if (vl instanceof Number) return vl.valueOf();  // primitive value required some places"
Rem     1535        "   if (vl instanceof Symbol) {"
Rem     1536        "       if (vl.obj !== undefined) return vl.obj;"
Rem     1537        "       return vl.toValueString();"
Rem     1538        "   }"
Rem     1539        "   if ((vl === NIL) || (vl === T)) return vl.bool;"
Rem     1540        "   return undefined;"
Rem     1541        }
Rem     1542
Rem     1543        function nativeToLispData(vn) {
Rem     1544        "   if ((typeof vn == ""number"") || (vn instanceof Number)) return new Number(vn);"
Rem     1545        "   if (vn instanceof String) vn = vn.valueOf();"
Rem     1546        "   if (typeof vn == ""string"") return (vn == """") ? NIL : newTransSymbol(vn);"
Rem     1547        "   if (vn instanceof Boolean) vn = vn.valueOf();"
Rem     1548        "   if ((vn === false) || (vn === null)) return NIL;"
Rem     1549        "   if (vn === true) return T;"
Rem     1550        "   return boxNativeObject(vn);"
Rem     1551        }
Rem     1552
Rem     1553        function lispParamsToArray(c) {
Rem     1554        "   var arr = [];"
Rem     1555        "   while (c !== NIL) {"
Rem     1556        "       arr.push(lispToNativeData(evalLisp(c.car))); c = c.cdr;"
Rem     1557        "   }"
Rem     1558        "   return arr;"
Rem     1559        }
Rem     1560
Rem     1561        // (js:eval "2+3")
Rem     1562        deFn("js:eval", function(c) { return nativeToLispData(eval(valueToStr(evalLisp(c.car)))); });
Rem     1563
Rem     1564        // (setq *MyArr (js:obj "Array" T)) (js:put *MyArr "2" "X") (list (js:get *MyArr 2) (js:get *MyArr "length"))
Rem     1565        // (js:obj (js:obj "Date" T) "getMinutes")
Rem     1566        // (js:obj (js:obj "Date" T 2010 10 20 15 15) "toString")
Rem     1567        // (let D (js:obj "Date" T) (js:obj D "setHours" 16 30) (js:obj D "toString"))
Rem     1568        deFn("js:obj", function(c) {
Rem     1569        "   var obj = evalLisp(c.car), msg = evalLisp(c.cdr.car);"
Rem     1570        "   if (msg === T) {"
Rem     1571        "       if (obj instanceof Symbol) {"
Rem     1572        "           var ctor = eval(obj.valueOf());"
Rem     1573        "           //if (typeof ctor != ""function"") throw new Error(newErrMsg(JS_CTORNAME_EXP, obj.valueOf()));"
Rem     1574        "           // typeof Date == ""function"", but typeof Image == ""object"" !"
Rem     1575        "           return nativeToLispData(applyConstructor(ctor, lispParamsToArray(c.cdr.cdr)));"
Rem     1576        "       }"
Rem     1577        "       throw new Error(newErrMsg(SYM_EXP, obj));"
Rem     1578        "   }"
Rem     1579        "   if ((obj instanceof Symbol) && (obj.obj instanceof Object)) {"
Rem     1580        "       var fn = obj.obj[lispToNativeData(msg)];"
Rem     1581        "       return nativeToLispData(fn.apply(obj.obj, lispParamsToArray(c.cdr.cdr)));"
Rem     1582        "   }"
Rem     1583        "   throw new Error(newErrMsg(BOXNAT_EXP, obj));"
Rem     1584        });
Rem     1585
Rem     1586        function jsGetPutAlg(c, put) {
Rem     1587        "   var obj = evalLisp(c.car), k;"
Rem     1588        "   if ((obj instanceof Symbol) && (obj.obj !== undefined)) {"
Rem     1589        "       obj = obj.obj; c = c.cdr;"
Rem     1590        "       do {"
Rem     1591        "           k = lispToNativeData(evalLisp(c.car));"
Rem     1592        "           c = c.cdr;"
Rem     1593        "           if (put && ! (c.cdr instanceof Cell)) {"
Rem     1594        "               var vl = evalLisp(c.car), vn = lispToNativeData(vl);"
Rem     1595        "               obj[k] = vn;    // handles both maps/keys and arrays/indices"
Rem     1596        "               return vl;"
Rem     1597        "           }"
Rem     1598        "           obj = obj[k];   // handles both maps/keys and arrays/indices"
Rem     1599        "       } while (c instanceof Cell);"
Rem     1600        "       return nativeToLispData(obj);"
Rem     1601        "   }"
Rem     1602        "   throw new Error(newErrMsg(BOXNAT_EXP, obj));"
Rem     1603        }
Rem     1604
Rem     1605        // (js:get js:Doc "body" "nodeName")
Rem     1606        deFn("js:get", function(c) { return jsGetPutAlg(c, false); });
Rem     1607
Rem     1608        // (js:put js:Doc "body" "contentEditable" "true")
Rem     1609        deFn("js:put", function(c) { return jsGetPutAlg(c, true); });
Rem     1610
Rem     1611
Rem     1612
Rem     1613        </script>
Rem     1614
Rem     1615        "   <script type=""text/javascript"">"
Rem     1616        var dcons, consLog, newcode;
Rem     1617        var initialLogScrollWidth = null;
Rem     1618        var currentPrintRec = null;
Rem     1619        var prevNewcode = "";
Rem     1620        "var savedNewcodes = [];    // maybe"
Rem     1621
Rem     1622        var consPrefs = {
Rem     1623        "   codeGuidesEnabled: true,"
Rem     1624        "   evaluateOnReturn: true,"
Rem     1625        "   newcodeClearAfterEvaluation: false,"
Rem     1626        "   newcodeFocusAfterEvaluation: true,"
Rem     1627        "   closeWindowWarningEnabled: false"
Rem     1628        };
Rem     1629
Rem     1630        function copyOldToNewcode(evt) {
Rem     1631        "   savedNewcodes.push(newcode.value);"
Rem     1632        "   newcode.focus();"
Rem     1633        "   if (evt.shiftKey) {"
Rem     1634        "       newcode.value += "" "" + this.firstChild.nodeValue; // append"
Rem     1635        "   } else {"
Rem     1636        "       newcode.value = this.firstChild.nodeValue;          // replace"
Rem     1637        "   }"
Rem     1638        "   prevNewcode = """";"
Rem     1639        "   updateCodeGuides();"
Rem     1640        }
Rem     1641
Rem     1642        function appendToHistory(styleclass, text) {
Rem     1643        "   currentPrintRec = null;"
Rem     1644        "   var pre = document.createElement(""pre"");"
Rem     1645        "   pre.setAttribute(""class"", styleclass);"
Rem     1646        "   var textNode = document.createTextNode(text);"
Rem     1647        "   pre.appendChild(textNode);"
Rem     1648        "   if (styleclass == ""oldcode"") pre.onclick = copyOldToNewcode;"
Rem     1649        "   consLog.appendChild(pre);"
Rem     1650        "   consLog.scrollTop = consLog.scrollHeight;"
Rem     1651        "   if (consLog.scrollWidth > initialLogScrollWidth) {"
Rem     1652        "       pre.style.width = """" + (consLog.scrollWidth - 8) + ""px"";"
Rem     1653        "   }"
Rem     1654        "   return {elem: pre, node: textNode};"
Rem     1655        }
Rem     1656
Rem     1657        function stdPrint(text) {
Rem     1658        "   if (currentPrintRec == null) {"
Rem     1659        "       currentPrintRec = appendToHistory(""print"", text);"
Rem     1660        "   } else {"
Rem     1661        "       currentPrintRec.node.nodeValue += text;"
Rem     1662        "   }"
Rem     1663        "   var len = text.length;"
Rem     1664        "   if (len > 0) {"
Rem     1665        "       currentPrintRec.elem.setAttribute(""class"","
Rem     1666        "           (text.charAt(len - 1) === ""\n"") ? ""println"" : ""print"");"
Rem     1667        "   }"
Rem     1668        }
Rem     1669
Rem     1670        function warn(msg) {
Rem     1671        "   appendToHistory(""warning"", msg);"
Rem     1672        }
Rem     1673
Rem     1674        function drawLisp(ctx, c) {
Rem     1675        "   var  segx = 16, dy = 16, c0 = c, h = 0;"
Rem     1676        "   if (c instanceof Cell) {"
Rem     1677        "       while (c instanceof Cell) {"
Rem     1678        "           ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(segx, 0); ctx.stroke();"
Rem     1679        "           ctx.save();"
Rem     1680        "           ctx.translate(segx, 0);"
Rem     1681        "           var cy = drawLisp(ctx, c.car);"
Rem     1682        "           h += cy;"
Rem     1683        "           ctx.restore();"
Rem     1684        "           c = c.cdr;"
Rem     1685        "           if (c !== NIL) {"
Rem     1686        "               ctx.translate(0, cy);"
Rem     1687        "               ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(0, -h); ctx.stroke();"
Rem     1688        "               if (c === c0) {"
Rem     1689        "                   // Indicating circular list ..."
Rem     1690        "                   var up = -dy/4;"
Rem     1691        "                   ctx.beginPath(); ctx.moveTo(0, up*2); ctx.lineTo(segx/2, up*2); ctx.stroke();"
Rem     1692        "                   ctx.beginPath(); ctx.moveTo(0, up); ctx.lineTo(segx/2, up); ctx.stroke();"
Rem     1693        "                   h += dy;"
Rem     1694        "                   break;"
Rem     1695        "               }"
Rem     1696        "           }"
Rem     1697        "       }"
Rem     1698        "       if ((c !== NIL) && (c !== c0)) {"
Rem     1699        "           ctx.fillText(lispToStr(c), -3, 12);"
Rem     1700        "           h += dy * 1.7;"
Rem     1701        "       }"
Rem     1702        "   } else {"
Rem     1703        "       ctx.fillText(lispToStr(c), 4, 3);"
Rem     1704        "       h = dy;"
Rem     1705        "   }"
Rem     1706        "   return h;"
Rem     1707        }
Rem     1708
Rem     1709        function hideMonitorIfCanvasNotSupported() {
Rem     1710        "   var cv = document.getElementById(""monView"");"
Rem     1711        "   if (cv && cv.getContext) return;"
Rem     1712        "   var mon = document.getElementById(""monitor"");"
Rem     1713        "   mon.style.display = ""none"";"
Rem     1714        }
Rem     1715
Rem     1716        function clearMonitorView() {
Rem     1717        "   var cv = document.getElementById(""monView"");"
Rem     1718        "   if (cv && cv.getContext) {"
Rem     1719        "       cv.width = cv.width;        // resetting the canvas"
Rem     1720        "       cv.getContext(""2d"").clearRect(0, 0, cv.width, cv.height);"
Rem     1721        "   }"
Rem     1722        }
Rem     1723
Rem     1724        function updateMonitorView(lispValue) {
Rem     1725        "   var cv = document.getElementById(""monView"");"
Rem     1726        "   if (cv && cv.getContext) {"
Rem     1727        "       var ctx = cv.getContext(""2d"");"
Rem     1728        "       if (lispValue != null) {"
Rem     1729        "           ctx.save();"
Rem     1730        "           ctx.strokeStyle = ""#933"";"
Rem     1731        "           ctx.lineWidth = 1;"
Rem     1732        "           ctx.fillStyle = ""#000"";"
Rem     1733        "           ctx.font = ""12px Arial, sans-serif"";"
Rem     1734        "           ctx.translate(16.5, 16.5);"
Rem     1735        "           drawLisp(ctx, lispValue);"
Rem     1736        "           ctx.restore();"
Rem     1737        "       }"
Rem     1738        "   }"
Rem     1739        }
Rem     1740
Rem     1741        function getValueToMonitor() {
Rem     1742        "   try {"
Rem     1743        "       var mScr = document.getElementById(""monitorobject"").value;"
Rem     1744        "       if ((mScr != null) && mScr.match(/\S/)) return prog(cachedTextParse(mScr));"
Rem     1745        "   } catch (e) { alert(""getValueToMonitor: "" + e); }"
Rem     1746        "   return null;"
Rem     1747        }
Rem     1748
Rem     1749        var dbg_e;
Rem     1750        function evalExpr() {
Rem     1751        "   if (document.getElementById(""clearMonView"").checked) clearMonitorView();"
Rem     1752        "   appendToHistory(""oldcode"", newcode.value);"
Rem     1753        "   try {"
Rem     1754        "       var result = prog(parseList(new Source(newcode.value)));"
Rem     1755        "       A3.setVal(A2.getVal()); A2.setVal(A1.getVal()); A1.setVal(result);"
Rem     1756        "       appendToHistory(""result"", lispToStr(result));"
Rem     1757        "   } catch (e) {dbg_e = e;"
Rem     1758        "       if (e.lineNumber === undefined) appendToHistory(""error"", e.message)"
Rem     1759        "       else appendToHistory(""error"", e.message + ""\nLine "" + e.lineNumber);"
Rem     1760        "   }"
Rem     1761        "   if (consPrefs.newcodeClearAfterEvaluation) newcode.value = """";"
Rem     1762        "   if (consPrefs.newcodeFocusAfterEvaluation) newcode.focus();"
Rem     1763        "   updateMonitorView(getValueToMonitor());"
Rem     1764        }
Rem     1765
Rem     1766        function refreshMonitor() {
Rem     1767        "   clearMonitorView();"
Rem     1768        "   updateMonitorView(getValueToMonitor());"
Rem     1769        }
Rem     1770
Rem     1771        var numFilesToLoad;
Rem     1772
Rem     1773        function handleFileDrop(evt) {
Rem     1774        "   evt.preventDefault();"
Rem     1775        "   if (typeof window.FileReader === ""function"") {"
Rem     1776        "       var srcFiles = [];"
Rem     1777        "       for (var i=0; i<evt.dataTransfer.files.length; i++) {"
Rem     1778        "           var f = evt.dataTransfer.files[i];"
Rem     1779        "           if (f.name.match(/\.l$/) || f.name.match(/\.js$/)) {"
Rem     1780        "               srcFiles.push(f);"
Rem     1781        "           } else {"
Rem     1782        "               warn(f.name + "" is probably not a Lisp or JavaScript file"");"
Rem     1783        "           }"
Rem     1784        "       }"
Rem     1785        "       numFilesToLoad = srcFiles.length;"
Rem     1786        "       for (var i=0; i<srcFiles.length; i++) {"
Rem     1787        "           var reader = new FileReader();"
Rem     1788        "           reader.srcFile = srcFiles[i];"
Rem     1789        "           reader.onload = function(rEvt) {"
Rem     1790        "               try {"
Rem     1791        "                   var fileName = rEvt.target.srcFile.name, dropResult = ""(unknown result)"";"
Rem     1792        "                   appendToHistory(""filedrop"", ""loading: "" + fileName);"
Rem     1793        "                   if (fileName.match(/\.l$/)) {"
Rem     1794        "                       // Lisp file"
Rem     1795        "                       dropResult = lispToStr(prog(parseList(new Source(rEvt.target.result), true)));"
Rem     1796        "                   } else if (fileName.match(/\.js$/)) {"
Rem     1797        "                       // JavaScript file"
Rem     1798        "                       dropResult = eval(rEvt.target.result).toString();"
Rem     1799        "                   } else {"
Rem     1800        "                       dropResult = ""Why did this happen?"";  // very unlikely"
Rem     1801        "                   }"
Rem     1802        "                   if (--numFilesToLoad == 0) appendToHistory(""result"", dropResult);"
Rem     1803        "               } catch (e) {"
Rem     1804        "                   if (e.lineNumber === undefined) appendToHistory(""error"", e.message)"
Rem     1805        "                   else appendToHistory(""error"", e.message + ""\nLine "" + e.lineNumber);"
Rem     1806        "               }"
Rem     1807        "           }"
Rem     1808        "           reader.readAsText(srcFiles[i]);"
Rem     1809        "       }"
Rem     1810        "   } else {"
Rem     1811        "       warn(""File Drop not supported by this browser"");"
Rem     1812        "   }"
Rem     1813        "   return false;"
Rem     1814        }
Rem     1815
Rem     1816        function newcodeCheck(srcObj) {
Rem     1817        "   var newMod = srcObj.src;"
Rem     1818        "   if (newMod.match(/^[\.\s]*\)/)) throw new Error(BAD_INPUT);"
Rem     1819        "   // Replacing ""()"" with ""NIL"" ..."
Rem     1820        "   newMod = newMod.replace(/\(\s*\)/g, "" NIL "");"
Rem     1821        "   // Removing dots and spaces before "")"", removing trailing dots and spaces ..."
Rem     1822        "   newMod = newMod.replace(/[\.\s]*\)/g, "")"").replace(/[\.\s]*$/, """");"
Rem     1823        "   //alert(""newcodeCheck: "" + srcObj.src + "", "" + newMod);"
Rem     1824        "   var newParMatch = newMod.match(/\)*$/);"
Rem     1825        "   var newParCount = newParMatch ? newParMatch[0].length : 0;"
Rem     1826        "   var tmpLisp = parseList(srcObj, false, true);"
Rem     1827        "   if (false) {"
Rem     1828        "       getSymbol(""*Newcode"").setVal(tmpLisp);"
Rem     1829        "       refreshMonitor();"
Rem     1830        "   }"
Rem     1831        "   var parseResult = lispToStr(tmpLisp);"
Rem     1832        "   var parseParMatch = parseResult.match(/\)*$/);"
Rem     1833        "   var parseParCount = parseParMatch ? parseParMatch[0].length : 0;"
Rem     1834        "   var parBalance = newParCount - parseParCount + ((newMod == """") || newMod.match(/\($/) ? 0 : 1);"
Rem     1835        "   //stdPrint(newMod + "" -> "" + parseResult + "", "" + newParCount + "", "" + parseParCount + ""\n"");"
Rem     1836        "   return parBalance;"
Rem     1837        }
Rem     1838
Rem     1839        function openDocWindow(evt) {
Rem     1840        "   var docUrl = ""http://software-lab.de/doc/"";"
Rem     1841        "   window.open(docUrl + symbolRefUrl(this.symbol.name), ""refdoc"","
Rem     1842        "       ""fullscreen=no, toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes, "" +"
Rem     1843        "       ""directories=no, location=no, width=980, height=600"");"
Rem     1844        }
Rem     1845
Rem     1846        function printSymbolValue(evt) {
Rem     1847        "   stdPrint(lispToStr(this.symbol.getVal()) + ""\n"");"
Rem     1848        "   newcode.focus();"
Rem     1849        }
Rem     1850
Rem     1851        function updateCodeGuides() {
Rem     1852        "   if (! consPrefs.codeGuidesEnabled) return;"
Rem     1853        "   var srcObj = new Source(newcode.value).withTrace();"
Rem     1854        "   var parGuide = document.getElementById(""parGuide"").firstChild;"
Rem     1855        "   try {"
Rem     1856        "       var parHint = """";"
Rem     1857        "       var parBalance = newcodeCheck(srcObj);  // will call parseList(srcObj, ...)"
Rem     1858        "       if (parBalance == 0) {"
Rem     1859        "           parHint = ""?"";"
Rem     1860        "       } else if (parBalance < 0) {"
Rem     1861        "           for (var i=0; i>parBalance; i--) parHint += ""("";  // one or more )'s needed"
Rem     1862        "       } else {"
Rem     1863        "           for (var i=0; i<parBalance; i++) parHint += "")"";  // probably too many )'s"
Rem     1864        "       }"
Rem     1865        "       parGuide.nodeValue = parHint;"
Rem     1866        "   } catch (e) { parGuide.nodeValue = e.toString(); }"
Rem     1867        "   "
Rem     1868        "   var symGuide = document.getElementById(""symGuide""), symText = symGuide.firstChild;"
Rem     1869        "   try {"
Rem     1870        "       if (newcode.value != prevNewcode) {"
Rem     1871        "           symGuide.onclick = function() { newcode.focus(); };"
Rem     1872        "           symGuide.className = ""nosymbol"";"
Rem     1873        "           symGuide.title = null;"
Rem     1874        "           var sName = ""?"";"
Rem     1875        "           for (var ni=newcode.value.length-1, pi=prevNewcode.length-1; ni >= 0; ni-- & pi--) {"
Rem     1876        "               if ((pi < 0) || (newcode.value[ni] != prevNewcode[pi])) {"
Rem     1877        "                   var itemInd = srcObj.getSymbolBeforePos(ni + 1);"
Rem     1878        "                   if (itemInd != null) {"
Rem     1879        "                       sName = itemInd.item.name;"
Rem     1880        "                       symGuide.symbol = itemInd.item;"
Rem     1881        "                       if (typeof itemInd.item.cdr === ""function"") {"
Rem     1882        "                           if (sName.match(/\w+\:\w+/)) {"
Rem     1883        "                               symGuide.title = ""No ref. yet for this function"";"
Rem     1884        "                           } else {"
Rem     1885        "                               symGuide.onclick = openDocWindow;"
Rem     1886        "                               symGuide.className = ""builtin"";"
Rem     1887        "                               symGuide.title = ""Open ref. in new window"";"
Rem     1888        "                           }"
Rem     1889        "                       } else {"
Rem     1890        "                           symGuide.onclick = printSymbolValue;"
Rem     1891        "                           symGuide.className = ""othersymbol"";"
Rem     1892        "                           symGuide.title = ""Print symbol value"";"
Rem     1893        "                       }"
Rem     1894        "                   }"
Rem     1895        "                   break;"
Rem     1896        "               }"
Rem     1897        "           }"
Rem     1898        "           symText.nodeValue = sName;"
Rem     1899        "           prevNewcode = newcode.value;"
Rem     1900        "       }"
Rem     1901        "   } catch (e) { symText.nodeValue = e.message + "", "" + e.lineNumber; }"
Rem     1902        }
Rem     1903
Rem     1904        function newcodeKeyup(evt) {
Rem     1905        "   updateCodeGuides();"
Rem     1906        "   return true;"
Rem     1907        }
Rem     1908
Rem     1909        function newcodeKeypress(evt) {
Rem     1910        "   evt = evt ? evt : window.event;"
Rem     1911        "   if (consPrefs.evaluateOnReturn && (evt.keyCode == 13) && ! evt.shiftKey) {"
Rem     1912        "       evt.preventDefault();"
Rem     1913        "       evalExpr();"
Rem     1914        "       return false;"
Rem     1915        "   }"
Rem     1916        "   return true;"
Rem     1917        }
Rem     1918
Rem     1919        function prefCheckboxClick(evt) {
Rem     1920        "   consPrefs[this.id] = this.checked;"
Rem     1921        "   if (this.id == ""closeWindowWarningEnabled"") {"
Rem     1922        "       window.onbeforeunload = consPrefs.closeWindowWarningEnabled ? closeWindowMsg : null;"
Rem     1923        "   }"
Rem     1924        }
Rem     1925
Rem     1926        function prefInputChange(evt) {
Rem     1927        "   eval(this.id.replace(/\-/g, ""."") + ""='"" + this.value + ""'"");"
Rem     1928        }
Rem     1929
Rem     1930        function showHidePrefs(visibleOrHidden) {
Rem     1931        "   try {"
Rem     1932        "       if (visibleOrHidden == ""visible"") {"
Rem     1933        "           var checkboxArr = document.querySelectorAll(""div#prefs input[type='checkbox']"");"
Rem     1934        "           for (var i=0; i<checkboxArr.length; i++) {"
Rem     1935        "               var cb = checkboxArr[i];"
Rem     1936        "               cb.checked = consPrefs[cb.id];"
Rem     1937        "               cb.onclick = prefCheckboxClick;"
Rem     1938        "           }"
Rem     1939        "           var inputArr = document.querySelectorAll(""div#prefs input[type='text']"");"
Rem     1940        "           for (var i=0; i<inputArr.length; i++) {"
Rem     1941        "               var inElem = inputArr[i];"
Rem     1942        "               inElem.value = eval(inElem.id.replace(/\-/g, "".""));"
Rem     1943        "               inElem.onchange = prefInputChange;"
Rem     1944        "           }"
Rem     1945        "       } else if (consPrefs.newcodeFocusAfterEvaluation) {"
Rem     1946        "           newcode.focus();"
Rem     1947        "       }"
Rem     1948        "       document.getElementById(""prefs"").style.visibility = visibleOrHidden;"
Rem     1949        "   } catch (e) { alert(""showHidePrefs: "" + e); }"
Rem     1950        }
Rem     1951
Rem     1952        function openMainWindow() {
Rem     1953        "   window.open(""http://folk.uio.no/jkleiser/pico/emuLisp/index.html"", ""EmuLispMain"", ""resizable=yes, scrollbars=yes, location=yes"");"
Rem     1954        }
Rem     1955
Rem     1956        function closeWindowMsg(evt) {
Rem     1957        "   evt = evt ? evt : window.event;"
Rem     1958        "   var msg = ""Leaving this page will do away with your current EmuLisp data."";"
Rem     1959        "   evt.returnValue = msg;"
Rem     1960        "   return msg;"
Rem     1961        }
Rem     1962
Rem     1963        function init() {
Rem     1964        "   var small = (screen.height < 400);"
Rem     1965        "   window.name = ""EmuLispConsole"";"
Rem     1966        "   dcons = document.getElementById(""dcons"");"
Rem     1967        "   dcons.ondragover = function() { return false; }"
Rem     1968        "   dcons.ondragend = function() { return false; }"
Rem     1969        "   dcons.ondrop = handleFileDrop;"
Rem     1970        "   dcons.style.fontSize = ""15px"";"
Rem     1971        "   dcons.style.fontFamily = ""monospace"";"
Rem     1972        "   consLog = document.getElementById(""log"");"
Rem     1973        "   consLog.style.height = small ? ""200px"" : ""400px"";"
Rem     1974        "   newcode = document.getElementById(""newcode"");"
Rem     1975        "   newcode.focus();"
Rem     1976        "   if (typeof newcode.addEventListener == ""function"") {"
Rem     1977        "       newcode.addEventListener(""keypress"", newcodeKeypress, false);"
Rem     1978        "       newcode.addEventListener(""keyup"", newcodeKeyup, false);"
Rem     1979        "   }"
Rem     1980        "   initialLogScrollWidth = document.getElementById(""log"").scrollWidth;"
Rem     1981        "   updateCodeGuides();"
Rem     1982        "   hideMonitorIfCanvasNotSupported();"
Rem     1983        "   if (consPrefs.closeWindowWarningEnabled) window.onbeforeunload = closeWindowMsg;"
Rem     1984        }
Rem     1985        "   </script>"
Rem     1986        </head>
Rem     1987        <body onload="init();">
Rem     1988        <div id="head">
Rem     1989        "   <span id=""presentation""><em>EmuLisp</em> - emulating a tiny subset of PicoLisp</span>"
Rem     1990        "   <img id=""infosymbol"" src=""images/info.png"""
Rem     1991        "       title=""Open Main Page in sep. window/tab"" alt=""info"" onclick=""openMainWindow();"">"
Rem     1992        "   <input type=""button"" value=""Prefs"" onclick=""showHidePrefs('visible');"" />"
Rem     1993        </div>
Rem     1994        <div id="main">
Rem     1995        "   <div id=""dcons"">"
Rem     1996        "       <div id=""log""></div>"
Rem     1997        "       <textarea id=""newcode"" rows=""6""></textarea>"
Rem     1998        "       <span id=""version"">EmuLisp Console 28-Mar-2011</span>"
Rem     1999        "       <span id=""controls"">"
Rem     2000        "           <span id=""symGuide"">?</span>"
Rem     2001        "           <span id=""parGuide"">?</span>"
Rem     2002        "           <input type=""button"" value=""Evaluate"" onclick=""evalExpr();"" />"
Rem     2003        "       </span>"
Rem     2004        "   </div>"
Rem     2005        "   <div id=""monitor"">"
Rem     2006        "       Expression to monitor: <input id=""monitorobject"" type=""text"" value=""@"" /><br />"
Rem     2007        "       <canvas id=""monView"" width=""478"" height=""478"""
Rem     2008        "           onclick=""refreshMonitor();"" title=""Click to refresh monitor"">"
Rem     2009        "           Monitoring requires canvas support."
Rem     2010        "       </canvas><br />"
Rem     2011        "       <span style=""float: right"">"
Rem     2012        "           <input id=""clearMonView"" type=""checkbox"" checked />"
Rem     2013        "           <label for=""clearMonView"">Clear monitor view before evaluation</label>"
Rem     2014        "       </span>"
Rem     2015        "   </div>"
Rem     2016        </div>
Rem     2017        <div id="prefs">
Rem     2018        "   <p class=""paneHead""><span class=""closebox"" onclick=""showHidePrefs('hidden');"">X</span></p>"
Rem     2019        "   <p class=""pref""><input id=""codeGuidesEnabled"" type=""checkbox"" />"
Rem     2020        "       <label for=""codeGuidesEnabled"">Enable Code Guides</label></p>"
Rem     2021        "   <p class=""pref""><input id=""evaluateOnReturn"" type=""checkbox"" />"
Rem     2022        "       <label for=""evaluateOnReturn"">Evaluate on Return</label></p>"
Rem     2023        "   <p class=""pref""><input id=""newcodeClearAfterEvaluation"" type=""checkbox"" />"
Rem     2024        "       <label for=""newcodeClearAfterEvaluation"">Clear Input after Evaluation</label></p>"
Rem     2025        "   <p class=""pref""><input id=""newcodeFocusAfterEvaluation"" type=""checkbox"" />"
Rem     2026        "       <label for=""newcodeFocusAfterEvaluation"">Focus Input after Evaluation</label></p>"
Rem     2027        "   <p class=""pref""><input id=""closeWindowWarningEnabled"" type=""checkbox"" />"
Rem     2028        "       <label for=""closeWindowWarningEnabled"">Warning when Closing Window</label></p>"
Rem     2029        "   <p class=""pref""><label for=""dcons-style-fontSize"">Console Font Size:</label>"
Rem     2030        "       <input id=""dcons-style-fontSize"" type=""text"" size=""5"" /></p>"
Rem     2031        "   <p class=""pref""><label for=""dcons-style-fontFamily"">Console Font Family:</label>"
Rem     2032        "       <input id=""dcons-style-fontFamily"" type=""text"" size=""10"" /></p>"
Rem     2033        "   <p class=""pref""><label for=""consLog-style-height"">Height of Log:</label>"
Rem     2034        "       <input id=""consLog-style-height"" type=""text"" size=""5"" /></p>"
Rem     2035        </div>
Rem     2036        </body>
Rem     2037        </html>
Function PLS(THX)
Rem Mimic MAL (Make a Lisp) and emuLisp (PicoLisp) with variable / function names
Rem no objects will be used (for the core language), just associative arrays (Dictionaries, Bundles), text, and numbers
Rem Collections (VBA) and  Lists  (RFO) will  be used in addition to the associative arrays..

Rem for FFI, things like ADO, ODBC, etc. will use native memory memory management in the BASIC code
Rem use cross compatible systax to RFO BASIC / SmallBasic - least amount of changes, and localize those
Rem Note: instead of text file input / output, lines in Excel are used
Rem    ... stair step cell formulas allow dragdown test harness  (blank extra cells to clean up from drag down)

PLS = f_REP(THX)

End Function
Function f_Debug_Print(Local_Info, THX)
Rem 'could be made into a gosub when the conversion to "single function implementation" is done..'
Rem speed and less code changes between versions (VBA, RFO, Small) would be the biggest target improvement areas
Rem META: It's possible to write a LISP script to do this... like Kramer's Coffe Table books on cofee tables, which is a table)

Debug.Print Local_Info + ": " + THX

Debug_Print = THX

End Function


Function f_READ(THX)

f_READ = THX

Rem line 311 ++ in js is a Regular Expression  "coathook" of legal characters
Rem line 311 - Internal Symbol names

Rem // Internal symbol names can consist of any printable (non-whitespace) character,
Rem // except for the following meta characters:        " ' ( ) , [ ] ` ~ { }
Rem // It is possible, though, to include these special characters into symbol names
Rem // by escaping them with a backslash '\'.

Rem - can read more on JS Prototypes - Ghost / Jekyl Blog guy?

Rem for now just rapid port the various BASIC implementations

Rem below line is just for debugging - can comment out
Rem THX = f_Debug_Print("f_READ: ", THX)

End Function

Function f_EVAL(THX)

f_EVAL = THX
 
Rem below line is just for debugging - can comment out
Rem THX = f_Debug_Print("f_EVAL: ", THX)

End Function

Function f_PRINT(THX)

f_PRINT = THX

Rem below line is just for debugging - can comment out
Rem THX = f_Debug_Print("f_PRINT: ", THX)

End Function

Function f_REP(THX)

THX = f_READ(THX)
THX = f_EVAL(THX)
THX = f_PRINT(THX)

f_REP = THX

Rem below line is just for debugging - can comment out
THX = f_Debug_Print("f_PRINT: ", THX)

End Function

