REM	  	0001	  	<!DOCTYPE html>
REM	  	0002	  	<html>
REM	  	0003	  	<head>
REM	  	0004	  	"	<meta charset=""utf-8"" />"
REM	  	0005	  	"	<title>EmuLisp Console</title>"
REM	  	0006	  	"	<meta name=""generator"" content=""BBEdit 9.6"" />"
REM	  	0007	  	"	<style type=""text/css"" title=""text/css"">"
REM	  	0008	  	body {
REM	  	0009	  	"	margin: 12px 16px 0 16px;"
REM	  	0010	  	"	background-color: #f0ecd0;"
REM	  	0011	  	}
REM	  	0012	  	div#head {
REM	  	0013	  	"	white-space: nowrap;"
REM	  	0014	  	}
REM	  	0015	  	span#presentation {
REM	  	0016	  	"	border: 1px solid gray;"
REM	  	0017	  	"	border-radius: 4px;"
REM	  	0018	  	"	padding: 4px 12px 4px 12px;"
REM	  	0019	  	"	font: 15px Optima;"
REM	  	0020	  	"	background-color: white;"
REM	  	0021	  	}
REM	  	0022	  	span#presentation em {
REM	  	0023	  	"	font-size: 18px;"
REM	  	0024	  	}
REM	  	0025	  	img#infosymbol {
REM	  	0026	  	"	position: relative;"
REM	  	0027	  	"	top: 5px;"
REM	  	0028	  	"	margin: 0 0 0 8px;"
REM	  	0029	  	"	cursor: pointer;"
REM	  	0030	  	}
REM	  	0031	  	div#main {
REM	  	0032	  	"	position: relative;"
REM	  	0033	  	"	top: 7px;"
REM	  	0034	  	}
REM	  	0035	  	div#dcons {
REM	  	0036	  	"	width: 520px;"
REM	  	0037	  	}
REM	  	0038	  	div#log {
REM	  	0039	  	"	margin: 0;"
REM	  	0040	  	"	width: 101.3%;"
REM	  	0041	  	"	border: 1px solid gray;"
REM	  	0042	  	"	border-bottom: none;"
REM	  	0043	  	"	overflow: auto;"
REM	  	0044	  	"	background-color: white;"
REM	  	0045	  	}
REM	  	0046	  	div#log pre {
REM	  	0047	  	"	margin: 0 1px 0 1px;"
REM	  	0048	  	"	padding: 2px 2px 2px 4px;"
REM	  	0049	  	}
REM	  	0050	  	pre.oldcode {
REM	  	0051	  	"	background-color: #f0f5f7;"
REM	  	0052	  	"	cursor: pointer;"
REM	  	0053	  	}
REM	  	0054	  	pre.filedrop {
REM	  	0055	  	"	border-left: 4px solid #c0c5c7;"
REM	  	0056	  	"	background-color: #f0f5f7;"
REM	  	0057	  	}
REM	  	0058	  	pre.print {
REM	  	0059	  	"	background-color: #def;"
REM	  	0060	  	}
REM	  	0061	  	pre.println {
REM	  	0062	  	"	background-color: #def;"
REM	  	0063	  	"	border-bottom: 1px solid #bcf;"
REM	  	0064	  	}
REM	  	0065	  	pre.result {
REM	  	0066	  	"	background-color: #dfd;"
REM	  	0067	  	"	border-bottom: 1px solid #9b9;"
REM	  	0068	  	}
REM	  	0069	  	pre.warning {
REM	  	0070	  	"	border-left: 4px solid #db3;"
REM	  	0071	  	"	background-color: #ffa;"
REM	  	0072	  	}
REM	  	0073	  	pre.error {
REM	  	0074	  	"	border-left: 4px solid #f33;"
REM	  	0075	  	"	background-color: #fdd;"
REM	  	0076	  	}
REM	  	0077	  	textarea#newcode {
REM	  	0078	  	"	margin: 0 0 4px 0;"
REM	  	0079	  	"	width: inherit;"
REM	  	0080	  	"	border: 1px solid gray;"
REM	  	0081	  	"	padding: 2px 0 0 6px;"
REM	  	0082	  	"	font: inherit;"
REM	  	0083	  	}
REM	  	0084	  	span#version {
REM	  	0085	  	"	margin-left: 8px;"
REM	  	0086	  	"	font: italic 11px Arial, sans-serif;"
REM	  	0087	  	}
REM	  	0088	  	div#dcons span#controls {
REM	  	0089	  	"	float: right;"
REM	  	0090	  	}
REM	  	0091	  	div#dcons span#controls span {
REM	  	0092	  	"	margin: 0;"
REM	  	0093	  	"	border: 1px solid gray;"
REM	  	0094	  	"	padding: 2px 4px 2px 4px;"
REM	  	0095	  	"	font: 14px monospace;"
REM	  	0096	  	"	background-color: white;"
REM	  	0097	  	}
REM	  	0098	  	div#dcons span#controls .nosymbol {
REM	  	0099	  	"	color: black;"
REM	  	0100	  	"	cursor: text;"
REM	  	0101	  	}
REM	  	0102	  	div#dcons span#controls .builtin {
REM	  	0103	  	"	color: #00e;"
REM	  	0104	  	"	cursor: pointer;"
REM	  	0105	  	}
REM	  	0106	  	div#dcons span#controls .othersymbol {
REM	  	0107	  	"	color: #00e;"
REM	  	0108	  	"	cursor: pointer;"
REM	  	0109	  	"	background-color: #def;"
REM	  	0110	  	}
REM	  	0111	  	div#dcons input[type='button'] {
REM	  	0112	  	}
REM	  	0113	  	div#monitor {
REM	  	0114	  	"	position: absolute;"
REM	  	0115	  	"	top: 0;"
REM	  	0116	  	"	left: 534px;"
REM	  	0117	  	"	font: 15px Optima;"
REM	  	0118	  	}
REM	  	0119	  	div#monitor input[type='text'] {
REM	  	0120	  	"	margin: 0 0 4px 0;"
REM	  	0121	  	"	width: 300px;"
REM	  	0122	  	"	font: 15px monospace;"
REM	  	0123	  	}
REM	  	0124	  	canvas#monView {
REM	  	0125	  	"	border: 1px solid gray;"
REM	  	0126	  	"	background-color: white;"
REM	  	0127	  	}
REM	  	0128	  	div#prefs {
REM	  	0129	  	"	visibility: hidden;"
REM	  	0130	  	"	position: absolute;"
REM	  	0131	  	"	top: 46px;"
REM	  	0132	  	"	left: 160px;"
REM	  	0133	  	"	border: 2px ridge #999;"
REM	  	0134	  	"	background-color: white;"
REM	  	0135	  	"	-moz-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
REM	  	0136	  	"	-webkit-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
REM	  	0137	  	"	box-shadow: 4px 4px 8px rgba(0,0,0,0.3);"
REM	  	0138	  	"	padding: 0 0 2px 0;"
REM	  	0139	  	"	font: 14px Optima;"
REM	  	0140	  	}
REM	  	0141	  	p.paneHead {
REM	  	0142	  	"	margin: 0 0 8px 0;"
REM	  	0143	  	"	border-bottom: 1px solid #bbb;"
REM	  	0144	  	"	background-color: #ddd;"
REM	  	0145	  	"	padding: 0 0 1px 0;"
REM	  	0146	  	}
REM	  	0147	  	span.closebox {
REM	  	0148	  	"	position: relative;"
REM	  	0149	  	"	margin: 0;"
REM	  	0150	  	"	left: 92%;"
REM	  	0151	  	"	border: 1px solid #999;"
REM	  	0152	  	"	background-color: #f9f9f9;"
REM	  	0153	  	"	padding: 0 3px 0 3px;"
REM	  	0154	  	"	text-align: center;"
REM	  	0155	  	"	font: 10px Arial, sans-serif;"
REM	  	0156	  	"	cursor: default;"
REM	  	0157	  	}
REM	  	0158	  	span.closebox:hover {
REM	  	0159	  	"	color: #d22;"
REM	  	0160	  	}
REM	  	0161	  	p.pref {
REM	  	0162	  	"	margin: 0 16px 8px 14px;"
REM	  	0163	  	}
REM	  	0164	  	div#prefs input[type='checkbox'] {
REM	  	0165	  	"	margin: 0 6px 0 0;"
REM	  	0166	  	}
REM	  	0167	  	div#prefs input[type='text'] {
REM	  	0168	  	"	background-color: #ffd;"
REM	  	0169	  	"	padding-left: 2px;"
REM	  	0170	  	}
REM	  	0171	  	
REM	  	0172	  	"/*	below are the following script sections (in one script tag)"
REM	  	0173	  	"	<script src=""http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js"" type=""text/javascript""></script>"
REM	  	0174	  	<script src="http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js" type="text/javascript"></script>
REM	  	0175	  	*/
REM	  	0176	  	
REM	  	0177	  	
REM	  	0178	  	"	</style>"
REM	  	0179	  	
REM	  	0180	  	"	<script src=""http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js"" type=""text/javascript""></script>"
REM	  	0181	  	
REM	  	0182	  	<script type="text/javascript">
REM	  	0183	  	/* 26nov10jk
REM	  	0184	  	* (c) Jon Kleiser
REM	  	0185	  	* http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js
REM	  	0186	  	*/
REM	  	0187	  	var BOXNAT_EXP = "Boxed native object expected",
REM	  	0188	  	"	BOOL_EXP = ""Boolean expected"", CELL_EXP = ""Cell expected"", LIST_EXP = ""List expected"","
REM	  	0189	  	"	NUM_EXP = ""Number expected"", SYM_EXP = ""Symbol expected"", VAR_EXP = ""Variable expected"","
REM	  	0190	  	"	EXEC_OR_NUM_EXP = ""Executable or Number expected"","
REM	  	0191	  	"	BAD_ARG = ""Bad argument"", BAD_DOT = ""Bad dotted pair"", BAD_INPUT = ""Bad input"", DIV_0 = ""Div/0"","
REM	  	0192	  	"	NOT_MAK = ""Not making"", PROT_SYM = ""Protected symbol"", UNDEF = ""Undefined"","
REM	  	0193	  	"	JS_CTORNAME_EXP = ""Constructor name expected"", JS_RESERVED = ""Reserved word"";"
REM	  	0194	  	
REM	  	0195	  	function getFileSync(fileUrl) {
REM	  	0196	  	"	var req = new XMLHttpRequest();"
REM	  	0197	  	"	req.open(""GET"", fileUrl, false);		// synchronous"
REM	  	0198	  	"	req.overrideMimeType(""text/plain; charset=utf-8"");"
REM	  	0199	  	"	req.send(null);"
REM	  	0200	  	"	if (req.status == 0) {"
REM	  	0201	  	"		return req.responseText;"
REM	  	0202	  	"	}"
REM	  	0203	  	"	throw new Error(""XMLHttpRequest status: "" + req.status);"
REM	  	0204	  	}
REM	  	0205	  	
REM	  	0206	  	var NILTYPE = 0, NUMBERTYPE = 1, SYMBOLTYPE = 2, CELLTYPE = 3, TRUETYPE = 4;
REM	  	0207	  	
REM	  	0208	  	Number.prototype.TYPEVAL = NUMBERTYPE;
REM	  	0209	  	
REM	  	0210	  	function lispToStr(x) {
REM	  	0211	  	"	//if (!confirm(""lispToStr: "" + x.toString() + "", "" + x.TYPEVAL)) throw new Error(""lispToStr aborted"");"
REM	  	0212	  	"	return x.toString();"
REM	  	0213	  	}
REM	  	0214	  	
REM	  	0215	  	function unknown(x) {
REM	  	0216	  	"	if (!confirm(""Unknown Lisp type: "" + x)) throw new Error(""unknown aborted"");"
REM	  	0217	  	"	return ""???"";"
REM	  	0218	  	}
REM	  	0219	  	
REM	  	0220	  	function valueToStr(x) {
REM	  	0221	  	"	//if (!confirm(""valueToStr "" + lispToStr(x))) throw new Error(""valueToStr aborted"");"
REM	  	0222	  	"	return (x instanceof Number) ? x.toString() :"
REM	  	0223	  	"		(x instanceof Symbol) ? x.toValueString() :"
REM	  	0224	  	"		(x instanceof Cell) ? x.toValueString() : unknown(x);"
REM	  	0225	  	}
REM	  	0226	  	
REM	  	0227	  	function Cell(car, cdr) {
REM	  	0228	  	"	this.car = car;"
REM	  	0229	  	"	this.cdr = cdr;"
REM	  	0230	  	}
REM	  	0231	  	
REM	  	0232	  	Cell.prototype.TYPEVAL = CELLTYPE;
REM	  	0233	  	
REM	  	0234	  	Cell.prototype.getVal = function() {
REM	  	0235	  	"	return this.car;"
REM	  	0236	  	}
REM	  	0237	  	
REM	  	0238	  	Cell.prototype.setVal = function(val) {
REM	  	0239	  	"	this.car = val;"
REM	  	0240	  	}
REM	  	0241	  	
REM	  	0242	  	Cell.prototype.toString = function() {
REM	  	0243	  	"	if (this.car === QUOTE) return ""'"" + lispToStr(this.cdr);"
REM	  	0244	  	"	var arr = [], c = this;"
REM	  	0245	  	"	do {"
REM	  	0246	  	"		arr.push(lispToStr(c.car));"
REM	  	0247	  	"		c = c.cdr;"
REM	  	0248	  	"		//if (!confirm(""Cell.toString: "" + lispToStr(c.car))) throw new Error(""Cell.toString aborted"");"
REM	  	0249	  	"		if (c === this) { arr.push("".""); c = NIL; }	// why didn't break work here?"
REM	  	0250	  	"	} while (c instanceof Cell);"
REM	  	0251	  	"	if (c !== NIL) {"
REM	  	0252	  	"		arr.push(""."", lispToStr(c));	// last Cell was dotted"
REM	  	0253	  	"	}"
REM	  	0254	  	"	return ""("" + arr.join("" "") + "")"";"
REM	  	0255	  	}
REM	  	0256	  	
REM	  	0257	  	Cell.prototype.toValueString = function() {
REM	  	0258	  	"	var str = """", c = this;"
REM	  	0259	  	"	do {"
REM	  	0260	  	"		str += valueToStr(c.car);"
REM	  	0261	  	"		c = c.cdr;"
REM	  	0262	  	"	} while (c instanceof Cell);"
REM	  	0263	  	"	if (c !== NIL) {"
REM	  	0264	  	"		str += valueToStr(c);	// last Cell was dotted"
REM	  	0265	  	"	}"
REM	  	0266	  	"	return str;"
REM	  	0267	  	}
REM	  	0268	  	
REM	  	0269	  	function Symbol(name, val) {
REM	  	0270	  	"	this.name = name;"
REM	  	0271	  	"	this.trans = false;"
REM	  	0272	  	"	this.cdr = (val === undefined) ? NIL : val;"
REM	  	0273	  	"	this.props = NIL;"
REM	  	0274	  	}
REM	  	0275	  	
REM	  	0276	  	function newTransSymbol(name) {
REM	  	0277	  	"	var ts = new Symbol(name);"
REM	  	0278	  	"	ts.trans = true;"
REM	  	0279	  	"	ts.cdr = ts;"
REM	  	0280	  	"	return ts;"
REM	  	0281	  	}
REM	  	0282	  	
REM	  	0283	  	// Creates and returns a new anonymous symbol
REM	  	0284	  	function box(val) {
REM	  	0285	  	"	var ts = new Symbol(null, val);"
REM	  	0286	  	"	ts.trans = true;"
REM	  	0287	  	"	return ts;"
REM	  	0288	  	}
REM	  	0289	  	
REM	  	0290	  	function boxNativeObject(obj) {
REM	  	0291	  	"	var ts = newTransSymbol(null);"
REM	  	0292	  	"	ts.obj = obj;"
REM	  	0293	  	"	return ts;"
REM	  	0294	  	}
REM	  	0295	  	
REM	  	0296	  	Symbol.prototype.TYPEVAL = SYMBOLTYPE;
REM	  	0297	  	
REM	  	0298	  	Symbol.prototype.getVal = function() {
REM	  	0299	  	"	return this.cdr;"
REM	  	0300	  	}
REM	  	0301	  	
REM	  	0302	  	Symbol.prototype.valueOf = function() {
REM	  	0303	  	"	return this.name;"
REM	  	0304	  	}
REM	  	0305	  	
REM	  	0306	  	Symbol.prototype.setVal = function(val) {
REM	  	0307	  	"	if (this.lock) throw new Error(newErrMsg(PROT_SYM, this));"
REM	  	0308	  	"	this.cdr = val;"
REM	  	0309	  	}
REM	  	0310	  	
REM	  	0311	  	// Internal symbol names can consist of any printable (non-whitespace) character,
REM	  	0312	  	"// except for the following meta characters:		"" ' ( ) , [ ] ` ~ { }"
REM	  	0313	  	// It is possible, though, to include these special characters into symbol names
REM	  	0314	  	// by escaping them with a backslash '\'.
REM	  	0315	  	Symbol.prototype.escName = function() {
REM	  	0316	  	"	var eName = this.name.replace(/\\/g, ""\\\\"");"
REM	  	0317	  	"	eName = eName.replace(/\^/g, ""Error! Hyperlink reference not valid."");"
REM	  	0318	  	"	eName = eName.replace(/\t/g, ""^I"");"
REM	  	0319	  	"	eName = eName.replace(/\r/g, ""^M"");"
REM	  	0320	  	"	eName = eName.replace(/\n/g, ""^J"");"
REM	  	0321	  	"	//if (eName != this.name) alert(""Symbol.escName: "" + this.name + "" -> "" + eName);"
REM	  	0322	  	"	return eName;"
REM	  	0323	  	}
REM	  	0324	  	
REM	  	0325	  	Symbol.prototype.noName = function() {
REM	  	0326	  	"	return (this.obj !== undefined) ? ""$"" + typeof this.obj : ""$*"";"
REM	  	0327	  	}
REM	  	0328	  	
REM	  	0329	  	Symbol.prototype.toString = function() {
REM	  	0330	  	"	return this.trans ? (this.name != null) ? ('""' + this.escName() + '""') : this.noName() : this.name;"
REM	  	0331	  	}
REM	  	0332	  	
REM	  	0333	  	Symbol.prototype.toValueString = function() {
REM	  	0334	  	"	return (this === NIL) ? """" : (this.name != null) ? this.name : this.noName();"
REM	  	0335	  	}
REM	  	0336	  	
REM	  	0337	  	Symbol.prototype.pushValue = function(val) {
REM	  	0338	  	"	if (this.stack === undefined) this.stack = [];"
REM	  	0339	  	"	this.stack.push(this.cdr);"
REM	  	0340	  	"	this.cdr = val;"
REM	  	0341	  	}
REM	  	0342	  	
REM	  	0343	  	Symbol.prototype.popValue = function() {
REM	  	0344	  	"	var pv = this.cdr;"
REM	  	0345	  	"	this.cdr = this.stack.pop();"
REM	  	0346	  	"	//if (this.stack.length === 0) delete this.stack;"
REM	  	0347	  	"	return pv;"
REM	  	0348	  	}
REM	  	0349	  	
REM	  	0350	  	function getSymbol(name, editMode) {
REM	  	0351	  	"	if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));"
REM	  	0352	  	"	var s = gSym[name];"
REM	  	0353	  	"	if (s === undefined) {"
REM	  	0354	  	"		s = new Symbol(name, NIL);"
REM	  	0355	  	"		if (! editMode) gSym[name] = s;"
REM	  	0356	  	"	}"
REM	  	0357	  	"	return s;"
REM	  	0358	  	}
REM	  	0359	  	
REM	  	0360	  	function setSymbolValue(s, val) {
REM	  	0361	  	"	if (!(s instanceof Symbol)) throw new Error(newErrMsg(VAR_EXP, s));"
REM	  	0362	  	"	s.setVal(val);"
REM	  	0363	  	}
REM	  	0364	  	
REM	  	0365	  	function Source(text, chars) {
REM	  	0366	  	"	this.src = text;"
REM	  	0367	  	"	// character limitation for symbols"
REM	  	0368	  	"	if (chars instanceof Symbol) {"
REM	  	0369	  	"		this.charset = chars.valueOf();"
REM	  	0370	  	"	} else if (typeof chars == ""string"") {"
REM	  	0371	  	"		//alert(""Source2: "" + chars);"
REM	  	0372	  	"		this.charset = chars;"
REM	  	0373	  	"	}"
REM	  	0374	  	"	this.pos = 0;"
REM	  	0375	  	"	this.trace = null;"
REM	  	0376	  	}
REM	  	0377	  	
REM	  	0378	  	Source.prototype.CLOSEPAREN = -1;
REM	  	0379	  	Source.prototype.CLOSESYM = -2;
REM	  	0380	  	Source.prototype.QUOTE2 = -3;
REM	  	0381	  	Source.prototype.EOF = null;
REM	  	0382	  	
REM	  	0383	  	Source.prototype.unescMap = {I: "\t", i: "\t", J: "\n", j: "\n", M: "\r", m: "\r"};
REM	  	0384	  	
REM	  	0385	  	Source.prototype.getNextSignificantChar = function() {
REM	  	0386	  	"	while (this.pos < this.src.length) {"
REM	  	0387	  	"		while (this.src.charAt(this.pos) == ""#"") {"
REM	  	0388	  	"			var ch;"
REM	  	0389	  	"			do { ch = this.src.charAt(this.pos++); } while ((ch != ""\n"") && (this.pos < this.src.length));"
REM	  	0390	  	"		}"
REM	  	0391	  	"		if (this.src.charAt(this.pos) == ""\\"") this.pos++;"
REM	  	0392	  	"		if ("" \t\r\n"".indexOf(this.src.charAt(this.pos)) == -1) return this.src.charAt(this.pos++);"
REM	  	0393	  	"		this.pos++;"
REM	  	0394	  	"	}"
REM	  	0395	  	"	return this.EOF;"
REM	  	0396	  	}
REM	  	0397	  	
REM	  	0398	  	Source.prototype.getNextStringChar = function() {
REM	  	0399	  	"	while (this.pos < this.src.length) {"
REM	  	0400	  	"		var ch = this.src.charAt(this.pos++);"
REM	  	0401	  	"		if (ch == ""\"""") return this.QUOTE2;"
REM	  	0402	  	"		if (ch == ""\\"") return this.src.charAt(this.pos++);"
REM	  	0403	  	"		if (ch != ""^"") return ch;"
REM	  	0404	  	"		ch = this.unescMap[this.src.charAt(this.pos++)];"
REM	  	0405	  	"		if (ch != null) return ch;"
REM	  	0406	  	"	}"
REM	  	0407	  	"	return this.EOF;"
REM	  	0408	  	}
REM	  	0409	  	
REM	  	0410	  	Source.prototype.getNextSymbolChar = function() {
REM	  	0411	  	"	if ("" \t\r\n('\"""".indexOf(this.src.charAt(this.pos)) >= 0) return this.CLOSESYM;"
REM	  	0412	  	"	var ch = this.src.charAt(this.pos++);"
REM	  	0413	  	"	if (ch == "")"") return this.CLOSEPAREN;"
REM	  	0414	  	"	if (ch == ""\\"") return this.src.charAt(this.pos++);"
REM	  	0415	  	"	return ch;"
REM	  	0416	  	}
REM	  	0417	  	
REM	  	0418	  	Source.prototype.withTrace = function() {
REM	  	0419	  	"	this.trace = [];"
REM	  	0420	  	"	return this;"
REM	  	0421	  	}
REM	  	0422	  	
REM	  	0423	  	Source.prototype.traceItemEnd = function(item) {
REM	  	0424	  	"	if (this.trace) this.trace.push({item: item, endPos: this.pos});"
REM	  	0425	  	}
REM	  	0426	  	
REM	  	0427	  	Source.prototype.getItemBeforePos = function(endPos) {
REM	  	0428	  	"	for (var i=this.trace.length-1; i>=0; i--) {"
REM	  	0429	  	"		var t = this.trace[i];"
REM	  	0430	  	"		if ((t.endPos - t.item.toString().length) <= endPos) return {item: t.item, tInd: i};"
REM	  	0431	  	"	}"
REM	  	0432	  	"	return null;"
REM	  	0433	  	}
REM	  	0434	  	
REM	  	0435	  	Source.prototype.getSymbolBeforePos = function(endPos) {
REM	  	0436	  	"	for (var i=this.trace.length-1; i>=0; i--) {"
REM	  	0437	  	"		var t = this.trace[i];"
REM	  	0438	  	"		if (((t.endPos - t.item.toString().length) <= endPos) &&"
REM	  	0439	  	"			(t.item instanceof Symbol) && gSym[t.item.name]) return {item: t.item, tInd: i};"
REM	  	0440	  	"	}"
REM	  	0441	  	"	return null;"
REM	  	0442	  	}
REM	  	0443	  	
REM	  	0444	  	"var NIL = new Symbol(""NIL"");	NIL.car = NIL;	NIL.cdr = NIL;	NIL.props = NIL;"
REM	  	0445	  	"		NIL.lock = true; NIL.TYPEVAL = NILTYPE; NIL.bool = false;"
REM	  	0446	  	"var T = new Symbol(""T"");	T.cdr = T;	T.lock = true; T.TYPEVAL = TRUETYPE; T.bool = true;"
REM	  	0447	  	var A1 = new Symbol("@", NIL), A2 = new Symbol("@@", NIL), A3 = new Symbol("@@@", NIL);
REM	  	0448	  	var ZERO = new Number(0), ONE = new Number(1);
REM	  	0449	  	"var gSym = {NIL: NIL, T: T, ""@"": A1, ""@@"": A2, ""@@@"": A3};	// dictionary/index for internal symbols"
REM	  	0450	  	"var gTrans = {};	// dictionary/index for transient symbols (strings)"
REM	  	0451	  	var gEmptyObj = {};
REM	  	0452	  	var gParseCache = {};
REM	  	0453	  	"var mk = [];	// 'make' stack"
REM	  	0454	  	var evFrames = NIL;
REM	  	0455	  	var gTrcIndent = "";
REM	  	0456	  	var startupMillis = (new Date()).getTime();
REM	  	0457	  	
REM	  	0458	  	function mkNew() { mk.unshift({h: NIL, t: NIL}); }
REM	  	0459	  	function linkc(c) {
REM	  	0460	  	"	if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));"
REM	  	0461	  	"	c = (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL);"
REM	  	0462	  	"	if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }"
REM	  	0463	  	"	while (c.cdr !== NIL) { c = c.cdr; }; mk[0].t = c; return c.car;"
REM	  	0464	  	}
REM	  	0465	  	function link(x) {
REM	  	0466	  	"	if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));"
REM	  	0467	  	"	var c = new Cell(x, NIL);"
REM	  	0468	  	"	if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }"
REM	  	0469	  	"	mk[0].t = c; return x;"
REM	  	0470	  	}
REM	  	0471	  	function mkResult() { return mk.shift().h; }
REM	  	0472	  	
REM	  	0473	  	function getString(str, editMode) {
REM	  	0474	  	"	var s = (str in gEmptyObj) ? undefined : gTrans[str];"
REM	  	0475	  	"	if (s === undefined) {"
REM	  	0476	  	"		s = newTransSymbol(str);"
REM	  	0477	  	"		if (! (editMode || (str in gEmptyObj))) gTrans[str] = s;"
REM	  	0478	  	"	}"
REM	  	0479	  	"	return s;"
REM	  	0480	  	}
REM	  	0481	  	
REM	  	0482	  	function newErrMsg(msg, badValue) {
REM	  	0483	  	"	getSymbol(""*Msg"").setVal(newTransSymbol(msg));"
REM	  	0484	  	"	return (badValue === undefined) ? msg : lispToStr(badValue) + "" -- "" + msg;"
REM	  	0485	  	}
REM	  	0486	  	
REM	  	0487	  	function deFn(name, jsFn) {
REM	  	0488	  	"	if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));"
REM	  	0489	  	"	var sym = new Symbol(name, jsFn);"
REM	  	0490	  	"	gSym[name] = sym;"
REM	  	0491	  	}
REM	  	0492	  	
REM	  	0493	  	function aTrue(val) { if (val !== NIL) { A1.pushValue(val); return true; } else return false; }
REM	  	0494	  	
REM	  	0495	  	function aPop(val) { A1.popValue(); return val; }
REM	  	0496	  	
REM	  	0497	  	function car(c) { if (c.car) return c.car; else throw new Error(newErrMsg(LIST_EXP)); }
REM	  	0498	  	function cdr(c) { if ((c instanceof Cell) || (c === NIL)) return c.cdr;
REM	  	0499	  	"						else throw new Error(newErrMsg(LIST_EXP)); }"
REM	  	0500	  	
REM	  	0501	  	function numeric(val) {
REM	  	0502	  	"	if (val instanceof Number) return val;"
REM	  	0503	  	"	throw new Error(newErrMsg(NUM_EXP, val));"
REM	  	0504	  	}
REM	  	0505	  	
REM	  	0506	  	function nth(lst, n) {
REM	  	0507	  	"	if (lst instanceof Cell) {"
REM	  	0508	  	"		if (n <= 0) return NIL;"
REM	  	0509	  	"		while ((lst !== NIL) && (--n > 0)) { lst = lst.cdr; }"
REM	  	0510	  	"	}"
REM	  	0511	  	"	return lst;"
REM	  	0512	  	}
REM	  	0513	  	
REM	  	0514	  	function getAlg(c) {
REM	  	0515	  	"	//alert(""getAlg: "" + lispToStr(c));"
REM	  	0516	  	"	var s = c.car; c = c.cdr;"
REM	  	0517	  	"	while (c instanceof Cell) {"
REM	  	0518	  	"		var k = c.car;"
REM	  	0519	  	"		if (s instanceof Symbol) {"
REM	  	0520	  	"			if (eqVal(k, ZERO)) {"
REM	  	0521	  	"				s = s.getVal();"
REM	  	0522	  	"			} else {"
REM	  	0523	  	"				var pLst = s.props, p = NIL, pk, pv;"
REM	  	0524	  	"				while (pLst !== NIL) {"
REM	  	0525	  	"					var pc = pLst.car;"
REM	  	0526	  	"					if (pc instanceof Cell) { pk = pc.cdr; pv = pc.car; } else { pk = pc; pv = T; }"
REM	  	0527	  	//if (!confirm("getAlg: " + lispToStr(pc) + ", " + lispToStr(pk) + ", " + lispToStr(pv))) throw new Error("getAlg aborted");
REM	  	0528	  	"					if (pk === k) { p = pv; break; }"
REM	  	0529	  	"					pLst = pLst.cdr;"
REM	  	0530	  	"				}"
REM	  	0531	  	"				s = p;	// the symbol or list to use in the next step"
REM	  	0532	  	"			}"
REM	  	0533	  	"		} else if (s instanceof Cell) {"
REM	  	0534	  	"			if (k instanceof Number) {"
REM	  	0535	  	"				if (k >= 0) {"
REM	  	0536	  	"					s = nth(s, k).car;"
REM	  	0537	  	"				} else {"
REM	  	0538	  	"					do { s = s.cdr; } while ((s !== NIL) && (++k < 0));"
REM	  	0539	  	"				}"
REM	  	0540	  	"			}"
REM	  	0541	  	"		} else throw new Error(newErrMsg(SYM_EXP));"
REM	  	0542	  	"		c = c.cdr;"
REM	  	0543	  	"	}"
REM	  	0544	  	"	return s;"
REM	  	0545	  	}
REM	  	0546	  	
REM	  	0547	  	function prog(c) {
REM	  	0548	  	"	var v = NIL; while (c instanceof Cell) { v = evalLisp(c.car); c = c.cdr; }; return v;"
REM	  	0549	  	}
REM	  	0550	  	
REM	  	0551	  	function iter(c) {
REM	  	0552	  	"	var v = NIL;"
REM	  	0553	  	"	while (c instanceof Cell) {"
REM	  	0554	  	"		var cv = c.car, cond = false, cMatch = false;"
REM	  	0555	  	"		if (cv instanceof Cell) {"
REM	  	0556	  	"			if (cond = (cv.car === NIL)) {"
REM	  	0557	  	"				cMatch = (evalLisp(cv.cdr.car) === NIL);"
REM	  	0558	  	"			} else if (cond = (cv.car === T)) {"
REM	  	0559	  	"				cMatch = aTrue(evalLisp(cv.cdr.car));"
REM	  	0560	  	"			}"
REM	  	0561	  	"		}"
REM	  	0562	  	"		if (cond) {"
REM	  	0563	  	"			if (cMatch) {"
REM	  	0564	  	"				v = prog(cv.cdr.cdr);"
REM	  	0565	  	"				if (cv.car === T) aPop(v);"
REM	  	0566	  	"				return {v: v, m: true};"
REM	  	0567	  	"			}"
REM	  	0568	  	"		} else v = evalLisp(cv);"
REM	  	0569	  	"		c = c.cdr;"
REM	  	0570	  	"	}"
REM	  	0571	  	"	return {v: v, m: false};"
REM	  	0572	  	}
REM	  	0573	  	
REM	  	0574	  	function div(c, divFn) {
REM	  	0575	  	"	var t = evalLisp(c.car);"
REM	  	0576	  	"	if (t === NIL) return NIL;"
REM	  	0577	  	"	t = numeric(t);"
REM	  	0578	  	"	while (c.cdr !== NIL) {"
REM	  	0579	  	"		c = c.cdr;"
REM	  	0580	  	"		var v = evalLisp(c.car); if (v === NIL) return NIL;"
REM	  	0581	  	"		if (numeric(v) == 0) throw new Error(newErrMsg(DIV_0));"
REM	  	0582	  	"		t = divFn(t, v);"
REM	  	0583	  	"	}"
REM	  	0584	  	"	return new Number(t);"
REM	  	0585	  	}
REM	  	0586	  	
REM	  	0587	  	function eqVal(a, b) {
REM	  	0588	  	"	//alert(""eqVal() "" + a + "", "" + b);"
REM	  	0589	  	"	if (a.TYPEVAL === b.TYPEVAL) {"
REM	  	0590	  	"		if (a === b) return true;"
REM	  	0591	  	"		if (a.TYPEVAL === CELLTYPE) {"
REM	  	0592	  	"			return eqVal(a.car, b.car) ? eqVal(a.cdr, b.cdr) : false;"
REM	  	0593	  	"		}"
REM	  	0594	  	"		return (a.valueOf() == b.valueOf());	// Number or Symbol"
REM	  	0595	  	"	}"
REM	  	0596	  	"	return false;"
REM	  	0597	  	}
REM	  	0598	  	
REM	  	0599	  	function ltVal(a, b) {
REM	  	0600	  	"	if (a.TYPEVAL === b.TYPEVAL) {"
REM	  	0601	  	"		if (a === b) return false;"
REM	  	0602	  	"		if (a.TYPEVAL === CELLTYPE) {"
REM	  	0603	  	"			return eqVal(a.car, b.car) ? ltVal(a.cdr, b.cdr) : ltVal(a.car, b.car);"
REM	  	0604	  	"		}"
REM	  	0605	  	"		return a.valueOf() < b.valueOf();	// Number or Symbol"
REM	  	0606	  	"	}"
REM	  	0607	  	"	return a.TYPEVAL < b.TYPEVAL;"
REM	  	0608	  	}
REM	  	0609	  	
REM	  	0610	  	function idxLookup(owner, v) {
REM	  	0611	  	"	var tree = owner.getVal();"
REM	  	0612	  	"	if (tree === NIL) return NIL;"
REM	  	0613	  	"	while (!eqVal(v, tree.car)) {"
REM	  	0614	  	"		if (tree.cdr === NIL) return NIL;"
REM	  	0615	  	"		if (ltVal(v, tree.car)) return idxLookup(tree.cdr, v);"
REM	  	0616	  	"		tree = tree.cdr;"
REM	  	0617	  	"		if (tree.cdr === NIL) return NIL;"
REM	  	0618	  	"		tree = tree.cdr;"
REM	  	0619	  	"	}"
REM	  	0620	  	"	return tree;"
REM	  	0621	  	}
REM	  	0622	  	
REM	  	0623	  	function idxInsert(owner, v) {
REM	  	0624	  	"	var tree = owner.getVal();"
REM	  	0625	  	"	if (tree === NIL) { owner.setVal(new Cell(v, NIL)); return NIL; }"
REM	  	0626	  	"	while (!eqVal(v, tree.car)) {"
REM	  	0627	  	"		if (tree.cdr === NIL) tree.cdr = new Cell(NIL, NIL);"
REM	  	0628	  	"		if (ltVal(v, tree.car)) return idxInsert(tree.cdr, v);"
REM	  	0629	  	"		tree = tree.cdr;"
REM	  	0630	  	"		if (tree.cdr === NIL) { tree.cdr = new Cell(v, NIL); return NIL; }"
REM	  	0631	  	"		tree = tree.cdr;"
REM	  	0632	  	"		//if (!confirm(""idxInsert: "" + lispToStr(tree))) throw new Error(""idxInsert aborted"");"
REM	  	0633	  	"	}"
REM	  	0634	  	"	return tree;"
REM	  	0635	  	}
REM	  	0636	  	
REM	  	0637	  	function idxDelete(owner, v) {
REM	  	0638	  	"	var tree = owner.getVal(), pre = NIL;"
REM	  	0639	  	"	if (tree === NIL) return NIL;"
REM	  	0640	  	"	while (!eqVal(v, tree.car)) {"
REM	  	0641	  	"		if (tree.cdr === NIL) return NIL;"
REM	  	0642	  	"		if (ltVal(v, tree.car)) return idxDelete(tree.cdr, v);"
REM	  	0643	  	"		pre = tree; tree = tree.cdr;"
REM	  	0644	  	"		if (tree.cdr === NIL) return NIL;"
REM	  	0645	  	"		pre = tree; tree = tree.cdr;"
REM	  	0646	  	"		//if (!confirm(""idxDelete: "" + lispToStr(tree))) throw new Error(""idxDelete aborted"");"
REM	  	0647	  	"	}"
REM	  	0648	  	"	// tree.car is the value to delete"
REM	  	0649	  	"	//var bbc = null;		// cell with ""big brother"" to replace tree.car, if needed"
REM	  	0650	  	"	if (tree.cdr.car !== NIL) {"
REM	  	0651	  	"		// There are lesser values that need a new ""big brother""."
REM	  	0652	  	"		if (tree.cdr.cdr !== NIL) {"
REM	  	0653	  	"			var pbc = tree.cdr, bbc = pbc.cdr;"
REM	  	0654	  	"			if (bbc.cdr.car !== NIL) {"
REM	  	0655	  	"				// There are several ""big brother"" candidates, get the smallest ..."
REM	  	0656	  	"				do { pbc = bbc; bbc = bbc.cdr.car; } while (bbc.cdr.car !== NIL);"
REM	  	0657	  	"				pbc.cdr.car = NIL;	// brother's old cell replaced by NIL"
REM	  	0658	  	"			} else {"
REM	  	0659	  	"				// Only one candidate. Cut it and following NIL from list ..."
REM	  	0660	  	"				pbc.cdr = pbc.cdr.cdr.cdr;"
REM	  	0661	  	"			}"
REM	  	0662	  	"			//alert(""idxDelete: "" + lispToStr(bbc));"
REM	  	0663	  	"			tree.car = bbc.car;	// value to delete replaced by ""big brother"""
REM	  	0664	  	"		} else {"
REM	  	0665	  	"			// Must promote lesser values"
REM	  	0666	  	"			if (pre === NIL) {"
REM	  	0667	  	"				owner.setVal(tree.cdr.car);"
REM	  	0668	  	"			} else {"
REM	  	0669	  	"				pre.cdr = tree.cdr.car;"
REM	  	0670	  	"			}"
REM	  	0671	  	"		}"
REM	  	0672	  	"	} else {"
REM	  	0673	  	"		// No lesser values following value to delete"
REM	  	0674	  	"		if (pre === NIL) {"
REM	  	0675	  	"			owner.setVal(tree.cdr.cdr);"
REM	  	0676	  	"		} else {"
REM	  	0677	  	"			pre.cdr = tree.cdr.cdr;"
REM	  	0678	  	"		}"
REM	  	0679	  	"	}"
REM	  	0680	  	"	return tree;"
REM	  	0681	  	}
REM	  	0682	  	
REM	  	0683	  	function idxLinkSorted(tree) {
REM	  	0684	  	"	while (tree !== NIL)"
REM	  	0685	  	"	{ idxLinkSorted(tree.cdr.car); link(tree.car); tree = tree.cdr.cdr; }"
REM	  	0686	  	}
REM	  	0687	  	
REM	  	0688	  	/*
REM	  	0689	  	* If 'evaluate' is true, each top level expression will be evaluated, and the result
REM	  	0690	  	* of the last evaluation ('evRes') will be returned. A top level NIL or equivalent
REM	  	0691	  	* will terminate further parsing.
REM	  	0692	  	* If 'evaluate' is false/undefined, the source at the current level will be parsed,
REM	  	0693	  	* and a corresponding tree of cells will be returned (through the 'cdr' at the bottom).
REM	  	0694	  	* If 'editMode' is true, parsed symbols will not be inserted into the dictionaries.
REM	  	0695	  	*/
REM	  	0696	  	function parseList(src, evaluate, editMode) {
REM	  	0697	  	"	var ch, s, dotPos = 0, quotes = 0, items = [], cdr = NIL, evRes = NIL, circEnd = null;"
REM	  	0698	  	"	do {"
REM	  	0699	  	"		ch = src.getNextSignificantChar();"
REM	  	0700	  	"		if (ch == ""'"") {"
REM	  	0701	  	"			quotes++;"
REM	  	0702	  	"		} else if (ch == "")"") {"
REM	  	0703	  	"			break;"
REM	  	0704	  	"		} else if ((ch == ""."") && (items.length > 0)) {"
REM	  	0705	  	"			if (dotPos > 0) throw new Error(newErrMsg(BAD_DOT,"
REM	  	0706	  	"												""("" + lispToStr(items[items.length-1]) + "" . \\.)""));"
REM	  	0707	  	"			dotPos = items.length;"
REM	  	0708	  	"		} else if (ch !== src.EOF) {"
REM	  	0709	  	"			var item;"
REM	  	0710	  	"			if (ch == ""("") {"
REM	  	0711	  	"				var tmp = parseList(src, false, editMode);"
REM	  	0712	  	"				if (evaluate && (tmp !== NIL)) evRes = evalLisp(tmp);"
REM	  	0713	  	"				item = tmp;"
REM	  	0714	  	"			} else if (ch == ""\"""") {"
REM	  	0715	  	"				s = """";"
REM	  	0716	  	"				while (typeof (ch = src.getNextStringChar()) == ""string"") s += ch;"
REM	  	0717	  	"				item = (s == """") ? NIL : getString(s, editMode);"
REM	  	0718	  	"				src.traceItemEnd(item);		// in case we would like to know item's position"
REM	  	0719	  	"			} else {"
REM	  	0720	  	"				s = ch;"
REM	  	0721	  	"				while (typeof (ch = src.getNextSymbolChar()) == ""string"") s += ch;"
REM	  	0722	  	"				item = isNaN(s) ? getSymbol(s, editMode) : new Number(s);"
REM	  	0723	  	"				src.traceItemEnd(item);		// in case we would like to know item's position"
REM	  	0724	  	"			}"
REM	  	0725	  	"			if (evaluate && (item === NIL)) return evRes;"
REM	  	0726	  	"			if ((dotPos > 0) && (items.length > dotPos)) throw new Error(newErrMsg(BAD_DOT));"
REM	  	0727	  	"			// TODO: provide a 'badValue' param for newErrMsg(BAD_DOT) above. Case: (1 (2 3) . 4 5)"
REM	  	0728	  	"			while (quotes > 0) { item = new Cell(QUOTE, item); quotes--; }"
REM	  	0729	  	"			items.push(item);"
REM	  	0730	  	"		}"
REM	  	0731	  	"	} while ((ch !== src.CLOSEPAREN) && (ch !== src.EOF));"
REM	  	0732	  	"	if (evaluate) return evRes;"
REM	  	0733	  	"	if (dotPos > 0) {"
REM	  	0734	  	"		if (dotPos == items.length) {"
REM	  	0735	  	"			cdr = new Cell(items.pop(), cdr);"
REM	  	0736	  	"			circEnd = cdr;		// last cell in circular (x y z .) notation"
REM	  	0737	  	"		} else { cdr = items.pop(); }	// normal dot notation"
REM	  	0738	  	"	}"
REM	  	0739	  	"	while (items.length > 0) cdr = new Cell(items.pop(), cdr);"
REM	  	0740	  	"	if (circEnd != null) circEnd.cdr = cdr;"
REM	  	0741	  	"	return cdr;"
REM	  	0742	  	}
REM	  	0743	  	
REM	  	0744	  	function cachedTextParse(str) {
REM	  	0745	  	"	var lst = gParseCache[str];"
REM	  	0746	  	"	if (lst === undefined) {"
REM	  	0747	  	"		lst = parseList(new Source(str));"
REM	  	0748	  	"		gParseCache[str] = lst;"
REM	  	0749	  	"	}"
REM	  	0750	  	"	return lst;"
REM	  	0751	  	}
REM	  	0752	  	
REM	  	0753	  	function unevalArgs(lst) {
REM	  	0754	  	"	// Putting elements of lst into anonymous symbols"
REM	  	0755	  	"	mkNew(); while (lst !== NIL) { link(box(lst.car)); lst = lst.cdr; }"
REM	  	0756	  	"	return mkResult();"
REM	  	0757	  	}
REM	  	0758	  	
REM	  	0759	  	function applyFn(rawFn, lst, more) {
REM	  	0760	  	"	if (more !== NIL) {"
REM	  	0761	  	"		mkNew(); do { link(evalLisp(more.car)); more = more.cdr; } while (more !== NIL);"
REM	  	0762	  	"		mk[0].t.cdr = lst; lst = mkResult();"
REM	  	0763	  	"	}"
REM	  	0764	  	"	var fn = evalLisp(rawFn); if (! (fn instanceof Symbol)) fn = box(fn);"
REM	  	0765	  	"	return evalLisp(new Cell(fn, unevalArgs(lst)));"
REM	  	0766	  	}
REM	  	0767	  	
REM	  	0768	  	deFn("apply", function(c) { return applyFn(c.car, evalLisp(c.cdr.car), c.cdr.cdr); });
REM	  	0769	  	deFn("arg", function(c) { var n = 0, f = evFrames.car;
REM	  	0770	  	"	if (c !== NIL) {"
REM	  	0771	  	"		n = Math.round(numeric(evalLisp(c.car))); if (n < 1) return NIL;"
REM	  	0772	  	"	}"
REM	  	0773	  	"	while (n-- > 0) f = f.cdr;"
REM	  	0774	  	"	return f.car;"
REM	  	0775	  	});
REM	  	0776	  	deFn("args", function(c) { return (evFrames.car.cdr === NIL) ? NIL : T; });
REM	  	0777	  	deFn("bench", function(c) { var t0 = (new Date()).getTime(), r = prog(c);
REM	  	0778	  	"	_stdPrint(((new Date()).getTime() - t0) / 1000 + "" sec\n""); return r;"
REM	  	0779	  	});
REM	  	0780	  	deFn("box", function(c) { return box(evalLisp(c.car)); });
REM	  	0781	  	deFn("caar", function(c) { return car(car(evalLisp(c.car))); });
REM	  	0782	  	deFn("caddr", function(c) { return car(cdr(cdr(evalLisp(c.car)))); });
REM	  	0783	  	deFn("cadr", function(c) { return car(cdr(evalLisp(c.car))); });
REM	  	0784	  	deFn("car", function(c) { return car(evalLisp(c.car)); });
REM	  	0785	  	deFn("cdar", function(c) { return cdr(car(evalLisp(c.car))); });
REM	  	0786	  	deFn("cddr", function(c) { return cdr(cdr(evalLisp(c.car))); });
REM	  	0787	  	deFn("cdr", function(c) { return cdr(evalLisp(c.car)); });
REM	  	0788	  	deFn("chop", function(c) { var cv = evalLisp(c.car);
REM	  	0789	  	"	if ((cv === NIL) || (cv instanceof Cell)) return cv;"
REM	  	0790	  	"	var s = (cv instanceof Symbol) ? cv.valueOf() : cv.toString();"
REM	  	0791	  	"	if (s === null) return NIL;"
REM	  	0792	  	"	var arr = s.split(""""), v = NIL;"
REM	  	0793	  	"	while (arr.length > 0) v = new Cell(newTransSymbol(arr.pop()), v);"
REM	  	0794	  	"	return v;"
REM	  	0795	  	});
REM	  	0796	  	deFn("cond", function(c) {
REM	  	0797	  	"	while (c.car instanceof Cell) {"
REM	  	0798	  	"		if (aTrue(evalLisp(c.car.car))) return aPop(prog(c.car.cdr));"
REM	  	0799	  	"		c = c.cdr;"
REM	  	0800	  	"	}"
REM	  	0801	  	"	return NIL;"
REM	  	0802	  	});
REM	  	0803	  	deFn("cons", function(c) { var r = new Cell(evalLisp(c.car), evalLisp(c.cdr.car)), t = r;
REM	  	0804	  	"	c = c.cdr.cdr;"
REM	  	0805	  	"	while (c !== NIL) { var d = new Cell(t.cdr, evalLisp(c.car)); t.cdr = d; t = d; c = c.cdr; }"
REM	  	0806	  	"	return r;"
REM	  	0807	  	});
REM	  	0808	  	deFn("de", function(c) { var old = c.car.getVal();
REM	  	0809	  	"	setSymbolValue(c.car, c.cdr);"
REM	  	0810	  	"	if ((old !== NIL) && !eqVal(c.cdr, old)) _warn(""# "" + c.car.valueOf() + "" redefined"");"
REM	  	0811	  	"	return c.car;"
REM	  	0812	  	});
REM	  	0813	  	deFn("dec", function(c) {
REM	  	0814	  	"	if (c === NIL) return NIL;"
REM	  	0815	  	"	var ns = evalLisp(c.car);"
REM	  	0816	  	"	if (ns instanceof Number) return new Number(ns - 1);"
REM	  	0817	  	"	var v = new Number(ns.getVal() - ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));"
REM	  	0818	  	"	ns.setVal(v); return v;"
REM	  	0819	  	});
REM	  	0820	  	deFn("delete", function(c) { var a = evalLisp(c.car), lst = evalLisp(c.cdr.car);
REM	  	0821	  	"	if (!(lst instanceof Cell)) return lst;"
REM	  	0822	  	"	if (eqVal(a, lst.car)) return lst.cdr;"
REM	  	0823	  	"	mkNew(); link(lst.car); lst = lst.cdr;"
REM	  	0824	  	"	while (lst instanceof Cell) {"
REM	  	0825	  	"		if (eqVal(a, lst.car)) { mk[0].t.cdr = lst.cdr; return mkResult(); }"
REM	  	0826	  	"		link(lst.car); lst = lst.cdr;"
REM	  	0827	  	"	}"
REM	  	0828	  	"	mk[0].t.cdr = lst;	// taking care of dotted tail"
REM	  	0829	  	"	return mkResult();"
REM	  	0830	  	});
REM	  	0831	  	deFn("do", function(c) {
REM	  	0832	  	"	var n = evalLisp(c.car);"
REM	  	0833	  	"	if (n === NIL) return NIL;"
REM	  	0834	  	"	var step = 1, b = c.cdr, v = NIL;"
REM	  	0835	  	"	if (n === T) { n = 1; step = 0; }"
REM	  	0836	  	"	for (var i=1; i<=n; i+=step) {"
REM	  	0837	  	"		var r = iter(b); v = r.v; if (r.m) break;"
REM	  	0838	  	"	}"
REM	  	0839	  	"	return v;"
REM	  	0840	  	});
REM	  	0841	  	"deFn(""eval"", function(c) { return evalLisp(evalLisp(c.car)); });	// TODO: binding env. offset cnt"
REM	  	0842	  	deFn("fin", function(c) { c = evalLisp(c.car); while (c instanceof Cell) { c = c.cdr; }; return c; });
REM	  	0843	  	deFn("for", function(c) {
REM	  	0844	  	"	var s = null, s2 = null, v = NIL;"
REM	  	0845	  	"	if (c.car instanceof Symbol) {"
REM	  	0846	  	"		s = c.car;"
REM	  	0847	  	"	} else if (c.car.cdr instanceof Symbol) {"
REM	  	0848	  	"		s2 = c.car.car; s = c.car.cdr;"
REM	  	0849	  	"	}"
REM	  	0850	  	"	if (s != null) {"
REM	  	0851	  	"		s.pushValue(NIL);	if (s2 != null) s2.pushValue(ZERO);"
REM	  	0852	  	"		var nl = evalLisp(c.cdr.car), b = c.cdr.cdr, i = 0;"
REM	  	0853	  	"		if (nl instanceof Number) {"
REM	  	0854	  	"			//alert(""for: 1st form"");	// (for I 3 (js:confirm I))"
REM	  	0855	  	"			while (++i <= nl) {"
REM	  	0856	  	"				s.setVal(new Number(i));"
REM	  	0857	  	"				var r = iter(b); v = r.v; if (r.m) break;"
REM	  	0858	  	"			}"
REM	  	0859	  	"		} else {"
REM	  	0860	  	"			//alert(""for: 2nd form"");	// (for (I . X) (22 33 44) (js:confirm (+ I X)) (+ I X))"
REM	  	0861	  	"			while (nl instanceof Cell) {"
REM	  	0862	  	"				s.setVal(nl.car); if (s2 != null) s2.setVal(new Number(++i));"
REM	  	0863	  	"				var r = iter(b); v = r.v; if (r.m) break;"
REM	  	0864	  	"				nl = nl.cdr;"
REM	  	0865	  	"			}"
REM	  	0866	  	"		}"
REM	  	0867	  	"	} else {"
REM	  	0868	  	"		//alert(""for: 3rd form"");"
REM	  	0869	  	"		if (c.car.car instanceof Symbol) {"
REM	  	0870	  	"			s = c.car.car;"
REM	  	0871	  	"		} else {"
REM	  	0872	  	"			s2 = c.car.car.car; s = c.car.car.cdr;"
REM	  	0873	  	"		}"
REM	  	0874	  	"		s.pushValue(evalLisp(c.car.cdr.car));	if (s2 != null) s2.pushValue(ZERO);"
REM	  	0875	  	"		var a2p = c.car.cdr.cdr, a2 = a2p.car, b = c.cdr, i = 0;"
REM	  	0876	  	"		var p = (a2p.cdr instanceof Cell) ? a2p.cdr.car : null;"
REM	  	0877	  	"		while (evalLisp(a2) !== NIL) {"
REM	  	0878	  	"			if (s2 != null) s2.setVal(new Number(++i));"
REM	  	0879	  	"			var r = iter(b); v = r.v; if (r.m) break;"
REM	  	0880	  	"			if (p != null) s.setVal(evalLisp(p));"
REM	  	0881	  	"		}"
REM	  	0882	  	"	}"
REM	  	0883	  	"	s.popValue();	if (s2 != null) s2.popValue();"
REM	  	0884	  	"	return v;"
REM	  	0885	  	});
REM	  	0886	  	deFn("get", function(c) { return getAlg(evalArgs(c)); });
REM	  	0887	  	deFn("getl", function(c) { var s = getAlg(evalArgs(c));
REM	  	0888	  	"	if (s instanceof Symbol) return s.props;"
REM	  	0889	  	"	throw new Error(newErrMsg(SYM_EXP, s));"
REM	  	0890	  	});
REM	  	0891	  	deFn("idx", function(c) { var s = evalLisp(c.car);
REM	  	0892	  	"	if (!(s instanceof Symbol)) return NIL;"
REM	  	0893	  	"	if (c.cdr === NIL) { mkNew(); idxLinkSorted(s.getVal()); return mkResult(); }"
REM	  	0894	  	"	var a = evalLisp(c.cdr.car);"
REM	  	0895	  	"	if (c.cdr.cdr === NIL) return idxLookup(s, a);"
REM	  	0896	  	"	return (evalLisp(c.cdr.cdr.car) === NIL) ? idxDelete(s, a) : idxInsert(s, a);"
REM	  	0897	  	});
REM	  	0898	  	deFn("if", function(c) { return aTrue(evalLisp(c.car)) ? aPop(evalLisp(c.cdr.car)) : prog(c.cdr.cdr); });
REM	  	0899	  	deFn("ifn", function(c) { return aTrue(evalLisp(c.car)) ? aPop(prog(c.cdr.cdr)) : evalLisp(c.cdr.car); });
REM	  	0900	  	deFn("inc", function(c) {
REM	  	0901	  	"	if (c === NIL) return NIL;"
REM	  	0902	  	"	var ns = evalLisp(c.car);"
REM	  	0903	  	"	if (ns instanceof Number) return new Number(ns + 1);"
REM	  	0904	  	"	var v = new Number(ns.getVal() + ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));"
REM	  	0905	  	"	ns.setVal(v); return v;"
REM	  	0906	  	});
REM	  	0907	  	deFn("length", function(c) { var cv = evalLisp(c.car), v = 0;
REM	  	0908	  	"	if (cv instanceof Number) { v = cv.toString().length; }"
REM	  	0909	  	"	else if (cv instanceof Symbol) { v = cv.lock ? cv.toValueString().length :"
REM	  	0910	  	"		(cv.name === null) ? 0 : cv.name.length; }"
REM	  	0911	  	"	else if (cv instanceof Cell) { var cs = cv;"
REM	  	0912	  	"		while (cs !== NIL) { v++; cs = cs.cdr; if (cs === cv) return T; }}"
REM	  	0913	  	"	return new Number(v);"
REM	  	0914	  	});
REM	  	0915	  	deFn("let", function(c) {
REM	  	0916	  	"	var symArr = [], p = c.cdr;"
REM	  	0917	  	"	if (c.car instanceof Symbol) {"
REM	  	0918	  	"		if (c.car !== NIL) {"
REM	  	0919	  	"			c.car.pushValue(evalLisp(c.cdr.car)); symArr.push(c.car); p = c.cdr.cdr;"
REM	  	0920	  	"		}"
REM	  	0921	  	"	} else if (c.car instanceof Cell) {"
REM	  	0922	  	"		var sv = c.car;"
REM	  	0923	  	"		while (sv !== NIL) {"
REM	  	0924	  	"			sv.car.pushValue(evalLisp(sv.cdr.car)); symArr.push(sv.car); sv = sv.cdr.cdr;"
REM	  	0925	  	"		}"
REM	  	0926	  	"	}"
REM	  	0927	  	"	var v = prog(p);"
REM	  	0928	  	"	while (symArr.length > 0) { symArr.pop().popValue(); }"
REM	  	0929	  	"	return v;"
REM	  	0930	  	});
REM	  	0931	  	deFn("link", linkc);
REM	  	0932	  	deFn("list", function(c) { return (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL); });
REM	  	0933	  	deFn("load", function(c) { var r = NIL;
REM	  	0934	  	"	while (c instanceof Cell) {"
REM	  	0935	  	"		var cv = evalLisp(c.car);"
REM	  	0936	  	"		if (cv instanceof Symbol) {"
REM	  	0937	  	"			var f = cv.toValueString();"
REM	  	0938	  	"			if (f.charAt(0) == ""-"") {"
REM	  	0939	  	"				r = parseList(new Source(""("" + f.substring(1) + "")""), true);"
REM	  	0940	  	"			} else {"
REM	  	0941	  	"				r = (f.match(/\.js$/)) ? loadJavaScript(f) : loadLisp(f);"
REM	  	0942	  	"			}"
REM	  	0943	  	"		}"
REM	  	0944	  	"		c = c.cdr;"
REM	  	0945	  	"	}"
REM	  	0946	  	"	return r;"
REM	  	0947	  	});
REM	  	0948	  	deFn("loop", function(c) {
REM	  	0949	  	"	var v = NIL; while (true) { var r = iter(c); v = r.v; if (r.m) break; }; return v;"
REM	  	0950	  	});
REM	  	0951	  	deFn("make", function(c) { mkNew(); prog(c); return mkResult(); });
REM	  	0952	  	deFn("mapc", function(c) { var r = NIL, fn = evalLisp(c.car), ci = evalArgs(c.cdr);
REM	  	0953	  	"	if (! (fn instanceof Symbol)) fn = box(fn);"
REM	  	0954	  	"	while (ci.car !== NIL) { var cj = ci; mkNew();"
REM	  	0955	  	"		while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }"
REM	  	0956	  	"		r = evalLisp(new Cell(fn, unevalArgs(mkResult())));"
REM	  	0957	  	"	}"
REM	  	0958	  	"	return r;"
REM	  	0959	  	});
REM	  	0960	  	deFn("mapcar", function(c) { var fn = evalLisp(c.car), ci = evalArgs(c.cdr);
REM	  	0961	  	"	if (! (fn instanceof Symbol)) fn = box(fn);"
REM	  	0962	  	"	mkNew();"
REM	  	0963	  	"	while (ci.car !== NIL) { var cj = ci; mkNew();"
REM	  	0964	  	"		//if (!confirm(lispToStr(cj))) throw new Error(""mapcar aborted"");"
REM	  	0965	  	"		while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }"
REM	  	0966	  	"		link(evalLisp(new Cell(fn, unevalArgs(mkResult()))));"
REM	  	0967	  	"	}"
REM	  	0968	  	"	return mkResult();"
REM	  	0969	  	});
REM	  	0970	  	deFn("next", function(c) { evFrames.car = evFrames.car.cdr; return evFrames.car.car; });
REM	  	0971	  	deFn("not", function(c) { return (evalLisp(c.car) === NIL) ? T : NIL; });
REM	  	0972	  	deFn("nth", function(c) { var lst = evalArgs(c); c = lst.cdr;
REM	  	0973	  	"	do { lst = nth(lst.car, numeric(c.car)); c = c.cdr; } while(c !== NIL); return lst; });"
REM	  	0974	  	// pack has no support for circular lists, same as in PicoLisp
REM	  	0975	  	deFn("pack", function(c) { return (c !== NIL) ? newTransSymbol(valueToStr(evalArgs(c))) : NIL; });
REM	  	0976	  	deFn("pass", function(c) { return applyFn(c.car, evFrames.car.cdr, c.cdr); });
REM	  	0977	  	deFn("pop", function(c) { var cv = evalLisp(c.car);
REM	  	0978	  	"	if (cv.getVal) {"
REM	  	0979	  	"		var v = cv.getVal();"
REM	  	0980	  	"		if (v instanceof Cell) { cv.setVal(v.cdr); return v.car; }"
REM	  	0981	  	"		if (v === NIL) return NIL;"
REM	  	0982	  	"		if (cv instanceof Cell) return cv.car;"
REM	  	0983	  	"	}"
REM	  	0984	  	"	throw new Error(newErrMsg(VAR_EXP, cv));"
REM	  	0985	  	});
REM	  	0986	  	deFn("prin", function(c) {
REM	  	0987	  	"	c = evalArgs(c); _stdPrint(c.toValueString());"
REM	  	0988	  	"	while (c.cdr !== NIL) { c = c.cdr; }; return c.car;"
REM	  	0989	  	});
REM	  	0990	  	deFn("prinl", function(c) {
REM	  	0991	  	"	c = evalArgs(c); _stdPrint(c.toValueString() + ""\n"");"
REM	  	0992	  	"	while (c.cdr !== NIL) { c = c.cdr; }; return c.car;"
REM	  	0993	  	});
REM	  	0994	  	
REM	  	0995	  	function printx(c, x) { var arr = [];
REM	  	0996	  	"	c = evalArgs(c); arr.push(lispToStr(c.car));"
REM	  	0997	  	"	while (c.cdr !== NIL) { c = c.cdr; arr.push(lispToStr(c.car)); }"
REM	  	0998	  	"	_stdPrint(arr.join("" "") + x); return c.car;"
REM	  	0999	  	}
REM	  	1000	  	
REM	  	1001	  	deFn("print", function(c) { return printx(c, ""); });
REM	  	1002	  	deFn("println", function(c) { return printx(c, "\n"); });
REM	  	1003	  	deFn("printsp", function(c) { return printx(c, " "); });
REM	  	1004	  	deFn("prog", prog);
REM	  	1005	  	deFn("push", function(c) { var t = evalLisp(c.car), v;
REM	  	1006	  	"	if (t.getVal) {"
REM	  	1007	  	"		do { c = c.cdr; v = evalLisp(c.car); t.setVal(new Cell(v, t.getVal())); } while (c.cdr !== NIL);"
REM	  	1008	  	"		return v;"
REM	  	1009	  	"	}"
REM	  	1010	  	"	throw new Error(newErrMsg(VAR_EXP, t));"
REM	  	1011	  	});
REM	  	1012	  	deFn("put", function(c) {
REM	  	1013	  	"	var kc, vc;"
REM	  	1014	  	"	c = evalArgs(c); mkNew();"
REM	  	1015	  	"	do { link(c.car); kc = c.cdr; vc = kc.cdr; c = c.cdr; } while (vc.cdr !== NIL);"
REM	  	1016	  	"	var s = getAlg(mkResult()), k = kc.car;"
REM	  	1017	  	"	if (!(s instanceof Symbol)) throw new Error(newErrMsg(SYM_EXP, s));"
REM	  	1018	  	"	if (s === NIL) throw new Error(newErrMsg(PROT_SYM, s));"
REM	  	1019	  	"	if (eqVal(k, ZERO)) {"
REM	  	1020	  	"		s.setVal(vc.car);"
REM	  	1021	  	"	} else {"
REM	  	1022	  	"		var pLst = s.props, pre = NIL;"
REM	  	1023	  	"		while (pLst !== NIL) {"
REM	  	1024	  	"			var pc = pLst.car, pk = (pc instanceof Cell) ? pc.cdr : pc;"
REM	  	1025	  	"			if (pk === k) {"
REM	  	1026	  	"				if (pre === NIL) { s.props = pLst.cdr; } else { pre.cdr = pLst.cdr; }	// removing old"
REM	  	1027	  	"				break;"
REM	  	1028	  	"			}"
REM	  	1029	  	"			pre = pLst; pLst = pLst.cdr;"
REM	  	1030	  	"		}"
REM	  	1031	  	"		if (vc.car !== NIL) {"
REM	  	1032	  	"			var pc = new Cell((vc.car === T) ? k : new Cell(vc.car, k), s.props);"
REM	  	1033	  	"			s.props = pc;"
REM	  	1034	  	"		}"
REM	  	1035	  	"		//alert(""put props: "" + lispToStr(s.props));"
REM	  	1036	  	"	}"
REM	  	1037	  	"	return vc.car;"
REM	  	1038	  	});
REM	  	1039	  	deFn("queue", function(c) { var s = evalLisp(c.car);
REM	  	1040	  	"	if (s.getVal) {"
REM	  	1041	  	"		var cv = s.getVal(), t = new Cell(evalLisp(c.cdr.car), NIL);"
REM	  	1042	  	"		if (cv === NIL) { s.setVal(t); return t.car; }"
REM	  	1043	  	"		if (cv instanceof Cell) {"
REM	  	1044	  	"			while (cv.cdr !== NIL) cv = cv.cdr;"
REM	  	1045	  	"			cv.cdr = t; return t.car;"
REM	  	1046	  	"		}"
REM	  	1047	  	"	}"
REM	  	1048	  	"	throw new Error(newErrMsg(VAR_EXP, s));"
REM	  	1049	  	});
REM	  	1050	  	deFn("quote", function(c) { return c; });
REM	  	1051	  	var QUOTE = getSymbol("quote");
REM	  	1052	  	deFn("rand", function(c) { var r = Math.random();
REM	  	1053	  	"	if (c === NIL) return new Number(r);	// range 0.0 .. 1.0"
REM	  	1054	  	"	var n = evalLisp(c.car);"
REM	  	1055	  	"	if (n === T) return (r < 0.5) ? NIL : T;"
REM	  	1056	  	"	return new Number((-numeric(n) + numeric(evalLisp(c.cdr.car))) * r + n);"
REM	  	1057	  	});
REM	  	1058	  	deFn("range", function(c) {
REM	  	1059	  	"	var n = numeric(evalLisp(c.car)), n2 = numeric(evalLisp(c.cdr.car)), s = evalLisp(c.cdr.cdr.car);"
REM	  	1060	  	"	if (s === NIL) { s = 1; } else if (numeric(s) <= 0) throw new Error(newErrMsg(BAD_ARG, s));"
REM	  	1061	  	"	if (n > n2) s = -s;"
REM	  	1062	  	"	mkNew(); do { link(n); n = new Number(n + s); } while ((s > 0) ? (n <= n2) : (n >= n2));"
REM	  	1063	  	"	return mkResult();"
REM	  	1064	  	});
REM	  	1065	  	deFn("rest", function(c) { return evFrames.car.cdr; });
REM	  	1066	  	deFn("reverse", function(c) { var lst = evalLisp(c.car), r = NIL;
REM	  	1067	  	"	if (!(lst instanceof Cell)) return NIL;"
REM	  	1068	  	"	do { r = new Cell(lst.car, r); lst = lst.cdr; } while (lst instanceof Cell);"
REM	  	1069	  	"	return r;"
REM	  	1070	  	});
REM	  	1071	  	deFn("setq", function(c) {
REM	  	1072	  	"	var v = NIL;"
REM	  	1073	  	"	while (c instanceof Cell) {"
REM	  	1074	  	"		v = (c.cdr instanceof Cell) ? evalLisp(c.cdr.car) : NIL;"
REM	  	1075	  	"		setSymbolValue(c.car, v);"
REM	  	1076	  	"		c = (c.cdr instanceof Cell) ? c.cdr.cdr : NIL;"
REM	  	1077	  	"	}"
REM	  	1078	  	"	return v;"
REM	  	1079	  	});
REM	  	1080	  	
REM	  	1081	  	function ascending(a, b) { return ltVal(a, b) ? -1 : eqVal(a, b) ? 0 : 1; }
REM	  	1082	  	//function descending(a, b) { return ltVal(a, b) ? 1 : eqVal(a, b) ? 0 : -1; }
REM	  	1083	  	
REM	  	1084	  	"var compExprArr = [];	// sort expression stack"
REM	  	1085	  	
REM	  	1086	  	function CompExpr(fn) {
REM	  	1087	  	"	if (! (fn instanceof Symbol)) fn = box(fn);"
REM	  	1088	  	"	this.arg1Sym = box(NIL);"
REM	  	1089	  	"	this.arg2Sym = box(NIL);"
REM	  	1090	  	"	this.expr = new Cell(fn, new Cell(this.arg1Sym, new Cell(this.arg2Sym, NIL)));"
REM	  	1091	  	}
REM	  	1092	  	
REM	  	1093	  	CompExpr.prototype.evalTrue = function(a, b) {
REM	  	1094	  	"	this.arg1Sym.cdr = a;	// faster than this.arg1Sym.setVal(a);"
REM	  	1095	  	"	this.arg2Sym.cdr = b;"
REM	  	1096	  	"	return (evalLisp(this.expr) === T);"
REM	  	1097	  	}
REM	  	1098	  	
REM	  	1099	  	function lispFnOrder(a, b) { return compExprArr[0].evalTrue(a, b) ? -1 : 1; }
REM	  	1100	  	
REM	  	1101	  	deFn("sort", function(c) {
REM	  	1102	  	"	var lst = evalLisp(c.car);"
REM	  	1103	  	"	if (lst instanceof Cell) {"
REM	  	1104	  	"		var fn = evalLisp(c.cdr.car), arr = [];"
REM	  	1105	  	"		do { arr.push(lst.car); lst = lst.cdr; } while (lst instanceof Cell);"
REM	  	1106	  	"		if (fn === NIL) {"
REM	  	1107	  	"			arr.sort(ascending);"
REM	  	1108	  	"		} else {"
REM	  	1109	  	"			compExprArr.unshift(new CompExpr(fn));"
REM	  	1110	  	"			arr.sort(lispFnOrder);	// roughly twice as slow as 'ascending' (above), if fn is '>'"
REM	  	1111	  	"			compExprArr.shift();"
REM	  	1112	  	"		}"
REM	  	1113	  	"		lst = NIL;"
REM	  	1114	  	"		while (arr.length > 0) lst = new Cell(arr.pop(), lst);"
REM	  	1115	  	"	}"
REM	  	1116	  	"	return lst;"
REM	  	1117	  	});
REM	  	1118	  	deFn("str", function(c) {
REM	  	1119	  	"	var cv = evalLisp(c.car);"
REM	  	1120	  	"	if (cv instanceof Symbol) {"
REM	  	1121	  	"		var cs = evalLisp(c.cdr.car);"
REM	  	1122	  	"		return (cs === NIL) ? cachedTextParse(cv.valueOf()) :"
REM	  	1123	  	"				parseList(new Source(cv.valueOf(), cs.valueOf()));"
REM	  	1124	  	"	}"
REM	  	1125	  	"	if (cv instanceof Cell) {"
REM	  	1126	  	"		var arr = [];"
REM	  	1127	  	"		do { arr.push(lispToStr(cv.car)); cv = cv.cdr; } while (cv instanceof Cell);"
REM	  	1128	  	"		return newTransSymbol(arr.join("" ""));"
REM	  	1129	  	"	}"
REM	  	1130	  	"	if (cv === NIL) return NIL;"
REM	  	1131	  	"	throw new Error(newErrMsg(CELL_EXP, cv));"
REM	  	1132	  	});
REM	  	1133	  	deFn("tail", function(c) {
REM	  	1134	  	"	var cl = evalLisp(c.car), lst = evalLisp(c.cdr.car);"
REM	  	1135	  	"	if (cl instanceof Cell) {"
REM	  	1136	  	"		var cv = cl, arr = []; while (lst !== NIL) { arr.unshift(lst.car); lst = lst.cdr; }"
REM	  	1137	  	"		if (arr.length == 0) return NIL;"
REM	  	1138	  	"		var sub = []; while (cl !== NIL) { sub.unshift(cl.car); cl = cl.cdr; }"
REM	  	1139	  	"		if (arr.length < sub.length) return NIL;"
REM	  	1140	  	"		for (var i=0; i<sub.length; i++) {"
REM	  	1141	  	"			if (!eqVal(sub[i], arr[i])) return NIL;"
REM	  	1142	  	"		}"
REM	  	1143	  	"		return cv;"
REM	  	1144	  	"	}"
REM	  	1145	  	"	if (cl instanceof Number) {"
REM	  	1146	  	"		cl = Math.round(cl);"
REM	  	1147	  	"		if (cl > 0) {"
REM	  	1148	  	"			var arr = []; while (lst !== NIL) { arr.push(lst); lst = lst.cdr; }"
REM	  	1149	  	"			return arr[Math.max(arr.length - cl, 0)];"
REM	  	1150	  	"		}"
REM	  	1151	  	"		if (cl < 0) {"
REM	  	1152	  	"			do { lst = lst.cdr; if (++cl == 0) return lst; } while (lst !== NIL);"
REM	  	1153	  	"		}"
REM	  	1154	  	"		return NIL;	// cl == 0, or we did not return above"
REM	  	1155	  	"	}"
REM	  	1156	  	"	if (cl === NIL) return NIL;"
REM	  	1157	  	"	throw new Error(newErrMsg(NUM_EXP, cl));"
REM	  	1158	  	});
REM	  	1159	  	deFn("trace", function(c) { var s = evalLisp(c.car), f = evalLisp(s);
REM	  	1160	  	"	if (f instanceof Cell) {"
REM	  	1161	  	"		setSymbolValue(s, new Cell(f.car, new Cell(new Cell(gSym[""$""], new Cell(s, f)), NIL)));"
REM	  	1162	  	"	} else {"
REM	  	1163	  	"		setSymbolValue(s, new Cell(A1, new Cell(new Cell(gSym[""$""], new Cell(s,"
REM	  	1164	  	"			new Cell(A1, new Cell(new Cell(gSym[""pass""], new Cell(box(f), NIL)), NIL)))), NIL)));"
REM	  	1165	  	"	}"
REM	  	1166	  	"	return s;"
REM	  	1167	  	});
REM	  	1168	  	deFn("untrace", function(c) {
REM	  	1169	  	"	var s = evalLisp(c.car), f = cdr(cdr(car(cdr(evalLisp(s))))), b = car(cdr(f));"
REM	  	1170	  	"	if (car(b) === gSym[""pass""]) f = evalLisp(car(cdr(b)));"
REM	  	1171	  	"	setSymbolValue(s, f);"
REM	  	1172	  	"	return s;"
REM	  	1173	  	});
REM	  	1174	  	deFn("usec", function(c) { return new Number(((new Date()).getTime() - startupMillis) * 1000); });
REM	  	1175	  	deFn("yoke", function(c) { if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));
REM	  	1176	  	"	var tn = (mk[0].t === NIL);"
REM	  	1177	  	"	do { var h = new Cell(evalLisp(c.car), mk[0].h);"
REM	  	1178	  	"		mk[0].h = h; if (tn) { mk[0].t = h; tn = false; }"
REM	  	1179	  	"		c = c.cdr; } while (c !== NIL);"
REM	  	1180	  	"	return mk[0].h.car;"
REM	  	1181	  	});
REM	  	1182	  	deFn("zero", function(c) {
REM	  	1183	  	"	do { setSymbolValue(c.car, ZERO); c = c.cdr; } while (c instanceof Cell); return ZERO;"
REM	  	1184	  	});
REM	  	1185	  	// Test: (let (A 3 B 5) ($ f1 (A B) ($ f2 (A B) (* A B))))
REM	  	1186	  	"// (de foo (X Y . @) (+ X Y (next) (next))) (trace 'foo) (foo 4 5 6 7)	// not yet"
REM	  	1187	  	deFn("$", function(c) { var lst = c.cdr.car;
REM	  	1188	  	"	gTrcIndent += "" "";"
REM	  	1189	  	"	_stdPrint(gTrcIndent + c.car.name + "" :"");	// TODO: Handle methods"
REM	  	1190	  	"	while (lst instanceof Cell) { _stdPrint("" "" + lispToStr(lst.car.getVal())); lst = lst.cdr; }"
REM	  	1191	  	"	if (lst === A1) {"
REM	  	1192	  	"		lst = evFrames.car.cdr;"
REM	  	1193	  	"		while (lst instanceof Cell) { _stdPrint("" "" + lispToStr(lst.car)); lst = lst.cdr; }"
REM	  	1194	  	"	}"
REM	  	1195	  	"	_stdPrint(""\n"");"
REM	  	1196	  	"	var res = prog(c.cdr.cdr);"
REM	  	1197	  	"	_stdPrint(gTrcIndent + c.car.name + "" = "" + lispToStr(res) + ""\n"");"
REM	  	1198	  	"	gTrcIndent = gTrcIndent.substring(1);"
REM	  	1199	  	"	return res;"
REM	  	1200	  	});
REM	  	1201	  	deFn("+", function(c) { var t = 0;
REM	  	1202	  	"	do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
REM	  	1203	  	"		t += numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
REM	  	1204	  	});
REM	  	1205	  	deFn("-", function(c) { var t = evalLisp(c.car);
REM	  	1206	  	"	if (t === NIL) return NIL;"
REM	  	1207	  	"	t = numeric(t); c = c.cdr;"
REM	  	1208	  	"	if (c === NIL) return new Number(-t);"
REM	  	1209	  	"	do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
REM	  	1210	  	"		t -= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
REM	  	1211	  	});
REM	  	1212	  	deFn("*", function(c) { var t = 1;
REM	  	1213	  	"	do { var v = evalLisp(c.car); if (v === NIL) return NIL;"
REM	  	1214	  	"		t *= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);"
REM	  	1215	  	});
REM	  	1216	  	"deFn(""/"", function(c) { return div(c, function(a, b) { return a / b; }); });	// floating point division"
REM	  	1217	  	deFn("/t", function(c) { return div(c, function(a, b) { var d = a / b;
REM	  	1218	  	"	return (d >= 0) ? Math.floor(d) : Math.ceil(d); }); });	// truncated division"
REM	  	1219	  	deFn("=", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1220	  	"	while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (!eqVal(cv, dv)) return NIL; }; return T; });"
REM	  	1221	  	deFn("==", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1222	  	"	while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (cv !== dv) return NIL; }; return T; });"
REM	  	1223	  	deFn("<", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1224	  	"	while (d.cdr !== NIL) {"
REM	  	1225	  	"		d = d.cdr; dv = evalLisp(d.car); if (!ltVal(cv, dv)) return NIL;"
REM	  	1226	  	"		cv = dv;"
REM	  	1227	  	"	}; return T;"
REM	  	1228	  	});
REM	  	1229	  	deFn("<=", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1230	  	"	while (d.cdr !== NIL) {"
REM	  	1231	  	"		d = d.cdr; dv = evalLisp(d.car); if (ltVal(dv, cv)) return NIL;"
REM	  	1232	  	"		cv = dv;"
REM	  	1233	  	"	}; return T;"
REM	  	1234	  	});
REM	  	1235	  	deFn(">", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1236	  	"	while (d.cdr !== NIL) {"
REM	  	1237	  	"		d = d.cdr; dv = evalLisp(d.car); if (!ltVal(dv, cv)) return NIL;"
REM	  	1238	  	"		cv = dv;"
REM	  	1239	  	"	}; return T;"
REM	  	1240	  	});
REM	  	1241	  	deFn(">=", function(c) { var cv = evalLisp(c.car), d = c, dv;
REM	  	1242	  	"	while (d.cdr !== NIL) {"
REM	  	1243	  	"		d = d.cdr; dv = evalLisp(d.car); if (ltVal(cv, dv)) return NIL;"
REM	  	1244	  	"		cv = dv;"
REM	  	1245	  	"	}; return T;"
REM	  	1246	  	});
REM	  	1247	  	deFn(";", function(c) { return getAlg(new Cell(evalLisp(c.car), c.cdr)); });
REM	  	1248	  	
REM	  	1249	  	function evalDef(def, inExprLst) {
REM	  	1250	  	"	//alert(""evalDef: "" + lispToStr(def.cdr) + "", "" + lispToStr(inExprLst));"
REM	  	1251	  	"	var locVars = null, locSym = null, evFrame = null;"
REM	  	1252	  	"	if (def.car instanceof Symbol) {"
REM	  	1253	  	"		if (def.car === A1) {"
REM	  	1254	  	"			evFrame = new Cell(NIL, evalArgs(inExprLst));"
REM	  	1255	  	"			evFrames = new Cell(evFrame, evFrames);	// pushing evFrame onto evFrames"
REM	  	1256	  	"		} else {"
REM	  	1257	  	"			locSym = def.car;"
REM	  	1258	  	"			locSym.pushValue(inExprLst);	// Binding unevaluated list to a single symbol"
REM	  	1259	  	"		}"
REM	  	1260	  	"	} else {"
REM	  	1261	  	"		locVars = def.car;"
REM	  	1262	  	"		var evArgs = evalArgs(inExprLst);"
REM	  	1263	  	"		// Saving old symbol values and binding new values ..."
REM	  	1264	  	"		while (locVars instanceof Cell) {"
REM	  	1265	  	"			//if (!confirm(""locVars: "" + lispToStr(locVars.car))) throw new Error(""evalDef aborted"");"
REM	  	1266	  	"			locVars.car.pushValue(evArgs.car);"
REM	  	1267	  	"			locVars = locVars.cdr;"
REM	  	1268	  	"			evArgs = evArgs.cdr;"
REM	  	1269	  	"		}"
REM	  	1270	  	"		locVars = def.car;"
REM	  	1271	  	"	}"
REM	  	1272	  	"	// Executing body ..."
REM	  	1273	  	"	var res = prog(def.cdr);"
REM	  	1274	  	"	// Restoring previous symbol values ..."
REM	  	1275	  	"	if (locSym instanceof Symbol) locSym.popValue();"
REM	  	1276	  	"	if (locVars instanceof Cell) {"
REM	  	1277	  	"		while (locVars instanceof Cell) { locVars.car.popValue(); locVars = locVars.cdr; }"
REM	  	1278	  	"	}"
REM	  	1279	  	"	if (evFrame instanceof Cell) evFrames = evFrames.cdr;		// popping evFrame"
REM	  	1280	  	"	return res;"
REM	  	1281	  	}
REM	  	1282	  	
REM	  	1283	  	function evalLisp(lst) {
REM	  	1284	  	"	if (lst instanceof Symbol) return lst.cdr;"
REM	  	1285	  	"	if (lst instanceof Cell) {"
REM	  	1286	  	"		if (typeof lst.car.cdr === ""function"") {"
REM	  	1287	  	"			return lst.car.cdr(lst.cdr);"
REM	  	1288	  	"		}"
REM	  	1289	  	"		if (lst.car instanceof Symbol) {"
REM	  	1290	  	"			if (lst.car.cdr === NIL) throw new Error(newErrMsg(UNDEF, lst.car));"
REM	  	1291	  	"			return evalDef(lst.car.cdr, lst.cdr);"
REM	  	1292	  	"		}"
REM	  	1293	  	"		if ((lst.car.car === QUOTE) && (lst.car.cdr instanceof Cell)) {"
REM	  	1294	  	"			return evalDef(lst.car.cdr, lst.cdr);"
REM	  	1295	  	"		}"
REM	  	1296	  	"		if (lst.car instanceof Number) return lst;"
REM	  	1297	  	"		throw new Error(newErrMsg(EXEC_OR_NUM_EXP, lst.car));"
REM	  	1298	  	"	}"
REM	  	1299	  	"	return lst;		// a number, or text"
REM	  	1300	  	}
REM	  	1301	  	
REM	  	1302	  	function evalArgs(lst) {
REM	  	1303	  	"	if (lst === NIL) return NIL;"
REM	  	1304	  	"	var resLst = new Cell(NIL, NIL);	// to become new list of evaluation results"
REM	  	1305	  	"	var res = resLst;"
REM	  	1306	  	"	do {"
REM	  	1307	  	"		//alert(""evalArgs: "" + lispToStr(lst.car));"
REM	  	1308	  	"		res.car = evalLisp(lst.car);"
REM	  	1309	  	"		lst = lst.cdr;"
REM	  	1310	  	"		if (lst instanceof Cell) {"
REM	  	1311	  	"			res.cdr = new Cell(NIL, NIL);"
REM	  	1312	  	"			res = res.cdr;"
REM	  	1313	  	"		}"
REM	  	1314	  	"	} while (lst instanceof Cell);"
REM	  	1315	  	"	return resLst;"
REM	  	1316	  	}
REM	  	1317	  	
REM	  	1318	  	function loadLisp(fileUrl) {
REM	  	1319	  	"	gTrans = {};"
REM	  	1320	  	"	var res = parseList(new Source(getFileSync(fileUrl)), true);"
REM	  	1321	  	"	gTrans = {};"
REM	  	1322	  	"	//alert(""loadLisp: "" + lispToStr(res));"
REM	  	1323	  	"	return res;"
REM	  	1324	  	}
REM	  	1325	  	
REM	  	1326	  	function loadJavaScript(fileUrl) {
REM	  	1327	  	"	return newTransSymbol(eval(getFileSync(fileUrl)).toString());"
REM	  	1328	  	}
REM	  	1329	  	
REM	  	1330	  	function _stdPrint(text) {
REM	  	1331	  	"	if (typeof stdPrint === ""function"") stdPrint(text)"
REM	  	1332	  	"	else // when function stdPrint is not available in front end"
REM	  	1333	  	"	if (!confirm(""_stdPrint:\n"" + text)) throw new Error(""_stdPrint aborted"");"
REM	  	1334	  	}
REM	  	1335	  	
REM	  	1336	  	function _warn(msg) {
REM	  	1337	  	"	if (typeof warn === ""function"") warn(msg);"
REM	  	1338	  	}
REM	  	1339	  	
REM	  	1340	  	/*
REM	  	1341	  	* Objects of the Params class are used to deliver evaluated parameter values to
REM	  	1342	  	* JavaScript functions. Some functions take an optional default input value.
REM	  	1343	  	*/
REM	  	1344	  	function Params(lst) {
REM	  	1345	  	"	this.lst = lst;"
REM	  	1346	  	}
REM	  	1347	  	
REM	  	1348	  	Params.prototype.any = function() {
REM	  	1349	  	"	var val = null;"
REM	  	1350	  	"	if (this.lst !== NIL) {"
REM	  	1351	  	"		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1352	  	"	}"
REM	  	1353	  	"	return val;"
REM	  	1354	  	}
REM	  	1355	  	
REM	  	1356	  	Params.prototype.bool = function(val) {
REM	  	1357	  	"	if (this.lst !== NIL) {"
REM	  	1358	  	"		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1359	  	"	}"
REM	  	1360	  	"	if ((val === NIL) || (val === T)) return val.bool;"
REM	  	1361	  	"	throw new Error(newErrMsg(BOOL_EXP, val));"
REM	  	1362	  	}
REM	  	1363	  	
REM	  	1364	  	Params.prototype.natObj = function() {
REM	  	1365	  	"	if (this.lst !== NIL) {"
REM	  	1366	  	"		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1367	  	"	}"
REM	  	1368	  	"	if ((val instanceof Symbol) && (val.obj !== undefined)) return val.obj;"
REM	  	1369	  	"	throw new Error(newErrMsg(BOXNAT_EXP, val));"
REM	  	1370	  	}
REM	  	1371	  	
REM	  	1372	  	Params.prototype.num = function(val) {
REM	  	1373	  	"	if (this.lst !== NIL) {"
REM	  	1374	  	"		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1375	  	"	}"
REM	  	1376	  	"	if (val instanceof Number) return val;"
REM	  	1377	  	"	throw new Error(newErrMsg(NUM_EXP, val));"
REM	  	1378	  	}
REM	  	1379	  	
REM	  	1380	  	Params.prototype.optNum = function() {
REM	  	1381	  	"	if (this.lst !== NIL) {"
REM	  	1382	  	"		var val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1383	  	"		if (val instanceof Number) return val;"
REM	  	1384	  	"		throw new Error(newErrMsg(NUM_EXP, val));"
REM	  	1385	  	"	}"
REM	  	1386	  	"	return null;"
REM	  	1387	  	}
REM	  	1388	  	
REM	  	1389	  	Params.prototype.str = function(val) {
REM	  	1390	  	"	if (this.lst !== NIL) {"
REM	  	1391	  	"		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;"
REM	  	1392	  	"	}"
REM	  	1393	  	"	if (val instanceof Symbol) return val.valueOf();"
REM	  	1394	  	"	throw new Error(newErrMsg(SYM_EXP, val));"
REM	  	1395	  	}
REM	  	1396	  	
REM	  	1397	  	function symbolRefUrl(symbolName) {
REM	  	1398	  	"	if (symbolName == ""NIL"") {"
REM	  	1399	  	"		return ""ref.html#nilSym"";"
REM	  	1400	  	"	} else if (symbolName.match(/^[a-zA-Z_]/)) {"
REM	  	1401	  	"		return ""ref"" + symbolName.substring(0, 1).toUpperCase() + "".html#"" + symbolName;"
REM	  	1402	  	"	} else if (symbolName.match(/^\*[a-zA-Z_]/)) {"
REM	  	1403	  	"		return ""ref"" + symbolName.substring(1, 2) + "".html#"" + symbolName;"
REM	  	1404	  	"	} else {"
REM	  	1405	  	"		return ""ref_.html#"" + symbolName;"
REM	  	1406	  	"	}"
REM	  	1407	  	}
REM	  	1408	  	
REM	  	1409	  	
REM	  	1410	  	
REM	  	1411	  	"	"
REM	  	1412	  	
REM	  	1413	  	
REM	  	1414	  	</script>
REM	  	1415	  	
REM	  	1416	  	<script type="text/javascript">
REM	  	1417	  	/* 26nov10jk
REM	  	1418	  	* (c) Jon Kleiser
REM	  	1419	  	* http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js
REM	  	1420	  	*/
REM	  	1421	  	
REM	  	1422	  	/* 26nov10jk
REM	  	1423	  	* (c) Jon Kleiser
REM	  	1424	  	*/
REM	  	1425	  	
REM	  	1426	  	getSymbol("js:E").setVal(new Number(Math.E));
REM	  	1427	  	getSymbol("js:PI").setVal(new Number(Math.PI));
REM	  	1428	  	getSymbol("js:Doc").setVal(boxNativeObject(document));
REM	  	1429	  	getSymbol("js:Win").setVal(boxNativeObject(window));
REM	  	1430	  	
REM	  	1431	  	deFn("js:alert", function(c) { var arr = [], v = NIL;
REM	  	1432	  	"	c = evalArgs(c); while (c !== NIL) { v = c.car; arr.push(valueToStr(v)); c = c.cdr; }"
REM	  	1433	  	"	alert(arr.join(""\n"")); return v;"
REM	  	1434	  	});
REM	  	1435	  	
REM	  	1436	  	deFn("js:confirm", function(c) { var arr = [];
REM	  	1437	  	"	c = evalArgs(c); while (c !== NIL) { arr.push(valueToStr(c.car)); c = c.cdr; }"
REM	  	1438	  	"	return confirm(arr.join(""\n"")) ? T : NIL;"
REM	  	1439	  	});
REM	  	1440	  	
REM	  	1441	  	// (js:prompt "What's your age?" "fiftysomething")
REM	  	1442	  	deFn("js:prompt", function(c) {
REM	  	1443	  	"	var r = prompt(valueToStr(evalLisp(c.car)), valueToStr(evalLisp(c.cdr.car)));"
REM	  	1444	  	"	return (r !== null) ? newTransSymbol(r) : NIL;"
REM	  	1445	  	});
REM	  	1446	  	
REM	  	1447	  	deFn("js:getElementById", function(c) {
REM	  	1448	  	"	var doc = document, elem = doc.getElementById(evalLisp(c.car).valueOf());"
REM	  	1449	  	"	return (elem != null) ? boxNativeObject(elem) : NIL;"
REM	  	1450	  	});
REM	  	1451	  	
REM	  	1452	  	// (js:onEventLisp (js:getElementById "parGuide") "click" (prinl "A click on " js:Target))
REM	  	1453	  	deFn("js:onEventLisp", function(c) {
REM	  	1454	  	"	var objBox = evalLisp(c.car), obj = objBox.obj, evtType = evalLisp(c.cdr.car).valueOf();"
REM	  	1455	  	"	obj[evtType + ""Lisp""] = c.cdr.cdr;	// Lisp code to execute on event"
REM	  	1456	  	"	if (c.cdr.cdr != NIL) {"
REM	  	1457	  	"		// Installing event handler"
REM	  	1458	  	"		obj[""on"" + evtType] = function(evt) {"
REM	  	1459	  	"			try {"
REM	  	1460	  	"				var ts = getSymbol(""js:Target""); ts.pushValue(objBox);"
REM	  	1461	  	"				var es = getSymbol(""js:Event""); es.pushValue(boxNativeObject(evt ? evt : window.event));"
REM	  	1462	  	"				prog(obj[evtType + ""Lisp""]);"
REM	  	1463	  	"				ts.popValue();"
REM	  	1464	  	"				es.popValue();"
REM	  	1465	  	"			} catch (e) { alert(evtType + ""Lisp: "" + e); }"
REM	  	1466	  	"		};"
REM	  	1467	  	"	} else {"
REM	  	1468	  	"		// Removing event handler"
REM	  	1469	  	"		obj[""on"" + evtType] = null;"
REM	  	1470	  	"	}"
REM	  	1471	  	"	return objBox;"
REM	  	1472	  	});
REM	  	1473	  	
REM	  	1474	  	
REM	  	1475	  	// (js:clearInterval intervalId)
REM	  	1476	  	deFn("js:clearInterval", function(c) { return clearInterval(evalLisp(c.car)) ? T : NIL; });
REM	  	1477	  	
REM	  	1478	  	// (js:clearTimeout timeoutId)
REM	  	1479	  	deFn("js:clearTimeout", function(c) { return clearTimeout(evalLisp(c.car)) ? T : NIL; });
REM	  	1480	  	
REM	  	1481	  	/* Most browsers seem to support the form of setInterval(f,t,p) and setTimeout(f,t,p) where
REM	  	1482	  	the first parameter is of type function, and the parameters after the second are parameters
REM	  	1483	  	to that function. If your browser requires the first parameter to be of type string, then
REM	  	1484	  	you can use the two slightly longer alternatives.
REM	  	1485	  	*/
REM	  	1486	  	// (js:setIntervalLisp (prinl "ping") 5000)
REM	  	1487	  	deFn("js:setIntervalLisp", function(c) {
REM	  	1488	  	"	var id = setInterval(evalLisp, evalLisp(c.cdr.car), c.car);"
REM	  	1489	  	"	return new Number(id);"
REM	  	1490	  	});
REM	  	1491	  	/*
REM	  	1492	  	deFn("js:setIntervalLisp", function(c) {
REM	  	1493	  	"	var str = lispToStr(c.car);"
REM	  	1494	  	"	gParseCache[str] = c.car;"
REM	  	1495	  	"	var jsStr = ""evalLisp(gParseCache[\"""" + str.replace(/""/g, ""\\\"""") + ""\""])"";"
REM	  	1496	  	"	var id = setInterval(jsStr, evalLisp(c.cdr.car));"
REM	  	1497	  	"	return new Number(id);"
REM	  	1498	  	});
REM	  	1499	  	*/
REM	  	1500	  	// (js:setTimeoutLisp (prinl "ping") 3000)
REM	  	1501	  	deFn("js:setTimeoutLisp", function(c) {
REM	  	1502	  	"	var id = setTimeout(evalLisp, evalLisp(c.cdr.car), c.car);"
REM	  	1503	  	"	return new Number(id);"
REM	  	1504	  	});
REM	  	1505	  	/*
REM	  	1506	  	deFn("js:setTimeoutLisp", function(c) {
REM	  	1507	  	"	var str = lispToStr(c.car);"
REM	  	1508	  	"	gParseCache[str] = c.car;"
REM	  	1509	  	"	var jsStr = ""evalLisp(gParseCache[\"""" + str.replace(/""/g, ""\\\"""") + ""\""])"";"
REM	  	1510	  	"	var id = setTimeout(jsStr, evalLisp(c.cdr.car));"
REM	  	1511	  	"	return new Number(id);"
REM	  	1512	  	});
REM	  	1513	  	*/
REM	  	1514	  	
REM	  	1515	  	
REM	  	1516	  	// Some reflection stuff similar to the 'java' and 'public' functions in ErsatzLisp
REM	  	1517	  	
REM	  	1518	  	function applyConstructor(ctor, args) {
REM	  	1519	  	"	switch (args.length) {"
REM	  	1520	  	"		case 0: return new ctor();"
REM	  	1521	  	"		case 1: return new ctor(args[0]);"
REM	  	1522	  	"		case 2: return new ctor(args[0], args[1]);"
REM	  	1523	  	"		case 3: return new ctor(args[0], args[1], args[2]);"
REM	  	1524	  	"		// add more cases if you like"
REM	  	1525	  	"	}"
REM	  	1526	  	"	var jsStr = ""new ctor(args[0]"";"
REM	  	1527	  	"	for (var i=1; i<args.length; i++) jsStr += "",args["" + i + ""]"";"
REM	  	1528	  	"	jsStr += "")"";"
REM	  	1529	  	"	return eval(jsStr);"
REM	  	1530	  	}
REM	  	1531	  	
REM	  	1532	  	// First a couple of conversion functions ...
REM	  	1533	  	function lispToNativeData(vl) {
REM	  	1534	  	"	if (vl instanceof Number) return vl.valueOf();	// primitive value required some places"
REM	  	1535	  	"	if (vl instanceof Symbol) {"
REM	  	1536	  	"		if (vl.obj !== undefined) return vl.obj;"
REM	  	1537	  	"		return vl.toValueString();"
REM	  	1538	  	"	}"
REM	  	1539	  	"	if ((vl === NIL) || (vl === T)) return vl.bool;"
REM	  	1540	  	"	return undefined;"
REM	  	1541	  	}
REM	  	1542	  	
REM	  	1543	  	function nativeToLispData(vn) {
REM	  	1544	  	"	if ((typeof vn == ""number"") || (vn instanceof Number)) return new Number(vn);"
REM	  	1545	  	"	if (vn instanceof String) vn = vn.valueOf();"
REM	  	1546	  	"	if (typeof vn == ""string"") return (vn == """") ? NIL : newTransSymbol(vn);"
REM	  	1547	  	"	if (vn instanceof Boolean) vn = vn.valueOf();"
REM	  	1548	  	"	if ((vn === false) || (vn === null)) return NIL;"
REM	  	1549	  	"	if (vn === true) return T;"
REM	  	1550	  	"	return boxNativeObject(vn);"
REM	  	1551	  	}
REM	  	1552	  	
REM	  	1553	  	function lispParamsToArray(c) {
REM	  	1554	  	"	var arr = [];"
REM	  	1555	  	"	while (c !== NIL) {"
REM	  	1556	  	"		arr.push(lispToNativeData(evalLisp(c.car))); c = c.cdr;"
REM	  	1557	  	"	}"
REM	  	1558	  	"	return arr;"
REM	  	1559	  	}
REM	  	1560	  	
REM	  	1561	  	// (js:eval "2+3")
REM	  	1562	  	deFn("js:eval", function(c) { return nativeToLispData(eval(valueToStr(evalLisp(c.car)))); });
REM	  	1563	  	
REM	  	1564	  	// (setq *MyArr (js:obj "Array" T)) (js:put *MyArr "2" "X") (list (js:get *MyArr 2) (js:get *MyArr "length"))
REM	  	1565	  	// (js:obj (js:obj "Date" T) "getMinutes")
REM	  	1566	  	// (js:obj (js:obj "Date" T 2010 10 20 15 15) "toString")
REM	  	1567	  	// (let D (js:obj "Date" T) (js:obj D "setHours" 16 30) (js:obj D "toString"))
REM	  	1568	  	deFn("js:obj", function(c) {
REM	  	1569	  	"	var obj = evalLisp(c.car), msg = evalLisp(c.cdr.car);"
REM	  	1570	  	"	if (msg === T) {"
REM	  	1571	  	"		if (obj instanceof Symbol) {"
REM	  	1572	  	"			var ctor = eval(obj.valueOf());"
REM	  	1573	  	"			//if (typeof ctor != ""function"") throw new Error(newErrMsg(JS_CTORNAME_EXP, obj.valueOf()));"
REM	  	1574	  	"			// typeof Date == ""function"", but typeof Image == ""object"" !"
REM	  	1575	  	"			return nativeToLispData(applyConstructor(ctor, lispParamsToArray(c.cdr.cdr)));"
REM	  	1576	  	"		}"
REM	  	1577	  	"		throw new Error(newErrMsg(SYM_EXP, obj));"
REM	  	1578	  	"	}"
REM	  	1579	  	"	if ((obj instanceof Symbol) && (obj.obj instanceof Object)) {"
REM	  	1580	  	"		var fn = obj.obj[lispToNativeData(msg)];"
REM	  	1581	  	"		return nativeToLispData(fn.apply(obj.obj, lispParamsToArray(c.cdr.cdr)));"
REM	  	1582	  	"	}"
REM	  	1583	  	"	throw new Error(newErrMsg(BOXNAT_EXP, obj));"
REM	  	1584	  	});
REM	  	1585	  	
REM	  	1586	  	function jsGetPutAlg(c, put) {
REM	  	1587	  	"	var obj = evalLisp(c.car), k;"
REM	  	1588	  	"	if ((obj instanceof Symbol) && (obj.obj !== undefined)) {"
REM	  	1589	  	"		obj = obj.obj; c = c.cdr;"
REM	  	1590	  	"		do {"
REM	  	1591	  	"			k = lispToNativeData(evalLisp(c.car));"
REM	  	1592	  	"			c = c.cdr;"
REM	  	1593	  	"			if (put && ! (c.cdr instanceof Cell)) {"
REM	  	1594	  	"				var vl = evalLisp(c.car), vn = lispToNativeData(vl);"
REM	  	1595	  	"				obj[k] = vn;	// handles both maps/keys and arrays/indices"
REM	  	1596	  	"				return vl;"
REM	  	1597	  	"			}"
REM	  	1598	  	"			obj = obj[k];	// handles both maps/keys and arrays/indices"
REM	  	1599	  	"		} while (c instanceof Cell);"
REM	  	1600	  	"		return nativeToLispData(obj);"
REM	  	1601	  	"	}"
REM	  	1602	  	"	throw new Error(newErrMsg(BOXNAT_EXP, obj));"
REM	  	1603	  	}
REM	  	1604	  	
REM	  	1605	  	// (js:get js:Doc "body" "nodeName")
REM	  	1606	  	deFn("js:get", function(c) { return jsGetPutAlg(c, false); });
REM	  	1607	  	
REM	  	1608	  	// (js:put js:Doc "body" "contentEditable" "true")
REM	  	1609	  	deFn("js:put", function(c) { return jsGetPutAlg(c, true); });
REM	  	1610	  	
REM	  	1611	  	
REM	  	1612	  	
REM	  	1613	  	</script>
REM	  	1614	  	
REM	  	1615	  	"	<script type=""text/javascript"">"
REM	  	1616	  	var dcons, consLog, newcode;
REM	  	1617	  	var initialLogScrollWidth = null;
REM	  	1618	  	var currentPrintRec = null;
REM	  	1619	  	var prevNewcode = "";
REM	  	1620	  	"var savedNewcodes = [];	// maybe"
REM	  	1621	  	
REM	  	1622	  	var consPrefs = {
REM	  	1623	  	"	codeGuidesEnabled: true,"
REM	  	1624	  	"	evaluateOnReturn: true,"
REM	  	1625	  	"	newcodeClearAfterEvaluation: false,"
REM	  	1626	  	"	newcodeFocusAfterEvaluation: true,"
REM	  	1627	  	"	closeWindowWarningEnabled: false"
REM	  	1628	  	};
REM	  	1629	  	
REM	  	1630	  	function copyOldToNewcode(evt) {
REM	  	1631	  	"	savedNewcodes.push(newcode.value);"
REM	  	1632	  	"	newcode.focus();"
REM	  	1633	  	"	if (evt.shiftKey) {"
REM	  	1634	  	"		newcode.value += "" "" + this.firstChild.nodeValue;	// append"
REM	  	1635	  	"	} else {"
REM	  	1636	  	"		newcode.value = this.firstChild.nodeValue;			// replace"
REM	  	1637	  	"	}"
REM	  	1638	  	"	prevNewcode = """";"
REM	  	1639	  	"	updateCodeGuides();"
REM	  	1640	  	}
REM	  	1641	  	
REM	  	1642	  	function appendToHistory(styleclass, text) {
REM	  	1643	  	"	currentPrintRec = null;"
REM	  	1644	  	"	var pre = document.createElement(""pre"");"
REM	  	1645	  	"	pre.setAttribute(""class"", styleclass);"
REM	  	1646	  	"	var textNode = document.createTextNode(text);"
REM	  	1647	  	"	pre.appendChild(textNode);"
REM	  	1648	  	"	if (styleclass == ""oldcode"") pre.onclick = copyOldToNewcode;"
REM	  	1649	  	"	consLog.appendChild(pre);"
REM	  	1650	  	"	consLog.scrollTop = consLog.scrollHeight;"
REM	  	1651	  	"	if (consLog.scrollWidth > initialLogScrollWidth) {"
REM	  	1652	  	"		pre.style.width = """" + (consLog.scrollWidth - 8) + ""px"";"
REM	  	1653	  	"	}"
REM	  	1654	  	"	return {elem: pre, node: textNode};"
REM	  	1655	  	}
REM	  	1656	  	
REM	  	1657	  	function stdPrint(text) {
REM	  	1658	  	"	if (currentPrintRec == null) {"
REM	  	1659	  	"		currentPrintRec = appendToHistory(""print"", text);"
REM	  	1660	  	"	} else {"
REM	  	1661	  	"		currentPrintRec.node.nodeValue += text;"
REM	  	1662	  	"	}"
REM	  	1663	  	"	var len = text.length;"
REM	  	1664	  	"	if (len > 0) {"
REM	  	1665	  	"		currentPrintRec.elem.setAttribute(""class"","
REM	  	1666	  	"			(text.charAt(len - 1) === ""\n"") ? ""println"" : ""print"");"
REM	  	1667	  	"	}"
REM	  	1668	  	}
REM	  	1669	  	
REM	  	1670	  	function warn(msg) {
REM	  	1671	  	"	appendToHistory(""warning"", msg);"
REM	  	1672	  	}
REM	  	1673	  	
REM	  	1674	  	function drawLisp(ctx, c) {
REM	  	1675	  	"	var  segx = 16, dy = 16, c0 = c, h = 0;"
REM	  	1676	  	"	if (c instanceof Cell) {"
REM	  	1677	  	"		while (c instanceof Cell) {"
REM	  	1678	  	"			ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(segx, 0); ctx.stroke();"
REM	  	1679	  	"			ctx.save();"
REM	  	1680	  	"			ctx.translate(segx, 0);"
REM	  	1681	  	"			var cy = drawLisp(ctx, c.car);"
REM	  	1682	  	"			h += cy;"
REM	  	1683	  	"			ctx.restore();"
REM	  	1684	  	"			c = c.cdr;"
REM	  	1685	  	"			if (c !== NIL) {"
REM	  	1686	  	"				ctx.translate(0, cy);"
REM	  	1687	  	"				ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(0, -h); ctx.stroke();"
REM	  	1688	  	"				if (c === c0) {"
REM	  	1689	  	"					// Indicating circular list ..."
REM	  	1690	  	"					var up = -dy/4;"
REM	  	1691	  	"					ctx.beginPath(); ctx.moveTo(0, up*2); ctx.lineTo(segx/2, up*2); ctx.stroke();"
REM	  	1692	  	"					ctx.beginPath(); ctx.moveTo(0, up); ctx.lineTo(segx/2, up); ctx.stroke();"
REM	  	1693	  	"					h += dy;"
REM	  	1694	  	"					break;"
REM	  	1695	  	"				}"
REM	  	1696	  	"			}"
REM	  	1697	  	"		}"
REM	  	1698	  	"		if ((c !== NIL) && (c !== c0)) {"
REM	  	1699	  	"			ctx.fillText(lispToStr(c), -3, 12);"
REM	  	1700	  	"			h += dy * 1.7;"
REM	  	1701	  	"		}"
REM	  	1702	  	"	} else {"
REM	  	1703	  	"		ctx.fillText(lispToStr(c), 4, 3);"
REM	  	1704	  	"		h = dy;"
REM	  	1705	  	"	}"
REM	  	1706	  	"	return h;"
REM	  	1707	  	}
REM	  	1708	  	
REM	  	1709	  	function hideMonitorIfCanvasNotSupported() {
REM	  	1710	  	"	var cv = document.getElementById(""monView"");"
REM	  	1711	  	"	if (cv && cv.getContext) return;"
REM	  	1712	  	"	var mon = document.getElementById(""monitor"");"
REM	  	1713	  	"	mon.style.display = ""none"";"
REM	  	1714	  	}
REM	  	1715	  	
REM	  	1716	  	function clearMonitorView() {
REM	  	1717	  	"	var cv = document.getElementById(""monView"");"
REM	  	1718	  	"	if (cv && cv.getContext) {"
REM	  	1719	  	"		cv.width = cv.width;		// resetting the canvas"
REM	  	1720	  	"		cv.getContext(""2d"").clearRect(0, 0, cv.width, cv.height);"
REM	  	1721	  	"	}"
REM	  	1722	  	}
REM	  	1723	  	
REM	  	1724	  	function updateMonitorView(lispValue) {
REM	  	1725	  	"	var cv = document.getElementById(""monView"");"
REM	  	1726	  	"	if (cv && cv.getContext) {"
REM	  	1727	  	"		var ctx = cv.getContext(""2d"");"
REM	  	1728	  	"		if (lispValue != null) {"
REM	  	1729	  	"			ctx.save();"
REM	  	1730	  	"			ctx.strokeStyle = ""#933"";"
REM	  	1731	  	"			ctx.lineWidth = 1;"
REM	  	1732	  	"			ctx.fillStyle = ""#000"";"
REM	  	1733	  	"			ctx.font = ""12px Arial, sans-serif"";"
REM	  	1734	  	"			ctx.translate(16.5, 16.5);"
REM	  	1735	  	"			drawLisp(ctx, lispValue);"
REM	  	1736	  	"			ctx.restore();"
REM	  	1737	  	"		}"
REM	  	1738	  	"	}"
REM	  	1739	  	}
REM	  	1740	  	
REM	  	1741	  	function getValueToMonitor() {
REM	  	1742	  	"	try {"
REM	  	1743	  	"		var mScr = document.getElementById(""monitorobject"").value;"
REM	  	1744	  	"		if ((mScr != null) && mScr.match(/\S/)) return prog(cachedTextParse(mScr));"
REM	  	1745	  	"	} catch (e) { alert(""getValueToMonitor: "" + e); }"
REM	  	1746	  	"	return null;"
REM	  	1747	  	}
REM	  	1748	  	
REM	  	1749	  	var dbg_e;
REM	  	1750	  	function evalExpr() {
REM	  	1751	  	"	if (document.getElementById(""clearMonView"").checked) clearMonitorView();"
REM	  	1752	  	"	appendToHistory(""oldcode"", newcode.value);"
REM	  	1753	  	"	try {"
REM	  	1754	  	"		var result = prog(parseList(new Source(newcode.value)));"
REM	  	1755	  	"		A3.setVal(A2.getVal()); A2.setVal(A1.getVal()); A1.setVal(result);"
REM	  	1756	  	"		appendToHistory(""result"", lispToStr(result));"
REM	  	1757	  	"	} catch (e) {dbg_e = e;"
REM	  	1758	  	"		if (e.lineNumber === undefined) appendToHistory(""error"", e.message)"
REM	  	1759	  	"		else appendToHistory(""error"", e.message + ""\nLine "" + e.lineNumber);"
REM	  	1760	  	"	}"
REM	  	1761	  	"	if (consPrefs.newcodeClearAfterEvaluation) newcode.value = """";"
REM	  	1762	  	"	if (consPrefs.newcodeFocusAfterEvaluation) newcode.focus();"
REM	  	1763	  	"	updateMonitorView(getValueToMonitor());"
REM	  	1764	  	}
REM	  	1765	  	
REM	  	1766	  	function refreshMonitor() {
REM	  	1767	  	"	clearMonitorView();"
REM	  	1768	  	"	updateMonitorView(getValueToMonitor());"
REM	  	1769	  	}
REM	  	1770	  	
REM	  	1771	  	var numFilesToLoad;
REM	  	1772	  	
REM	  	1773	  	function handleFileDrop(evt) {
REM	  	1774	  	"	evt.preventDefault();"
REM	  	1775	  	"	if (typeof window.FileReader === ""function"") {"
REM	  	1776	  	"		var srcFiles = [];"
REM	  	1777	  	"		for (var i=0; i<evt.dataTransfer.files.length; i++) {"
REM	  	1778	  	"			var f = evt.dataTransfer.files[i];"
REM	  	1779	  	"			if (f.name.match(/\.l$/) || f.name.match(/\.js$/)) {"
REM	  	1780	  	"				srcFiles.push(f);"
REM	  	1781	  	"			} else {"
REM	  	1782	  	"				warn(f.name + "" is probably not a Lisp or JavaScript file"");"
REM	  	1783	  	"			}"
REM	  	1784	  	"		}"
REM	  	1785	  	"		numFilesToLoad = srcFiles.length;"
REM	  	1786	  	"		for (var i=0; i<srcFiles.length; i++) {"
REM	  	1787	  	"			var reader = new FileReader();"
REM	  	1788	  	"			reader.srcFile = srcFiles[i];"
REM	  	1789	  	"			reader.onload = function(rEvt) {"
REM	  	1790	  	"				try {"
REM	  	1791	  	"					var fileName = rEvt.target.srcFile.name, dropResult = ""(unknown result)"";"
REM	  	1792	  	"					appendToHistory(""filedrop"", ""loading: "" + fileName);"
REM	  	1793	  	"					if (fileName.match(/\.l$/)) {"
REM	  	1794	  	"						// Lisp file"
REM	  	1795	  	"						dropResult = lispToStr(prog(parseList(new Source(rEvt.target.result), true)));"
REM	  	1796	  	"					} else if (fileName.match(/\.js$/)) {"
REM	  	1797	  	"						// JavaScript file"
REM	  	1798	  	"						dropResult = eval(rEvt.target.result).toString();"
REM	  	1799	  	"					} else {"
REM	  	1800	  	"						dropResult = ""Why did this happen?"";	// very unlikely"
REM	  	1801	  	"					}"
REM	  	1802	  	"					if (--numFilesToLoad == 0) appendToHistory(""result"", dropResult);"
REM	  	1803	  	"				} catch (e) {"
REM	  	1804	  	"					if (e.lineNumber === undefined) appendToHistory(""error"", e.message)"
REM	  	1805	  	"					else appendToHistory(""error"", e.message + ""\nLine "" + e.lineNumber);"
REM	  	1806	  	"				}"
REM	  	1807	  	"			}"
REM	  	1808	  	"			reader.readAsText(srcFiles[i]);"
REM	  	1809	  	"		}"
REM	  	1810	  	"	} else {"
REM	  	1811	  	"		warn(""File Drop not supported by this browser"");"
REM	  	1812	  	"	}"
REM	  	1813	  	"	return false;"
REM	  	1814	  	}
REM	  	1815	  	
REM	  	1816	  	function newcodeCheck(srcObj) {
REM	  	1817	  	"	var newMod = srcObj.src;"
REM	  	1818	  	"	if (newMod.match(/^[\.\s]*\)/)) throw new Error(BAD_INPUT);"
REM	  	1819	  	"	// Replacing ""()"" with ""NIL"" ..."
REM	  	1820	  	"	newMod = newMod.replace(/\(\s*\)/g, "" NIL "");"
REM	  	1821	  	"	// Removing dots and spaces before "")"", removing trailing dots and spaces ..."
REM	  	1822	  	"	newMod = newMod.replace(/[\.\s]*\)/g, "")"").replace(/[\.\s]*$/, """");"
REM	  	1823	  	"	//alert(""newcodeCheck: "" + srcObj.src + "", "" + newMod);"
REM	  	1824	  	"	var newParMatch = newMod.match(/\)*$/);"
REM	  	1825	  	"	var newParCount = newParMatch ? newParMatch[0].length : 0;"
REM	  	1826	  	"	var tmpLisp = parseList(srcObj, false, true);"
REM	  	1827	  	"	if (false) {"
REM	  	1828	  	"		getSymbol(""*Newcode"").setVal(tmpLisp);"
REM	  	1829	  	"		refreshMonitor();"
REM	  	1830	  	"	}"
REM	  	1831	  	"	var parseResult = lispToStr(tmpLisp);"
REM	  	1832	  	"	var parseParMatch = parseResult.match(/\)*$/);"
REM	  	1833	  	"	var parseParCount = parseParMatch ? parseParMatch[0].length : 0;"
REM	  	1834	  	"	var parBalance = newParCount - parseParCount + ((newMod == """") || newMod.match(/\($/) ? 0 : 1);"
REM	  	1835	  	"	//stdPrint(newMod + "" -> "" + parseResult + "", "" + newParCount + "", "" + parseParCount + ""\n"");"
REM	  	1836	  	"	return parBalance;"
REM	  	1837	  	}
REM	  	1838	  	
REM	  	1839	  	function openDocWindow(evt) {
REM	  	1840	  	"	var docUrl = ""http://software-lab.de/doc/"";"
REM	  	1841	  	"	window.open(docUrl + symbolRefUrl(this.symbol.name), ""refdoc"","
REM	  	1842	  	"		""fullscreen=no, toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes, "" +"
REM	  	1843	  	"		""directories=no, location=no, width=980, height=600"");"
REM	  	1844	  	}
REM	  	1845	  	
REM	  	1846	  	function printSymbolValue(evt) {
REM	  	1847	  	"	stdPrint(lispToStr(this.symbol.getVal()) + ""\n"");"
REM	  	1848	  	"	newcode.focus();"
REM	  	1849	  	}
REM	  	1850	  	
REM	  	1851	  	function updateCodeGuides() {
REM	  	1852	  	"	if (! consPrefs.codeGuidesEnabled) return;"
REM	  	1853	  	"	var srcObj = new Source(newcode.value).withTrace();"
REM	  	1854	  	"	var parGuide = document.getElementById(""parGuide"").firstChild;"
REM	  	1855	  	"	try {"
REM	  	1856	  	"		var parHint = """";"
REM	  	1857	  	"		var parBalance = newcodeCheck(srcObj);	// will call parseList(srcObj, ...)"
REM	  	1858	  	"		if (parBalance == 0) {"
REM	  	1859	  	"			parHint = ""?"";"
REM	  	1860	  	"		} else if (parBalance < 0) {"
REM	  	1861	  	"			for (var i=0; i>parBalance; i--) parHint += ""("";	// one or more )'s needed"
REM	  	1862	  	"		} else {"
REM	  	1863	  	"			for (var i=0; i<parBalance; i++) parHint += "")"";	// probably too many )'s"
REM	  	1864	  	"		}"
REM	  	1865	  	"		parGuide.nodeValue = parHint;"
REM	  	1866	  	"	} catch (e) { parGuide.nodeValue = e.toString(); }"
REM	  	1867	  	"	"
REM	  	1868	  	"	var symGuide = document.getElementById(""symGuide""), symText = symGuide.firstChild;"
REM	  	1869	  	"	try {"
REM	  	1870	  	"		if (newcode.value != prevNewcode) {"
REM	  	1871	  	"			symGuide.onclick = function() { newcode.focus(); };"
REM	  	1872	  	"			symGuide.className = ""nosymbol"";"
REM	  	1873	  	"			symGuide.title = null;"
REM	  	1874	  	"			var sName = ""?"";"
REM	  	1875	  	"			for (var ni=newcode.value.length-1, pi=prevNewcode.length-1; ni >= 0; ni-- & pi--) {"
REM	  	1876	  	"				if ((pi < 0) || (newcode.value[ni] != prevNewcode[pi])) {"
REM	  	1877	  	"					var itemInd = srcObj.getSymbolBeforePos(ni + 1);"
REM	  	1878	  	"					if (itemInd != null) {"
REM	  	1879	  	"						sName = itemInd.item.name;"
REM	  	1880	  	"						symGuide.symbol = itemInd.item;"
REM	  	1881	  	"						if (typeof itemInd.item.cdr === ""function"") {"
REM	  	1882	  	"							if (sName.match(/\w+\:\w+/)) {"
REM	  	1883	  	"								symGuide.title = ""No ref. yet for this function"";"
REM	  	1884	  	"							} else {"
REM	  	1885	  	"								symGuide.onclick = openDocWindow;"
REM	  	1886	  	"								symGuide.className = ""builtin"";"
REM	  	1887	  	"								symGuide.title = ""Open ref. in new window"";"
REM	  	1888	  	"							}"
REM	  	1889	  	"						} else {"
REM	  	1890	  	"							symGuide.onclick = printSymbolValue;"
REM	  	1891	  	"							symGuide.className = ""othersymbol"";"
REM	  	1892	  	"							symGuide.title = ""Print symbol value"";"
REM	  	1893	  	"						}"
REM	  	1894	  	"					}"
REM	  	1895	  	"					break;"
REM	  	1896	  	"				}"
REM	  	1897	  	"			}"
REM	  	1898	  	"			symText.nodeValue = sName;"
REM	  	1899	  	"			prevNewcode = newcode.value;"
REM	  	1900	  	"		}"
REM	  	1901	  	"	} catch (e) { symText.nodeValue = e.message + "", "" + e.lineNumber; }"
REM	  	1902	  	}
REM	  	1903	  	
REM	  	1904	  	function newcodeKeyup(evt) {
REM	  	1905	  	"	updateCodeGuides();"
REM	  	1906	  	"	return true;"
REM	  	1907	  	}
REM	  	1908	  	
REM	  	1909	  	function newcodeKeypress(evt) {
REM	  	1910	  	"	evt = evt ? evt : window.event;"
REM	  	1911	  	"	if (consPrefs.evaluateOnReturn && (evt.keyCode == 13) && ! evt.shiftKey) {"
REM	  	1912	  	"		evt.preventDefault();"
REM	  	1913	  	"		evalExpr();"
REM	  	1914	  	"		return false;"
REM	  	1915	  	"	}"
REM	  	1916	  	"	return true;"
REM	  	1917	  	}
REM	  	1918	  	
REM	  	1919	  	function prefCheckboxClick(evt) {
REM	  	1920	  	"	consPrefs[this.id] = this.checked;"
REM	  	1921	  	"	if (this.id == ""closeWindowWarningEnabled"") {"
REM	  	1922	  	"		window.onbeforeunload = consPrefs.closeWindowWarningEnabled ? closeWindowMsg : null;"
REM	  	1923	  	"	}"
REM	  	1924	  	}
REM	  	1925	  	
REM	  	1926	  	function prefInputChange(evt) {
REM	  	1927	  	"	eval(this.id.replace(/\-/g, ""."") + ""='"" + this.value + ""'"");"
REM	  	1928	  	}
REM	  	1929	  	
REM	  	1930	  	function showHidePrefs(visibleOrHidden) {
REM	  	1931	  	"	try {"
REM	  	1932	  	"		if (visibleOrHidden == ""visible"") {"
REM	  	1933	  	"			var checkboxArr = document.querySelectorAll(""div#prefs input[type='checkbox']"");"
REM	  	1934	  	"			for (var i=0; i<checkboxArr.length; i++) {"
REM	  	1935	  	"				var cb = checkboxArr[i];"
REM	  	1936	  	"				cb.checked = consPrefs[cb.id];"
REM	  	1937	  	"				cb.onclick = prefCheckboxClick;"
REM	  	1938	  	"			}"
REM	  	1939	  	"			var inputArr = document.querySelectorAll(""div#prefs input[type='text']"");"
REM	  	1940	  	"			for (var i=0; i<inputArr.length; i++) {"
REM	  	1941	  	"				var inElem = inputArr[i];"
REM	  	1942	  	"				inElem.value = eval(inElem.id.replace(/\-/g, "".""));"
REM	  	1943	  	"				inElem.onchange = prefInputChange;"
REM	  	1944	  	"			}"
REM	  	1945	  	"		} else if (consPrefs.newcodeFocusAfterEvaluation) {"
REM	  	1946	  	"			newcode.focus();"
REM	  	1947	  	"		}"
REM	  	1948	  	"		document.getElementById(""prefs"").style.visibility = visibleOrHidden;"
REM	  	1949	  	"	} catch (e) { alert(""showHidePrefs: "" + e); }"
REM	  	1950	  	}
REM	  	1951	  	
REM	  	1952	  	function openMainWindow() {
REM	  	1953	  	"	window.open(""http://folk.uio.no/jkleiser/pico/emuLisp/index.html"", ""EmuLispMain"", ""resizable=yes, scrollbars=yes, location=yes"");"
REM	  	1954	  	}
REM	  	1955	  	
REM	  	1956	  	function closeWindowMsg(evt) {
REM	  	1957	  	"	evt = evt ? evt : window.event;"
REM	  	1958	  	"	var msg = ""Leaving this page will do away with your current EmuLisp data."";"
REM	  	1959	  	"	evt.returnValue = msg;"
REM	  	1960	  	"	return msg;"
REM	  	1961	  	}
REM	  	1962	  	
REM	  	1963	  	function init() {
REM	  	1964	  	"	var small = (screen.height < 400);"
REM	  	1965	  	"	window.name = ""EmuLispConsole"";"
REM	  	1966	  	"	dcons = document.getElementById(""dcons"");"
REM	  	1967	  	"	dcons.ondragover = function() { return false; }"
REM	  	1968	  	"	dcons.ondragend = function() { return false; }"
REM	  	1969	  	"	dcons.ondrop = handleFileDrop;"
REM	  	1970	  	"	dcons.style.fontSize = ""15px"";"
REM	  	1971	  	"	dcons.style.fontFamily = ""monospace"";"
REM	  	1972	  	"	consLog = document.getElementById(""log"");"
REM	  	1973	  	"	consLog.style.height = small ? ""200px"" : ""400px"";"
REM	  	1974	  	"	newcode = document.getElementById(""newcode"");"
REM	  	1975	  	"	newcode.focus();"
REM	  	1976	  	"	if (typeof newcode.addEventListener == ""function"") {"
REM	  	1977	  	"		newcode.addEventListener(""keypress"", newcodeKeypress, false);"
REM	  	1978	  	"		newcode.addEventListener(""keyup"", newcodeKeyup, false);"
REM	  	1979	  	"	}"
REM	  	1980	  	"	initialLogScrollWidth = document.getElementById(""log"").scrollWidth;"
REM	  	1981	  	"	updateCodeGuides();"
REM	  	1982	  	"	hideMonitorIfCanvasNotSupported();"
REM	  	1983	  	"	if (consPrefs.closeWindowWarningEnabled) window.onbeforeunload = closeWindowMsg;"
REM	  	1984	  	}
REM	  	1985	  	"	</script>"
REM	  	1986	  	</head>
REM	  	1987	  	<body onload="init();">
REM	  	1988	  	<div id="head">
REM	  	1989	  	"	<span id=""presentation""><em>EmuLisp</em> - emulating a tiny subset of PicoLisp</span>"
REM	  	1990	  	"	<img id=""infosymbol"" src=""images/info.png"""
REM	  	1991	  	"		title=""Open Main Page in sep. window/tab"" alt=""info"" onclick=""openMainWindow();"">"
REM	  	1992	  	"	<input type=""button"" value=""Prefs"" onclick=""showHidePrefs('visible');"" />"
REM	  	1993	  	</div>
REM	  	1994	  	<div id="main">
REM	  	1995	  	"	<div id=""dcons"">"
REM	  	1996	  	"		<div id=""log""></div>"
REM	  	1997	  	"		<textarea id=""newcode"" rows=""6""></textarea>"
REM	  	1998	  	"		<span id=""version"">EmuLisp Console 28-Mar-2011</span>"
REM	  	1999	  	"		<span id=""controls"">"
REM	  	2000	  	"			<span id=""symGuide"">?</span>"
REM	  	2001	  	"			<span id=""parGuide"">?</span>"
REM	  	2002	  	"			<input type=""button"" value=""Evaluate"" onclick=""evalExpr();"" />"
REM	  	2003	  	"		</span>"
REM	  	2004	  	"	</div>"
REM	  	2005	  	"	<div id=""monitor"">"
REM	  	2006	  	"		Expression to monitor: <input id=""monitorobject"" type=""text"" value=""@"" /><br />"
REM	  	2007	  	"		<canvas id=""monView"" width=""478"" height=""478"""
REM	  	2008	  	"			onclick=""refreshMonitor();"" title=""Click to refresh monitor"">"
REM	  	2009	  	"			Monitoring requires canvas support."
REM	  	2010	  	"		</canvas><br />"
REM	  	2011	  	"		<span style=""float: right"">"
REM	  	2012	  	"			<input id=""clearMonView"" type=""checkbox"" checked />"
REM	  	2013	  	"			<label for=""clearMonView"">Clear monitor view before evaluation</label>"
REM	  	2014	  	"		</span>"
REM	  	2015	  	"	</div>"
REM	  	2016	  	</div>
REM	  	2017	  	<div id="prefs">
REM	  	2018	  	"	<p class=""paneHead""><span class=""closebox"" onclick=""showHidePrefs('hidden');"">X</span></p>"
REM	  	2019	  	"	<p class=""pref""><input id=""codeGuidesEnabled"" type=""checkbox"" />"
REM	  	2020	  	"		<label for=""codeGuidesEnabled"">Enable Code Guides</label></p>"
REM	  	2021	  	"	<p class=""pref""><input id=""evaluateOnReturn"" type=""checkbox"" />"
REM	  	2022	  	"		<label for=""evaluateOnReturn"">Evaluate on Return</label></p>"
REM	  	2023	  	"	<p class=""pref""><input id=""newcodeClearAfterEvaluation"" type=""checkbox"" />"
REM	  	2024	  	"		<label for=""newcodeClearAfterEvaluation"">Clear Input after Evaluation</label></p>"
REM	  	2025	  	"	<p class=""pref""><input id=""newcodeFocusAfterEvaluation"" type=""checkbox"" />"
REM	  	2026	  	"		<label for=""newcodeFocusAfterEvaluation"">Focus Input after Evaluation</label></p>"
REM	  	2027	  	"	<p class=""pref""><input id=""closeWindowWarningEnabled"" type=""checkbox"" />"
REM	  	2028	  	"		<label for=""closeWindowWarningEnabled"">Warning when Closing Window</label></p>"
REM	  	2029	  	"	<p class=""pref""><label for=""dcons-style-fontSize"">Console Font Size:</label>"
REM	  	2030	  	"		<input id=""dcons-style-fontSize"" type=""text"" size=""5"" /></p>"
REM	  	2031	  	"	<p class=""pref""><label for=""dcons-style-fontFamily"">Console Font Family:</label>"
REM	  	2032	  	"		<input id=""dcons-style-fontFamily"" type=""text"" size=""10"" /></p>"
REM	  	2033	  	"	<p class=""pref""><label for=""consLog-style-height"">Height of Log:</label>"
REM	  	2034	  	"		<input id=""consLog-style-height"" type=""text"" size=""5"" /></p>"
REM	  	2035	  	</div>
REM	  	2036	  	</body>
REM	  	2037	  	</html>
Function PLS (THX)
End Function
