<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>EmuLisp Console</title>
	<meta name="generator" content="BBEdit 9.6" />
	<style type="text/css" title="text/css">
body {
	margin: 12px 16px 0 16px;
	background-color: #f0ecd0;
}
div#head {
	white-space: nowrap;
}
span#presentation {
	border: 1px solid gray;
	border-radius: 4px;
	padding: 4px 12px 4px 12px;
	font: 15px Optima;
	background-color: white;
}
span#presentation em {
	font-size: 18px;
}
img#infosymbol {
	position: relative;
	top: 5px;
	margin: 0 0 0 8px;
	cursor: pointer;
}
div#main {
	position: relative;
	top: 7px;
}
div#dcons {
	width: 520px;
}
div#log {
	margin: 0;
	width: 101.3%;
	border: 1px solid gray;
	border-bottom: none;
	overflow: auto;
	background-color: white;
}
div#log pre {
	margin: 0 1px 0 1px;
	padding: 2px 2px 2px 4px;
}
pre.oldcode {
	background-color: #f0f5f7;
	cursor: pointer;
}
pre.filedrop {
	border-left: 4px solid #c0c5c7;
	background-color: #f0f5f7;
}
pre.print {
	background-color: #def;
}
pre.println {
	background-color: #def;
	border-bottom: 1px solid #bcf;
}
pre.result {
	background-color: #dfd;
	border-bottom: 1px solid #9b9;
}
pre.warning {
	border-left: 4px solid #db3;
	background-color: #ffa;
}
pre.error {
	border-left: 4px solid #f33;
	background-color: #fdd;
}
textarea#newcode {
	margin: 0 0 4px 0;
	width: inherit;
	border: 1px solid gray;
	padding: 2px 0 0 6px;
	font: inherit;
}
span#version {
	margin-left: 8px;
	font: italic 11px Arial, sans-serif;
}
div#dcons span#controls {
	float: right;
}
div#dcons span#controls span {
	margin: 0;
	border: 1px solid gray;
	padding: 2px 4px 2px 4px;
	font: 14px monospace;
	background-color: white;
}
div#dcons span#controls .nosymbol {
	color: black;
	cursor: text;
}
div#dcons span#controls .builtin {
	color: #00e;
	cursor: pointer;
}
div#dcons span#controls .othersymbol {
	color: #00e;
	cursor: pointer;
	background-color: #def;
}
div#dcons input[type='button'] {
}
div#monitor {
	position: absolute;
	top: 0;
	left: 534px;
	font: 15px Optima;
}
div#monitor input[type='text'] {
	margin: 0 0 4px 0;
	width: 300px;
	font: 15px monospace;
}
canvas#monView {
	border: 1px solid gray;
	background-color: white;
}
div#prefs {
	visibility: hidden;
	position: absolute;
	top: 46px;
	left: 160px;
	border: 2px ridge #999;
	background-color: white;
	-moz-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);
	-webkit-box-shadow: 4px 4px 8px rgba(0,0,0,0.3);
	box-shadow: 4px 4px 8px rgba(0,0,0,0.3);
	padding: 0 0 2px 0;
	font: 14px Optima;
}
p.paneHead {
	margin: 0 0 8px 0;
	border-bottom: 1px solid #bbb;
	background-color: #ddd;
	padding: 0 0 1px 0;
}
span.closebox {
	position: relative;
	margin: 0;
	left: 92%;
	border: 1px solid #999;
	background-color: #f9f9f9;
	padding: 0 3px 0 3px;
	text-align: center;
	font: 10px Arial, sans-serif;
	cursor: default;
}
span.closebox:hover {
	color: #d22;
}
p.pref {
	margin: 0 16px 8px 14px;
}
div#prefs input[type='checkbox'] {
	margin: 0 6px 0 0;
}
div#prefs input[type='text'] {
	background-color: #ffd;
	padding-left: 2px;
}

/*	below are the following script sections (in one script tag)
	<script src="http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js" type="text/javascript"></script>
        <script src="http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js" type="text/javascript"></script>
*/


	</style>

	<script src="http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js" type="text/javascript"></script>

<script type="text/javascript">
/* 26nov10jk
 * (c) Jon Kleiser
 * http://folk.uio.no/jkleiser/pico/emuLisp/src/core.js
 */
var BOXNAT_EXP = "Boxed native object expected",
	BOOL_EXP = "Boolean expected", CELL_EXP = "Cell expected", LIST_EXP = "List expected",
	NUM_EXP = "Number expected", SYM_EXP = "Symbol expected", VAR_EXP = "Variable expected",
	EXEC_OR_NUM_EXP = "Executable or Number expected",
	BAD_ARG = "Bad argument", BAD_DOT = "Bad dotted pair", BAD_INPUT = "Bad input", DIV_0 = "Div/0",
	NOT_MAK = "Not making", PROT_SYM = "Protected symbol", UNDEF = "Undefined",
	JS_CTORNAME_EXP = "Constructor name expected", JS_RESERVED = "Reserved word";

function getFileSync(fileUrl) {
	var req = new XMLHttpRequest();
	req.open("GET", fileUrl, false);		// synchronous
	req.overrideMimeType("text/plain; charset=utf-8");
	req.send(null);
	if (req.status == 0) {
		return req.responseText;
	}
	throw new Error("XMLHttpRequest status: " + req.status);
}

var NILTYPE = 0, NUMBERTYPE = 1, SYMBOLTYPE = 2, CELLTYPE = 3, TRUETYPE = 4;

Number.prototype.TYPEVAL = NUMBERTYPE;

function lispToStr(x) {
	//if (!confirm("lispToStr: " + x.toString() + ", " + x.TYPEVAL)) throw new Error("lispToStr aborted");
	return x.toString();
}

function unknown(x) {
	if (!confirm("Unknown Lisp type: " + x)) throw new Error("unknown aborted");
	return "???";
}

function valueToStr(x) {
	//if (!confirm("valueToStr " + lispToStr(x))) throw new Error("valueToStr aborted");
	return (x instanceof Number) ? x.toString() :
		(x instanceof Symbol) ? x.toValueString() :
		(x instanceof Cell) ? x.toValueString() : unknown(x);
}

function Cell(car, cdr) {
	this.car = car;
	this.cdr = cdr;
}

Cell.prototype.TYPEVAL = CELLTYPE;

Cell.prototype.getVal = function() {
	return this.car;
}

Cell.prototype.setVal = function(val) {
	this.car = val;
}

Cell.prototype.toString = function() {
	if (this.car === QUOTE) return "'" + lispToStr(this.cdr);
	var arr = [], c = this;
	do {
		arr.push(lispToStr(c.car));
		c = c.cdr;
		//if (!confirm("Cell.toString: " + lispToStr(c.car))) throw new Error("Cell.toString aborted");
		if (c === this) { arr.push("."); c = NIL; }	// why didn't break work here?
	} while (c instanceof Cell);
	if (c !== NIL) {
		arr.push(".", lispToStr(c));	// last Cell was dotted
	}
	return "(" + arr.join(" ") + ")";
}

Cell.prototype.toValueString = function() {
	var str = "", c = this;
	do {
		str += valueToStr(c.car);
		c = c.cdr;
	} while (c instanceof Cell);
	if (c !== NIL) {
		str += valueToStr(c);	// last Cell was dotted
	}
	return str;
}

function Symbol(name, val) {
	this.name = name;
	this.trans = false;
	this.cdr = (val === undefined) ? NIL : val;
	this.props = NIL;
}

function newTransSymbol(name) {
	var ts = new Symbol(name);
	ts.trans = true;
	ts.cdr = ts;
	return ts;
}

// Creates and returns a new anonymous symbol
function box(val) {
	var ts = new Symbol(null, val);
	ts.trans = true;
	return ts;
}

function boxNativeObject(obj) {
	var ts = newTransSymbol(null);
	ts.obj = obj;
	return ts;
}

Symbol.prototype.TYPEVAL = SYMBOLTYPE;

Symbol.prototype.getVal = function() {
	return this.cdr;
}

Symbol.prototype.valueOf = function() {
	return this.name;
}

Symbol.prototype.setVal = function(val) {
	if (this.lock) throw new Error(newErrMsg(PROT_SYM, this));
	this.cdr = val;
}

// Internal symbol names can consist of any printable (non-whitespace) character,
// except for the following meta characters:		" ' ( ) , [ ] ` ~ { }
// It is possible, though, to include these special characters into symbol names
// by escaping them with a backslash '\'.
Symbol.prototype.escName = function() {
	var eName = this.name.replace(/\\/g, "\\\\");
	eName = eName.replace(/\^/g, "Error! Hyperlink reference not valid.");
	eName = eName.replace(/\t/g, "^I");
	eName = eName.replace(/\r/g, "^M");
	eName = eName.replace(/\n/g, "^J");
	//if (eName != this.name) alert("Symbol.escName: " + this.name + " -> " + eName);
	return eName;
}

Symbol.prototype.noName = function() {
	return (this.obj !== undefined) ? "$" + typeof this.obj : "$*";
}

Symbol.prototype.toString = function() {
	return this.trans ? (this.name != null) ? ('"' + this.escName() + '"') : this.noName() : this.name;
}

Symbol.prototype.toValueString = function() {
	return (this === NIL) ? "" : (this.name != null) ? this.name : this.noName();
}

Symbol.prototype.pushValue = function(val) {
	if (this.stack === undefined) this.stack = [];
	this.stack.push(this.cdr);
	this.cdr = val;
}

Symbol.prototype.popValue = function() {
	var pv = this.cdr;
	this.cdr = this.stack.pop();
	//if (this.stack.length === 0) delete this.stack;
	return pv;
}

function getSymbol(name, editMode) {
	if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));
	var s = gSym[name];
	if (s === undefined) {
		s = new Symbol(name, NIL);
		if (! editMode) gSym[name] = s;
	}
	return s;
}

function setSymbolValue(s, val) {
	if (!(s instanceof Symbol)) throw new Error(newErrMsg(VAR_EXP, s));
	s.setVal(val);
}

function Source(text, chars) {
	this.src = text;
	// character limitation for symbols
	if (chars instanceof Symbol) {
		this.charset = chars.valueOf();
	} else if (typeof chars == "string") {
		//alert("Source2: " + chars);
		this.charset = chars;
	}
	this.pos = 0;
	this.trace = null;
}

Source.prototype.CLOSEPAREN = -1;
Source.prototype.CLOSESYM = -2;
Source.prototype.QUOTE2 = -3;
Source.prototype.EOF = null;

Source.prototype.unescMap = {I: "\t", i: "\t", J: "\n", j: "\n", M: "\r", m: "\r"};

Source.prototype.getNextSignificantChar = function() {
	while (this.pos < this.src.length) {
		while (this.src.charAt(this.pos) == "#") {
			var ch;
			do { ch = this.src.charAt(this.pos++); } while ((ch != "\n") && (this.pos < this.src.length));
		}
		if (this.src.charAt(this.pos) == "\\") this.pos++;
		if (" \t\r\n".indexOf(this.src.charAt(this.pos)) == -1) return this.src.charAt(this.pos++);
		this.pos++;
	}
	return this.EOF;
}

Source.prototype.getNextStringChar = function() {
	while (this.pos < this.src.length) {
		var ch = this.src.charAt(this.pos++);
		if (ch == "\"") return this.QUOTE2;
		if (ch == "\\") return this.src.charAt(this.pos++);
		if (ch != "^") return ch;
		ch = this.unescMap[this.src.charAt(this.pos++)];
		if (ch != null) return ch;
	}
	return this.EOF;
}

Source.prototype.getNextSymbolChar = function() {
	if (" \t\r\n('\"".indexOf(this.src.charAt(this.pos)) >= 0) return this.CLOSESYM;
	var ch = this.src.charAt(this.pos++);
	if (ch == ")") return this.CLOSEPAREN;
	if (ch == "\\") return this.src.charAt(this.pos++);
	return ch;
}

Source.prototype.withTrace = function() {
	this.trace = [];
	return this;
}

Source.prototype.traceItemEnd = function(item) {
	if (this.trace) this.trace.push({item: item, endPos: this.pos});
}

Source.prototype.getItemBeforePos = function(endPos) {
	for (var i=this.trace.length-1; i>=0; i--) {
		var t = this.trace[i];
		if ((t.endPos - t.item.toString().length) <= endPos) return {item: t.item, tInd: i};
	}
	return null;
}

Source.prototype.getSymbolBeforePos = function(endPos) {
	for (var i=this.trace.length-1; i>=0; i--) {
		var t = this.trace[i];
		if (((t.endPos - t.item.toString().length) <= endPos) &&
			(t.item instanceof Symbol) && gSym[t.item.name]) return {item: t.item, tInd: i};
	}
	return null;
}

var NIL = new Symbol("NIL");	NIL.car = NIL;	NIL.cdr = NIL;	NIL.props = NIL;
		NIL.lock = true; NIL.TYPEVAL = NILTYPE; NIL.bool = false;
var T = new Symbol("T");	T.cdr = T;	T.lock = true; T.TYPEVAL = TRUETYPE; T.bool = true;
var A1 = new Symbol("@", NIL), A2 = new Symbol("@@", NIL), A3 = new Symbol("@@@", NIL);
var ZERO = new Number(0), ONE = new Number(1);
var gSym = {NIL: NIL, T: T, "@": A1, "@@": A2, "@@@": A3};	// dictionary/index for internal symbols
var gTrans = {};	// dictionary/index for transient symbols (strings)
var gEmptyObj = {};
var gParseCache = {};
var mk = [];	// 'make' stack
var evFrames = NIL;
var gTrcIndent = "";
var startupMillis = (new Date()).getTime();

function mkNew() { mk.unshift({h: NIL, t: NIL}); }
function linkc(c) {
	if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));
	c = (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL);
	if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }
	while (c.cdr !== NIL) { c = c.cdr; }; mk[0].t = c; return c.car;
}
function link(x) {
	if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));
	var c = new Cell(x, NIL);
	if (mk[0].h === NIL) { mk[0].h = c; } else { mk[0].t.cdr = c; }
	mk[0].t = c; return x;
}
function mkResult() { return mk.shift().h; }

function getString(str, editMode) {
	var s = (str in gEmptyObj) ? undefined : gTrans[str];
	if (s === undefined) {
		s = newTransSymbol(str);
		if (! (editMode || (str in gEmptyObj))) gTrans[str] = s;
	}
	return s;
}

function newErrMsg(msg, badValue) {
	getSymbol("*Msg").setVal(newTransSymbol(msg));
	return (badValue === undefined) ? msg : lispToStr(badValue) + " -- " + msg;
}

function deFn(name, jsFn) {
	if (name in gEmptyObj) throw new Error(newErrMsg(JS_RESERVED, name));
	var sym = new Symbol(name, jsFn);
	gSym[name] = sym;
}

function aTrue(val) { if (val !== NIL) { A1.pushValue(val); return true; } else return false; }

function aPop(val) { A1.popValue(); return val; }

function car(c) { if (c.car) return c.car; else throw new Error(newErrMsg(LIST_EXP)); }
function cdr(c) { if ((c instanceof Cell) || (c === NIL)) return c.cdr;
						else throw new Error(newErrMsg(LIST_EXP)); }

function numeric(val) {
	if (val instanceof Number) return val;
	throw new Error(newErrMsg(NUM_EXP, val));
}

function nth(lst, n) {
	if (lst instanceof Cell) {
		if (n <= 0) return NIL;
		while ((lst !== NIL) && (--n > 0)) { lst = lst.cdr; }
	}
	return lst;
}

function getAlg(c) {
	//alert("getAlg: " + lispToStr(c));
	var s = c.car; c = c.cdr;
	while (c instanceof Cell) {
		var k = c.car;
		if (s instanceof Symbol) {
			if (eqVal(k, ZERO)) {
				s = s.getVal();
			} else {
				var pLst = s.props, p = NIL, pk, pv;
				while (pLst !== NIL) {
					var pc = pLst.car;
					if (pc instanceof Cell) { pk = pc.cdr; pv = pc.car; } else { pk = pc; pv = T; }
//if (!confirm("getAlg: " + lispToStr(pc) + ", " + lispToStr(pk) + ", " + lispToStr(pv))) throw new Error("getAlg aborted");
					if (pk === k) { p = pv; break; }
					pLst = pLst.cdr;
				}
				s = p;	// the symbol or list to use in the next step
			}
		} else if (s instanceof Cell) {
			if (k instanceof Number) {
				if (k >= 0) {
					s = nth(s, k).car;
				} else {
					do { s = s.cdr; } while ((s !== NIL) && (++k < 0));
				}
			}
		} else throw new Error(newErrMsg(SYM_EXP));
		c = c.cdr;
	}
	return s;
}

function prog(c) {
	var v = NIL; while (c instanceof Cell) { v = evalLisp(c.car); c = c.cdr; }; return v;
}

function iter(c) {
	var v = NIL;
	while (c instanceof Cell) {
		var cv = c.car, cond = false, cMatch = false;
		if (cv instanceof Cell) {
			if (cond = (cv.car === NIL)) {
				cMatch = (evalLisp(cv.cdr.car) === NIL);
			} else if (cond = (cv.car === T)) {
				cMatch = aTrue(evalLisp(cv.cdr.car));
			}
		}
		if (cond) {
			if (cMatch) {
				v = prog(cv.cdr.cdr);
				if (cv.car === T) aPop(v);
				return {v: v, m: true};
			}
		} else v = evalLisp(cv);
		c = c.cdr;
	}
	return {v: v, m: false};
}

function div(c, divFn) {
	var t = evalLisp(c.car);
	if (t === NIL) return NIL;
	t = numeric(t);
	while (c.cdr !== NIL) {
		c = c.cdr;
		var v = evalLisp(c.car); if (v === NIL) return NIL;
		if (numeric(v) == 0) throw new Error(newErrMsg(DIV_0));
		t = divFn(t, v);
	}
	return new Number(t);
}

function eqVal(a, b) {
	//alert("eqVal() " + a + ", " + b);
	if (a.TYPEVAL === b.TYPEVAL) {
		if (a === b) return true;
		if (a.TYPEVAL === CELLTYPE) {
			return eqVal(a.car, b.car) ? eqVal(a.cdr, b.cdr) : false;
		}
		return (a.valueOf() == b.valueOf());	// Number or Symbol
	}
	return false;
}

function ltVal(a, b) {
	if (a.TYPEVAL === b.TYPEVAL) {
		if (a === b) return false;
		if (a.TYPEVAL === CELLTYPE) {
			return eqVal(a.car, b.car) ? ltVal(a.cdr, b.cdr) : ltVal(a.car, b.car);
		}
		return a.valueOf() < b.valueOf();	// Number or Symbol
	}
	return a.TYPEVAL < b.TYPEVAL;
}

function idxLookup(owner, v) {
	var tree = owner.getVal();
	if (tree === NIL) return NIL;
	while (!eqVal(v, tree.car)) {
		if (tree.cdr === NIL) return NIL;
		if (ltVal(v, tree.car)) return idxLookup(tree.cdr, v);
		tree = tree.cdr;
		if (tree.cdr === NIL) return NIL;
		tree = tree.cdr;
	}
	return tree;
}

function idxInsert(owner, v) {
	var tree = owner.getVal();
	if (tree === NIL) { owner.setVal(new Cell(v, NIL)); return NIL; }
	while (!eqVal(v, tree.car)) {
		if (tree.cdr === NIL) tree.cdr = new Cell(NIL, NIL);
		if (ltVal(v, tree.car)) return idxInsert(tree.cdr, v);
		tree = tree.cdr;
		if (tree.cdr === NIL) { tree.cdr = new Cell(v, NIL); return NIL; }
		tree = tree.cdr;
		//if (!confirm("idxInsert: " + lispToStr(tree))) throw new Error("idxInsert aborted");
	}
	return tree;
}

function idxDelete(owner, v) {
	var tree = owner.getVal(), pre = NIL;
	if (tree === NIL) return NIL;
	while (!eqVal(v, tree.car)) {
		if (tree.cdr === NIL) return NIL;
		if (ltVal(v, tree.car)) return idxDelete(tree.cdr, v);
		pre = tree; tree = tree.cdr;
		if (tree.cdr === NIL) return NIL;
		pre = tree; tree = tree.cdr;
		//if (!confirm("idxDelete: " + lispToStr(tree))) throw new Error("idxDelete aborted");
	}
	// tree.car is the value to delete
	//var bbc = null;		// cell with "big brother" to replace tree.car, if needed
	if (tree.cdr.car !== NIL) {
		// There are lesser values that need a new "big brother".
		if (tree.cdr.cdr !== NIL) {
			var pbc = tree.cdr, bbc = pbc.cdr;
			if (bbc.cdr.car !== NIL) {
				// There are several "big brother" candidates, get the smallest ...
				do { pbc = bbc; bbc = bbc.cdr.car; } while (bbc.cdr.car !== NIL);
				pbc.cdr.car = NIL;	// brother's old cell replaced by NIL
			} else {
				// Only one candidate. Cut it and following NIL from list ...
				pbc.cdr = pbc.cdr.cdr.cdr;
			}
			//alert("idxDelete: " + lispToStr(bbc));
			tree.car = bbc.car;	// value to delete replaced by "big brother"
		} else {
			// Must promote lesser values
			if (pre === NIL) {
				owner.setVal(tree.cdr.car);
			} else {
				pre.cdr = tree.cdr.car;
			}
		}
	} else {
		// No lesser values following value to delete
		if (pre === NIL) {
			owner.setVal(tree.cdr.cdr);
		} else {
			pre.cdr = tree.cdr.cdr;
		}
	}
	return tree;
}

function idxLinkSorted(tree) {
	while (tree !== NIL)
	{ idxLinkSorted(tree.cdr.car); link(tree.car); tree = tree.cdr.cdr; }
}

/*
 * If 'evaluate' is true, each top level expression will be evaluated, and the result
 * of the last evaluation ('evRes') will be returned. A top level NIL or equivalent
 * will terminate further parsing.
 * If 'evaluate' is false/undefined, the source at the current level will be parsed,
 * and a corresponding tree of cells will be returned (through the 'cdr' at the bottom).
 * If 'editMode' is true, parsed symbols will not be inserted into the dictionaries.
 */
function parseList(src, evaluate, editMode) {
	var ch, s, dotPos = 0, quotes = 0, items = [], cdr = NIL, evRes = NIL, circEnd = null;
	do {
		ch = src.getNextSignificantChar();
		if (ch == "'") {
			quotes++;
		} else if (ch == ")") {
			break;
		} else if ((ch == ".") && (items.length > 0)) {
			if (dotPos > 0) throw new Error(newErrMsg(BAD_DOT,
												"(" + lispToStr(items[items.length-1]) + " . \\.)"));
			dotPos = items.length;
		} else if (ch !== src.EOF) {
			var item;
			if (ch == "(") {
				var tmp = parseList(src, false, editMode);
				if (evaluate && (tmp !== NIL)) evRes = evalLisp(tmp);
				item = tmp;
			} else if (ch == "\"") {
				s = "";
				while (typeof (ch = src.getNextStringChar()) == "string") s += ch;
				item = (s == "") ? NIL : getString(s, editMode);
				src.traceItemEnd(item);		// in case we would like to know item's position
			} else {
				s = ch;
				while (typeof (ch = src.getNextSymbolChar()) == "string") s += ch;
				item = isNaN(s) ? getSymbol(s, editMode) : new Number(s);
				src.traceItemEnd(item);		// in case we would like to know item's position
			}
			if (evaluate && (item === NIL)) return evRes;
			if ((dotPos > 0) && (items.length > dotPos)) throw new Error(newErrMsg(BAD_DOT));
			// TODO: provide a 'badValue' param for newErrMsg(BAD_DOT) above. Case: (1 (2 3) . 4 5)
			while (quotes > 0) { item = new Cell(QUOTE, item); quotes--; }
			items.push(item);
		}
	} while ((ch !== src.CLOSEPAREN) && (ch !== src.EOF));
	if (evaluate) return evRes;
	if (dotPos > 0) {
		if (dotPos == items.length) {
			cdr = new Cell(items.pop(), cdr);
			circEnd = cdr;		// last cell in circular (x y z .) notation
		} else { cdr = items.pop(); }	// normal dot notation
	}
	while (items.length > 0) cdr = new Cell(items.pop(), cdr);
	if (circEnd != null) circEnd.cdr = cdr;
	return cdr;
}

function cachedTextParse(str) {
	var lst = gParseCache[str];
	if (lst === undefined) {
		lst = parseList(new Source(str));
		gParseCache[str] = lst;
	}
	return lst;
}

function unevalArgs(lst) {
	// Putting elements of lst into anonymous symbols
	mkNew(); while (lst !== NIL) { link(box(lst.car)); lst = lst.cdr; }
	return mkResult();
}

function applyFn(rawFn, lst, more) {
	if (more !== NIL) {
		mkNew(); do { link(evalLisp(more.car)); more = more.cdr; } while (more !== NIL);
		mk[0].t.cdr = lst; lst = mkResult();
	}
	var fn = evalLisp(rawFn); if (! (fn instanceof Symbol)) fn = box(fn);
	return evalLisp(new Cell(fn, unevalArgs(lst)));
}

deFn("apply", function(c) { return applyFn(c.car, evalLisp(c.cdr.car), c.cdr.cdr); });
deFn("arg", function(c) { var n = 0, f = evFrames.car;
	if (c !== NIL) {
		n = Math.round(numeric(evalLisp(c.car))); if (n < 1) return NIL;
	}
	while (n-- > 0) f = f.cdr;
	return f.car;
});
deFn("args", function(c) { return (evFrames.car.cdr === NIL) ? NIL : T; });
deFn("bench", function(c) { var t0 = (new Date()).getTime(), r = prog(c);
	_stdPrint(((new Date()).getTime() - t0) / 1000 + " sec\n"); return r;
});
deFn("box", function(c) { return box(evalLisp(c.car)); });
deFn("caar", function(c) { return car(car(evalLisp(c.car))); });
deFn("caddr", function(c) { return car(cdr(cdr(evalLisp(c.car)))); });
deFn("cadr", function(c) { return car(cdr(evalLisp(c.car))); });
deFn("car", function(c) { return car(evalLisp(c.car)); });
deFn("cdar", function(c) { return cdr(car(evalLisp(c.car))); });
deFn("cddr", function(c) { return cdr(cdr(evalLisp(c.car))); });
deFn("cdr", function(c) { return cdr(evalLisp(c.car)); });
deFn("chop", function(c) { var cv = evalLisp(c.car);
	if ((cv === NIL) || (cv instanceof Cell)) return cv;
	var s = (cv instanceof Symbol) ? cv.valueOf() : cv.toString();
	if (s === null) return NIL;
	var arr = s.split(""), v = NIL;
	while (arr.length > 0) v = new Cell(newTransSymbol(arr.pop()), v);
	return v;
});
deFn("cond", function(c) {
	while (c.car instanceof Cell) {
		if (aTrue(evalLisp(c.car.car))) return aPop(prog(c.car.cdr));
		c = c.cdr;
	}
	return NIL;
});
deFn("cons", function(c) { var r = new Cell(evalLisp(c.car), evalLisp(c.cdr.car)), t = r;
	c = c.cdr.cdr;
	while (c !== NIL) { var d = new Cell(t.cdr, evalLisp(c.car)); t.cdr = d; t = d; c = c.cdr; }
	return r;
});
deFn("de", function(c) { var old = c.car.getVal();
	setSymbolValue(c.car, c.cdr);
	if ((old !== NIL) && !eqVal(c.cdr, old)) _warn("# " + c.car.valueOf() + " redefined");
	return c.car;
});
deFn("dec", function(c) {
	if (c === NIL) return NIL;
	var ns = evalLisp(c.car);
	if (ns instanceof Number) return new Number(ns - 1);
	var v = new Number(ns.getVal() - ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));
	ns.setVal(v); return v;
});
deFn("delete", function(c) { var a = evalLisp(c.car), lst = evalLisp(c.cdr.car);
	if (!(lst instanceof Cell)) return lst;
	if (eqVal(a, lst.car)) return lst.cdr;
	mkNew(); link(lst.car); lst = lst.cdr;
	while (lst instanceof Cell) {
		if (eqVal(a, lst.car)) { mk[0].t.cdr = lst.cdr; return mkResult(); }
		link(lst.car); lst = lst.cdr;
	}
	mk[0].t.cdr = lst;	// taking care of dotted tail
	return mkResult();
});
deFn("do", function(c) {
	var n = evalLisp(c.car);
	if (n === NIL) return NIL;
	var step = 1, b = c.cdr, v = NIL;
	if (n === T) { n = 1; step = 0; }
	for (var i=1; i<=n; i+=step) {
		var r = iter(b); v = r.v; if (r.m) break;
	}
	return v;
});
deFn("eval", function(c) { return evalLisp(evalLisp(c.car)); });	// TODO: binding env. offset cnt
deFn("fin", function(c) { c = evalLisp(c.car); while (c instanceof Cell) { c = c.cdr; }; return c; });
deFn("for", function(c) {
	var s = null, s2 = null, v = NIL;
	if (c.car instanceof Symbol) {
		s = c.car;
	} else if (c.car.cdr instanceof Symbol) {
		s2 = c.car.car; s = c.car.cdr;
	}
	if (s != null) {
		s.pushValue(NIL);	if (s2 != null) s2.pushValue(ZERO);
		var nl = evalLisp(c.cdr.car), b = c.cdr.cdr, i = 0;
		if (nl instanceof Number) {
			//alert("for: 1st form");	// (for I 3 (js:confirm I))
			while (++i <= nl) {
				s.setVal(new Number(i));
				var r = iter(b); v = r.v; if (r.m) break;
			}
		} else {
			//alert("for: 2nd form");	// (for (I . X) (22 33 44) (js:confirm (+ I X)) (+ I X))
			while (nl instanceof Cell) {
				s.setVal(nl.car); if (s2 != null) s2.setVal(new Number(++i));
				var r = iter(b); v = r.v; if (r.m) break;
				nl = nl.cdr;
			}
		}
	} else {
		//alert("for: 3rd form");
		if (c.car.car instanceof Symbol) {
			s = c.car.car;
		} else {
			s2 = c.car.car.car; s = c.car.car.cdr;
		}
		s.pushValue(evalLisp(c.car.cdr.car));	if (s2 != null) s2.pushValue(ZERO);
		var a2p = c.car.cdr.cdr, a2 = a2p.car, b = c.cdr, i = 0;
		var p = (a2p.cdr instanceof Cell) ? a2p.cdr.car : null;
		while (evalLisp(a2) !== NIL) {
			if (s2 != null) s2.setVal(new Number(++i));
			var r = iter(b); v = r.v; if (r.m) break;
			if (p != null) s.setVal(evalLisp(p));
		}
	}
	s.popValue();	if (s2 != null) s2.popValue();
	return v;
});
deFn("get", function(c) { return getAlg(evalArgs(c)); });
deFn("getl", function(c) { var s = getAlg(evalArgs(c));
	if (s instanceof Symbol) return s.props;
	throw new Error(newErrMsg(SYM_EXP, s));
});
deFn("idx", function(c) { var s = evalLisp(c.car);
	if (!(s instanceof Symbol)) return NIL;
	if (c.cdr === NIL) { mkNew(); idxLinkSorted(s.getVal()); return mkResult(); }
	var a = evalLisp(c.cdr.car);
	if (c.cdr.cdr === NIL) return idxLookup(s, a);
	return (evalLisp(c.cdr.cdr.car) === NIL) ? idxDelete(s, a) : idxInsert(s, a);
});
deFn("if", function(c) { return aTrue(evalLisp(c.car)) ? aPop(evalLisp(c.cdr.car)) : prog(c.cdr.cdr); });
deFn("ifn", function(c) { return aTrue(evalLisp(c.car)) ? aPop(prog(c.cdr.cdr)) : evalLisp(c.cdr.car); });
deFn("inc", function(c) {
	if (c === NIL) return NIL;
	var ns = evalLisp(c.car);
	if (ns instanceof Number) return new Number(ns + 1);
	var v = new Number(ns.getVal() + ((c.cdr !== NIL) ? numeric(evalLisp(c.cdr.car)) : 1));
	ns.setVal(v); return v;
});
deFn("length", function(c) { var cv = evalLisp(c.car), v = 0;
	if (cv instanceof Number) { v = cv.toString().length; }
	else if (cv instanceof Symbol) { v = cv.lock ? cv.toValueString().length :
		(cv.name === null) ? 0 : cv.name.length; }
	else if (cv instanceof Cell) { var cs = cv;
		while (cs !== NIL) { v++; cs = cs.cdr; if (cs === cv) return T; }}
	return new Number(v);
});
deFn("let", function(c) {
	var symArr = [], p = c.cdr;
	if (c.car instanceof Symbol) {
		if (c.car !== NIL) {
			c.car.pushValue(evalLisp(c.cdr.car)); symArr.push(c.car); p = c.cdr.cdr;
		}
	} else if (c.car instanceof Cell) {
		var sv = c.car;
		while (sv !== NIL) {
			sv.car.pushValue(evalLisp(sv.cdr.car)); symArr.push(sv.car); sv = sv.cdr.cdr;
		}
	}
	var v = prog(p);
	while (symArr.length > 0) { symArr.pop().popValue(); }
	return v;
});
deFn("link", linkc);
deFn("list", function(c) { return (c !== NIL) ? evalArgs(c) : new Cell(NIL, NIL); });
deFn("load", function(c) { var r = NIL;
	while (c instanceof Cell) {
		var cv = evalLisp(c.car);
		if (cv instanceof Symbol) {
			var f = cv.toValueString();
			if (f.charAt(0) == "-") {
				r = parseList(new Source("(" + f.substring(1) + ")"), true);
			} else {
				r = (f.match(/\.js$/)) ? loadJavaScript(f) : loadLisp(f);
			}
		}
		c = c.cdr;
	}
	return r;
});
deFn("loop", function(c) {
	var v = NIL; while (true) { var r = iter(c); v = r.v; if (r.m) break; }; return v;
});
deFn("make", function(c) { mkNew(); prog(c); return mkResult(); });
deFn("mapc", function(c) { var r = NIL, fn = evalLisp(c.car), ci = evalArgs(c.cdr);
	if (! (fn instanceof Symbol)) fn = box(fn);
	while (ci.car !== NIL) { var cj = ci; mkNew();
		while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }
		r = evalLisp(new Cell(fn, unevalArgs(mkResult())));
	}
	return r;
});
deFn("mapcar", function(c) { var fn = evalLisp(c.car), ci = evalArgs(c.cdr);
	if (! (fn instanceof Symbol)) fn = box(fn);
	mkNew();
	while (ci.car !== NIL) { var cj = ci; mkNew();
		//if (!confirm(lispToStr(cj))) throw new Error("mapcar aborted");
		while (cj !== NIL) { link(cj.car.car); cj.car = cj.car.cdr; cj = cj.cdr; }
		link(evalLisp(new Cell(fn, unevalArgs(mkResult()))));
	}
	return mkResult();
});
deFn("next", function(c) { evFrames.car = evFrames.car.cdr; return evFrames.car.car; });
deFn("not", function(c) { return (evalLisp(c.car) === NIL) ? T : NIL; });
deFn("nth", function(c) { var lst = evalArgs(c); c = lst.cdr;
	do { lst = nth(lst.car, numeric(c.car)); c = c.cdr; } while(c !== NIL); return lst; });
// pack has no support for circular lists, same as in PicoLisp
deFn("pack", function(c) { return (c !== NIL) ? newTransSymbol(valueToStr(evalArgs(c))) : NIL; });
deFn("pass", function(c) { return applyFn(c.car, evFrames.car.cdr, c.cdr); });
deFn("pop", function(c) { var cv = evalLisp(c.car);
	if (cv.getVal) {
		var v = cv.getVal();
		if (v instanceof Cell) { cv.setVal(v.cdr); return v.car; }
		if (v === NIL) return NIL;
		if (cv instanceof Cell) return cv.car;
	}
	throw new Error(newErrMsg(VAR_EXP, cv));
});
deFn("prin", function(c) {
	c = evalArgs(c); _stdPrint(c.toValueString());
	while (c.cdr !== NIL) { c = c.cdr; }; return c.car;
});
deFn("prinl", function(c) {
	c = evalArgs(c); _stdPrint(c.toValueString() + "\n");
	while (c.cdr !== NIL) { c = c.cdr; }; return c.car;
});

function printx(c, x) { var arr = [];
	c = evalArgs(c); arr.push(lispToStr(c.car));
	while (c.cdr !== NIL) { c = c.cdr; arr.push(lispToStr(c.car)); }
	_stdPrint(arr.join(" ") + x); return c.car;
}

deFn("print", function(c) { return printx(c, ""); });
deFn("println", function(c) { return printx(c, "\n"); });
deFn("printsp", function(c) { return printx(c, " "); });
deFn("prog", prog);
deFn("push", function(c) { var t = evalLisp(c.car), v;
	if (t.getVal) {
		do { c = c.cdr; v = evalLisp(c.car); t.setVal(new Cell(v, t.getVal())); } while (c.cdr !== NIL);
		return v;
	}
	throw new Error(newErrMsg(VAR_EXP, t));
});
deFn("put", function(c) {
	var kc, vc;
	c = evalArgs(c); mkNew();
	do { link(c.car); kc = c.cdr; vc = kc.cdr; c = c.cdr; } while (vc.cdr !== NIL);
	var s = getAlg(mkResult()), k = kc.car;
	if (!(s instanceof Symbol)) throw new Error(newErrMsg(SYM_EXP, s));
	if (s === NIL) throw new Error(newErrMsg(PROT_SYM, s));
	if (eqVal(k, ZERO)) {
		s.setVal(vc.car);
	} else {
		var pLst = s.props, pre = NIL;
		while (pLst !== NIL) {
			var pc = pLst.car, pk = (pc instanceof Cell) ? pc.cdr : pc;
			if (pk === k) {
				if (pre === NIL) { s.props = pLst.cdr; } else { pre.cdr = pLst.cdr; }	// removing old
				break;
			}
			pre = pLst; pLst = pLst.cdr;
		}
		if (vc.car !== NIL) {
			var pc = new Cell((vc.car === T) ? k : new Cell(vc.car, k), s.props);
			s.props = pc;
		}
		//alert("put props: " + lispToStr(s.props));
	}
	return vc.car;
});
deFn("queue", function(c) { var s = evalLisp(c.car);
	if (s.getVal) {
		var cv = s.getVal(), t = new Cell(evalLisp(c.cdr.car), NIL);
		if (cv === NIL) { s.setVal(t); return t.car; }
		if (cv instanceof Cell) {
			while (cv.cdr !== NIL) cv = cv.cdr;
			cv.cdr = t; return t.car;
		}
	}
	throw new Error(newErrMsg(VAR_EXP, s));
});
deFn("quote", function(c) { return c; });
var QUOTE = getSymbol("quote");
deFn("rand", function(c) { var r = Math.random();
	if (c === NIL) return new Number(r);	// range 0.0 .. 1.0
	var n = evalLisp(c.car);
	if (n === T) return (r < 0.5) ? NIL : T;
	return new Number((-numeric(n) + numeric(evalLisp(c.cdr.car))) * r + n);
});
deFn("range", function(c) {
	var n = numeric(evalLisp(c.car)), n2 = numeric(evalLisp(c.cdr.car)), s = evalLisp(c.cdr.cdr.car);
	if (s === NIL) { s = 1; } else if (numeric(s) <= 0) throw new Error(newErrMsg(BAD_ARG, s));
	if (n > n2) s = -s;
	mkNew(); do { link(n); n = new Number(n + s); } while ((s > 0) ? (n <= n2) : (n >= n2));
	return mkResult();
});
deFn("rest", function(c) { return evFrames.car.cdr; });
deFn("reverse", function(c) { var lst = evalLisp(c.car), r = NIL;
	if (!(lst instanceof Cell)) return NIL;
	do { r = new Cell(lst.car, r); lst = lst.cdr; } while (lst instanceof Cell);
	return r;
});
deFn("setq", function(c) {
	var v = NIL;
	while (c instanceof Cell) {
		v = (c.cdr instanceof Cell) ? evalLisp(c.cdr.car) : NIL;
		setSymbolValue(c.car, v);
		c = (c.cdr instanceof Cell) ? c.cdr.cdr : NIL;
	}
	return v;
});

function ascending(a, b) { return ltVal(a, b) ? -1 : eqVal(a, b) ? 0 : 1; }
//function descending(a, b) { return ltVal(a, b) ? 1 : eqVal(a, b) ? 0 : -1; }

var compExprArr = [];	// sort expression stack

function CompExpr(fn) {
	if (! (fn instanceof Symbol)) fn = box(fn);
	this.arg1Sym = box(NIL);
	this.arg2Sym = box(NIL);
	this.expr = new Cell(fn, new Cell(this.arg1Sym, new Cell(this.arg2Sym, NIL)));
}

CompExpr.prototype.evalTrue = function(a, b) {
	this.arg1Sym.cdr = a;	// faster than this.arg1Sym.setVal(a);
	this.arg2Sym.cdr = b;
	return (evalLisp(this.expr) === T);
}

function lispFnOrder(a, b) { return compExprArr[0].evalTrue(a, b) ? -1 : 1; }

deFn("sort", function(c) {
	var lst = evalLisp(c.car);
	if (lst instanceof Cell) {
		var fn = evalLisp(c.cdr.car), arr = [];
		do { arr.push(lst.car); lst = lst.cdr; } while (lst instanceof Cell);
		if (fn === NIL) {
			arr.sort(ascending);
		} else {
			compExprArr.unshift(new CompExpr(fn));
			arr.sort(lispFnOrder);	// roughly twice as slow as 'ascending' (above), if fn is '>'
			compExprArr.shift();
		}
		lst = NIL;
		while (arr.length > 0) lst = new Cell(arr.pop(), lst);
	}
	return lst;
});
deFn("str", function(c) {
	var cv = evalLisp(c.car);
	if (cv instanceof Symbol) {
		var cs = evalLisp(c.cdr.car);
		return (cs === NIL) ? cachedTextParse(cv.valueOf()) :
				parseList(new Source(cv.valueOf(), cs.valueOf()));
	}
	if (cv instanceof Cell) {
		var arr = [];
		do { arr.push(lispToStr(cv.car)); cv = cv.cdr; } while (cv instanceof Cell);
		return newTransSymbol(arr.join(" "));
	}
	if (cv === NIL) return NIL;
	throw new Error(newErrMsg(CELL_EXP, cv));
});
deFn("tail", function(c) {
	var cl = evalLisp(c.car), lst = evalLisp(c.cdr.car);
	if (cl instanceof Cell) {
		var cv = cl, arr = []; while (lst !== NIL) { arr.unshift(lst.car); lst = lst.cdr; }
		if (arr.length == 0) return NIL;
		var sub = []; while (cl !== NIL) { sub.unshift(cl.car); cl = cl.cdr; }
		if (arr.length < sub.length) return NIL;
		for (var i=0; i<sub.length; i++) {
			if (!eqVal(sub[i], arr[i])) return NIL;
		}
		return cv;
	}
	if (cl instanceof Number) {
		cl = Math.round(cl);
		if (cl > 0) {
			var arr = []; while (lst !== NIL) { arr.push(lst); lst = lst.cdr; }
			return arr[Math.max(arr.length - cl, 0)];
		}
		if (cl < 0) {
			do { lst = lst.cdr; if (++cl == 0) return lst; } while (lst !== NIL);
		}
		return NIL;	// cl == 0, or we did not return above
	}
	if (cl === NIL) return NIL;
	throw new Error(newErrMsg(NUM_EXP, cl));
});
deFn("trace", function(c) { var s = evalLisp(c.car), f = evalLisp(s);
	if (f instanceof Cell) {
		setSymbolValue(s, new Cell(f.car, new Cell(new Cell(gSym["$"], new Cell(s, f)), NIL)));
	} else {
		setSymbolValue(s, new Cell(A1, new Cell(new Cell(gSym["$"], new Cell(s,
			new Cell(A1, new Cell(new Cell(gSym["pass"], new Cell(box(f), NIL)), NIL)))), NIL)));
	}
	return s;
});
deFn("untrace", function(c) {
	var s = evalLisp(c.car), f = cdr(cdr(car(cdr(evalLisp(s))))), b = car(cdr(f));
	if (car(b) === gSym["pass"]) f = evalLisp(car(cdr(b)));
	setSymbolValue(s, f);
	return s;
});
deFn("usec", function(c) { return new Number(((new Date()).getTime() - startupMillis) * 1000); });
deFn("yoke", function(c) { if (mk.length === 0) throw new Error(newErrMsg(NOT_MAK));
	var tn = (mk[0].t === NIL);
	do { var h = new Cell(evalLisp(c.car), mk[0].h);
		mk[0].h = h; if (tn) { mk[0].t = h; tn = false; }
		c = c.cdr; } while (c !== NIL);
	return mk[0].h.car;
});
deFn("zero", function(c) {
	do { setSymbolValue(c.car, ZERO); c = c.cdr; } while (c instanceof Cell); return ZERO;
});
// Test: (let (A 3 B 5) ($ f1 (A B) ($ f2 (A B) (* A B))))
// (de foo (X Y . @) (+ X Y (next) (next))) (trace 'foo) (foo 4 5 6 7)	// not yet
deFn("$", function(c) { var lst = c.cdr.car;
	gTrcIndent += " ";
	_stdPrint(gTrcIndent + c.car.name + " :");	// TODO: Handle methods
	while (lst instanceof Cell) { _stdPrint(" " + lispToStr(lst.car.getVal())); lst = lst.cdr; }
	if (lst === A1) {
		lst = evFrames.car.cdr;
		while (lst instanceof Cell) { _stdPrint(" " + lispToStr(lst.car)); lst = lst.cdr; }
	}
	_stdPrint("\n");
	var res = prog(c.cdr.cdr);
	_stdPrint(gTrcIndent + c.car.name + " = " + lispToStr(res) + "\n");
	gTrcIndent = gTrcIndent.substring(1);
	return res;
});
deFn("+", function(c) { var t = 0;
	do { var v = evalLisp(c.car); if (v === NIL) return NIL;
		t += numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);
});
deFn("-", function(c) { var t = evalLisp(c.car);
	if (t === NIL) return NIL;
	t = numeric(t); c = c.cdr;
	if (c === NIL) return new Number(-t);
	do { var v = evalLisp(c.car); if (v === NIL) return NIL;
		t -= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);
});
deFn("*", function(c) { var t = 1;
	do { var v = evalLisp(c.car); if (v === NIL) return NIL;
		t *= numeric(v); c = c.cdr; } while (c instanceof Cell); return new Number(t);
});
deFn("/", function(c) { return div(c, function(a, b) { return a / b; }); });	// floating point division
deFn("/t", function(c) { return div(c, function(a, b) { var d = a / b;
	return (d >= 0) ? Math.floor(d) : Math.ceil(d); }); });	// truncated division
deFn("=", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (!eqVal(cv, dv)) return NIL; }; return T; });
deFn("==", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) { d = d.cdr; dv = evalLisp(d.car); if (cv !== dv) return NIL; }; return T; });
deFn("<", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) {
		d = d.cdr; dv = evalLisp(d.car); if (!ltVal(cv, dv)) return NIL;
		cv = dv;
	}; return T;
});
deFn("<=", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) {
		d = d.cdr; dv = evalLisp(d.car); if (ltVal(dv, cv)) return NIL;
		cv = dv;
	}; return T;
});
deFn(">", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) {
		d = d.cdr; dv = evalLisp(d.car); if (!ltVal(dv, cv)) return NIL;
		cv = dv;
	}; return T;
});
deFn(">=", function(c) { var cv = evalLisp(c.car), d = c, dv;
	while (d.cdr !== NIL) {
		d = d.cdr; dv = evalLisp(d.car); if (ltVal(cv, dv)) return NIL;
		cv = dv;
	}; return T;
});
deFn(";", function(c) { return getAlg(new Cell(evalLisp(c.car), c.cdr)); });

function evalDef(def, inExprLst) {
	//alert("evalDef: " + lispToStr(def.cdr) + ", " + lispToStr(inExprLst));
	var locVars = null, locSym = null, evFrame = null;
	if (def.car instanceof Symbol) {
		if (def.car === A1) {
			evFrame = new Cell(NIL, evalArgs(inExprLst));
			evFrames = new Cell(evFrame, evFrames);	// pushing evFrame onto evFrames
		} else {
			locSym = def.car;
			locSym.pushValue(inExprLst);	// Binding unevaluated list to a single symbol
		}
	} else {
		locVars = def.car;
		var evArgs = evalArgs(inExprLst);
		// Saving old symbol values and binding new values ...
		while (locVars instanceof Cell) {
			//if (!confirm("locVars: " + lispToStr(locVars.car))) throw new Error("evalDef aborted");
			locVars.car.pushValue(evArgs.car);
			locVars = locVars.cdr;
			evArgs = evArgs.cdr;
		}
		locVars = def.car;
	}
	// Executing body ...
	var res = prog(def.cdr);
	// Restoring previous symbol values ...
	if (locSym instanceof Symbol) locSym.popValue();
	if (locVars instanceof Cell) {
		while (locVars instanceof Cell) { locVars.car.popValue(); locVars = locVars.cdr; }
	}
	if (evFrame instanceof Cell) evFrames = evFrames.cdr;		// popping evFrame
	return res;
}

function evalLisp(lst) {
	if (lst instanceof Symbol) return lst.cdr;
	if (lst instanceof Cell) {
		if (typeof lst.car.cdr === "function") {
			return lst.car.cdr(lst.cdr);
		}
		if (lst.car instanceof Symbol) {
			if (lst.car.cdr === NIL) throw new Error(newErrMsg(UNDEF, lst.car));
			return evalDef(lst.car.cdr, lst.cdr);
		}
		if ((lst.car.car === QUOTE) && (lst.car.cdr instanceof Cell)) {
			return evalDef(lst.car.cdr, lst.cdr);
		}
		if (lst.car instanceof Number) return lst;
		throw new Error(newErrMsg(EXEC_OR_NUM_EXP, lst.car));
	}
	return lst;		// a number, or text
}

function evalArgs(lst) {
	if (lst === NIL) return NIL;
	var resLst = new Cell(NIL, NIL);	// to become new list of evaluation results
	var res = resLst;
	do {
		//alert("evalArgs: " + lispToStr(lst.car));
		res.car = evalLisp(lst.car);
		lst = lst.cdr;
		if (lst instanceof Cell) {
			res.cdr = new Cell(NIL, NIL);
			res = res.cdr;
		}
	} while (lst instanceof Cell);
	return resLst;
}

function loadLisp(fileUrl) {
	gTrans = {};
	var res = parseList(new Source(getFileSync(fileUrl)), true);
	gTrans = {};
	//alert("loadLisp: " + lispToStr(res));
	return res;
}

function loadJavaScript(fileUrl) {
	return newTransSymbol(eval(getFileSync(fileUrl)).toString());
}

function _stdPrint(text) {
	if (typeof stdPrint === "function") stdPrint(text)
	else // when function stdPrint is not available in front end
	if (!confirm("_stdPrint:\n" + text)) throw new Error("_stdPrint aborted");
}

function _warn(msg) {
	if (typeof warn === "function") warn(msg);
}

/*
 * Objects of the Params class are used to deliver evaluated parameter values to
 * JavaScript functions. Some functions take an optional default input value.
 */
function Params(lst) {
	this.lst = lst;
}

Params.prototype.any = function() {
	var val = null;
	if (this.lst !== NIL) {
		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
	}
	return val;
}

Params.prototype.bool = function(val) {
	if (this.lst !== NIL) {
		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
	}
	if ((val === NIL) || (val === T)) return val.bool;
	throw new Error(newErrMsg(BOOL_EXP, val));
}

Params.prototype.natObj = function() {
	if (this.lst !== NIL) {
		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
	}
	if ((val instanceof Symbol) && (val.obj !== undefined)) return val.obj;
	throw new Error(newErrMsg(BOXNAT_EXP, val));
}

Params.prototype.num = function(val) {
	if (this.lst !== NIL) {
		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
	}
	if (val instanceof Number) return val;
	throw new Error(newErrMsg(NUM_EXP, val));
}

Params.prototype.optNum = function() {
	if (this.lst !== NIL) {
		var val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
		if (val instanceof Number) return val;
		throw new Error(newErrMsg(NUM_EXP, val));
	}
	return null;
}

Params.prototype.str = function(val) {
	if (this.lst !== NIL) {
		val = evalLisp(this.lst.car); this.lst = this.lst.cdr;
	}
	if (val instanceof Symbol) return val.valueOf();
	throw new Error(newErrMsg(SYM_EXP, val));
}

function symbolRefUrl(symbolName) {
	if (symbolName == "NIL") {
		return "ref.html#nilSym";
	} else if (symbolName.match(/^[a-zA-Z_]/)) {
		return "ref" + symbolName.substring(0, 1).toUpperCase() + ".html#" + symbolName;
	} else if (symbolName.match(/^\*[a-zA-Z_]/)) {
		return "ref" + symbolName.substring(1, 2) + ".html#" + symbolName;
	} else {
		return "ref_.html#" + symbolName;
	}
}



	


</script>

<script type="text/javascript">
/* 26nov10jk
 * (c) Jon Kleiser
 * http://folk.uio.no/jkleiser/pico/emuLisp/src/js.js
 */

/* 26nov10jk
 * (c) Jon Kleiser
 */

getSymbol("js:E").setVal(new Number(Math.E));
getSymbol("js:PI").setVal(new Number(Math.PI));
getSymbol("js:Doc").setVal(boxNativeObject(document));
getSymbol("js:Win").setVal(boxNativeObject(window));

deFn("js:alert", function(c) { var arr = [], v = NIL;
	c = evalArgs(c); while (c !== NIL) { v = c.car; arr.push(valueToStr(v)); c = c.cdr; }
	alert(arr.join("\n")); return v;
});

deFn("js:confirm", function(c) { var arr = [];
	c = evalArgs(c); while (c !== NIL) { arr.push(valueToStr(c.car)); c = c.cdr; }
	return confirm(arr.join("\n")) ? T : NIL;
});

// (js:prompt "What's your age?" "fiftysomething")
deFn("js:prompt", function(c) {
	var r = prompt(valueToStr(evalLisp(c.car)), valueToStr(evalLisp(c.cdr.car)));
	return (r !== null) ? newTransSymbol(r) : NIL;
});

deFn("js:getElementById", function(c) {
	var doc = document, elem = doc.getElementById(evalLisp(c.car).valueOf());
	return (elem != null) ? boxNativeObject(elem) : NIL;
});

// (js:onEventLisp (js:getElementById "parGuide") "click" (prinl "A click on " js:Target))
deFn("js:onEventLisp", function(c) {
	var objBox = evalLisp(c.car), obj = objBox.obj, evtType = evalLisp(c.cdr.car).valueOf();
	obj[evtType + "Lisp"] = c.cdr.cdr;	// Lisp code to execute on event
	if (c.cdr.cdr != NIL) {
		// Installing event handler
		obj["on" + evtType] = function(evt) {
			try {
				var ts = getSymbol("js:Target"); ts.pushValue(objBox);
				var es = getSymbol("js:Event"); es.pushValue(boxNativeObject(evt ? evt : window.event));
				prog(obj[evtType + "Lisp"]);
				ts.popValue();
				es.popValue();
			} catch (e) { alert(evtType + "Lisp: " + e); }
		};
	} else {
		// Removing event handler
		obj["on" + evtType] = null;
	}
	return objBox;
});


// (js:clearInterval intervalId)
deFn("js:clearInterval", function(c) { return clearInterval(evalLisp(c.car)) ? T : NIL; });

// (js:clearTimeout timeoutId)
deFn("js:clearTimeout", function(c) { return clearTimeout(evalLisp(c.car)) ? T : NIL; });

/* Most browsers seem to support the form of setInterval(f,t,p) and setTimeout(f,t,p) where
   the first parameter is of type function, and the parameters after the second are parameters
   to that function. If your browser requires the first parameter to be of type string, then
   you can use the two slightly longer alternatives.
*/
// (js:setIntervalLisp (prinl "ping") 5000)
deFn("js:setIntervalLisp", function(c) {
	var id = setInterval(evalLisp, evalLisp(c.cdr.car), c.car);
	return new Number(id);
});
/*
deFn("js:setIntervalLisp", function(c) {
	var str = lispToStr(c.car);
	gParseCache[str] = c.car;
	var jsStr = "evalLisp(gParseCache[\"" + str.replace(/"/g, "\\\"") + "\"])";
	var id = setInterval(jsStr, evalLisp(c.cdr.car));
	return new Number(id);
});
*/
// (js:setTimeoutLisp (prinl "ping") 3000)
deFn("js:setTimeoutLisp", function(c) {
	var id = setTimeout(evalLisp, evalLisp(c.cdr.car), c.car);
	return new Number(id);
});
/*
deFn("js:setTimeoutLisp", function(c) {
	var str = lispToStr(c.car);
	gParseCache[str] = c.car;
	var jsStr = "evalLisp(gParseCache[\"" + str.replace(/"/g, "\\\"") + "\"])";
	var id = setTimeout(jsStr, evalLisp(c.cdr.car));
	return new Number(id);
});
*/


// Some reflection stuff similar to the 'java' and 'public' functions in ErsatzLisp

function applyConstructor(ctor, args) {
	switch (args.length) {
		case 0: return new ctor();
		case 1: return new ctor(args[0]);
		case 2: return new ctor(args[0], args[1]);
		case 3: return new ctor(args[0], args[1], args[2]);
		// add more cases if you like
	}
	var jsStr = "new ctor(args[0]";
	for (var i=1; i<args.length; i++) jsStr += ",args[" + i + "]";
	jsStr += ")";
	return eval(jsStr);
}

// First a couple of conversion functions ...
function lispToNativeData(vl) {
	if (vl instanceof Number) return vl.valueOf();	// primitive value required some places
	if (vl instanceof Symbol) {
		if (vl.obj !== undefined) return vl.obj;
		return vl.toValueString();
	}
	if ((vl === NIL) || (vl === T)) return vl.bool;
	return undefined;
}

function nativeToLispData(vn) {
	if ((typeof vn == "number") || (vn instanceof Number)) return new Number(vn);
	if (vn instanceof String) vn = vn.valueOf();
	if (typeof vn == "string") return (vn == "") ? NIL : newTransSymbol(vn);
	if (vn instanceof Boolean) vn = vn.valueOf();
	if ((vn === false) || (vn === null)) return NIL;
	if (vn === true) return T;
	return boxNativeObject(vn);
}

function lispParamsToArray(c) {
	var arr = [];
	while (c !== NIL) {
		arr.push(lispToNativeData(evalLisp(c.car))); c = c.cdr;
	}
	return arr;
}

// (js:eval "2+3")
deFn("js:eval", function(c) { return nativeToLispData(eval(valueToStr(evalLisp(c.car)))); });

// (setq *MyArr (js:obj "Array" T)) (js:put *MyArr "2" "X") (list (js:get *MyArr 2) (js:get *MyArr "length"))
// (js:obj (js:obj "Date" T) "getMinutes")
// (js:obj (js:obj "Date" T 2010 10 20 15 15) "toString")
// (let D (js:obj "Date" T) (js:obj D "setHours" 16 30) (js:obj D "toString"))
deFn("js:obj", function(c) {
	var obj = evalLisp(c.car), msg = evalLisp(c.cdr.car);
	if (msg === T) {
		if (obj instanceof Symbol) {
			var ctor = eval(obj.valueOf());
			//if (typeof ctor != "function") throw new Error(newErrMsg(JS_CTORNAME_EXP, obj.valueOf()));
			// typeof Date == "function", but typeof Image == "object" !
			return nativeToLispData(applyConstructor(ctor, lispParamsToArray(c.cdr.cdr)));
		}
		throw new Error(newErrMsg(SYM_EXP, obj));
	}
	if ((obj instanceof Symbol) && (obj.obj instanceof Object)) {
		var fn = obj.obj[lispToNativeData(msg)];
		return nativeToLispData(fn.apply(obj.obj, lispParamsToArray(c.cdr.cdr)));
	}
	throw new Error(newErrMsg(BOXNAT_EXP, obj));
});

function jsGetPutAlg(c, put) {
	var obj = evalLisp(c.car), k;
	if ((obj instanceof Symbol) && (obj.obj !== undefined)) {
		obj = obj.obj; c = c.cdr;
		do {
			k = lispToNativeData(evalLisp(c.car));
			c = c.cdr;
			if (put && ! (c.cdr instanceof Cell)) {
				var vl = evalLisp(c.car), vn = lispToNativeData(vl);
				obj[k] = vn;	// handles both maps/keys and arrays/indices
				return vl;
			}
			obj = obj[k];	// handles both maps/keys and arrays/indices
		} while (c instanceof Cell);
		return nativeToLispData(obj);
	}
	throw new Error(newErrMsg(BOXNAT_EXP, obj));
}

// (js:get js:Doc "body" "nodeName")
deFn("js:get", function(c) { return jsGetPutAlg(c, false); });

// (js:put js:Doc "body" "contentEditable" "true")
deFn("js:put", function(c) { return jsGetPutAlg(c, true); });



</script>

	<script type="text/javascript">
var dcons, consLog, newcode;
var initialLogScrollWidth = null;
var currentPrintRec = null;
var prevNewcode = "";
var savedNewcodes = [];	// maybe

var consPrefs = {
	codeGuidesEnabled: true,
	evaluateOnReturn: true,
	newcodeClearAfterEvaluation: false,
	newcodeFocusAfterEvaluation: true,
	closeWindowWarningEnabled: false
};

function copyOldToNewcode(evt) {
	savedNewcodes.push(newcode.value);
	newcode.focus();
	if (evt.shiftKey) {
		newcode.value += " " + this.firstChild.nodeValue;	// append
	} else {
		newcode.value = this.firstChild.nodeValue;			// replace
	}
	prevNewcode = "";
	updateCodeGuides();
}

function appendToHistory(styleclass, text) {
	currentPrintRec = null;
	var pre = document.createElement("pre");
	pre.setAttribute("class", styleclass);
	var textNode = document.createTextNode(text);
	pre.appendChild(textNode);
	if (styleclass == "oldcode") pre.onclick = copyOldToNewcode;
	consLog.appendChild(pre);
	consLog.scrollTop = consLog.scrollHeight;
	if (consLog.scrollWidth > initialLogScrollWidth) {
		pre.style.width = "" + (consLog.scrollWidth - 8) + "px";
	}
	return {elem: pre, node: textNode};
}

function stdPrint(text) {
	if (currentPrintRec == null) {
		currentPrintRec = appendToHistory("print", text);
	} else {
		currentPrintRec.node.nodeValue += text;
	}
	var len = text.length;
	if (len > 0) {
		currentPrintRec.elem.setAttribute("class",
			(text.charAt(len - 1) === "\n") ? "println" : "print");
	}
}

function warn(msg) {
	appendToHistory("warning", msg);
}

function drawLisp(ctx, c) {
	var  segx = 16, dy = 16, c0 = c, h = 0;
	if (c instanceof Cell) {
		while (c instanceof Cell) {
			ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(segx, 0); ctx.stroke();
			ctx.save();
			ctx.translate(segx, 0);
			var cy = drawLisp(ctx, c.car);
			h += cy;
			ctx.restore();
			c = c.cdr;
			if (c !== NIL) {
				ctx.translate(0, cy);
				ctx.beginPath(); ctx.moveTo(0, 0); ctx.lineTo(0, -h); ctx.stroke();
				if (c === c0) {
					// Indicating circular list ...
					var up = -dy/4;
					ctx.beginPath(); ctx.moveTo(0, up*2); ctx.lineTo(segx/2, up*2); ctx.stroke();
					ctx.beginPath(); ctx.moveTo(0, up); ctx.lineTo(segx/2, up); ctx.stroke();
					h += dy;
					break;
				}
			}
		}
		if ((c !== NIL) && (c !== c0)) {
			ctx.fillText(lispToStr(c), -3, 12);
			h += dy * 1.7;
		}
	} else {
		ctx.fillText(lispToStr(c), 4, 3);
		h = dy;
	}
	return h;
}

function hideMonitorIfCanvasNotSupported() {
	var cv = document.getElementById("monView");
	if (cv && cv.getContext) return;
	var mon = document.getElementById("monitor");
	mon.style.display = "none";
}

function clearMonitorView() {
	var cv = document.getElementById("monView");
	if (cv && cv.getContext) {
		cv.width = cv.width;		// resetting the canvas
		cv.getContext("2d").clearRect(0, 0, cv.width, cv.height);
	}
}

function updateMonitorView(lispValue) {
	var cv = document.getElementById("monView");
	if (cv && cv.getContext) {
		var ctx = cv.getContext("2d");
		if (lispValue != null) {
			ctx.save();
			ctx.strokeStyle = "#933";
			ctx.lineWidth = 1;
			ctx.fillStyle = "#000";
			ctx.font = "12px Arial, sans-serif";
			ctx.translate(16.5, 16.5);
			drawLisp(ctx, lispValue);
			ctx.restore();
		}
	}
}

function getValueToMonitor() {
	try {
		var mScr = document.getElementById("monitorobject").value;
		if ((mScr != null) && mScr.match(/\S/)) return prog(cachedTextParse(mScr));
	} catch (e) { alert("getValueToMonitor: " + e); }
	return null;
}

var dbg_e;
function evalExpr() {
	if (document.getElementById("clearMonView").checked) clearMonitorView();
	appendToHistory("oldcode", newcode.value);
	try {
		var result = prog(parseList(new Source(newcode.value)));
		A3.setVal(A2.getVal()); A2.setVal(A1.getVal()); A1.setVal(result);
		appendToHistory("result", lispToStr(result));
	} catch (e) {dbg_e = e;
		if (e.lineNumber === undefined) appendToHistory("error", e.message)
		else appendToHistory("error", e.message + "\nLine " + e.lineNumber);
	}
	if (consPrefs.newcodeClearAfterEvaluation) newcode.value = "";
	if (consPrefs.newcodeFocusAfterEvaluation) newcode.focus();
	updateMonitorView(getValueToMonitor());
}

function refreshMonitor() {
	clearMonitorView();
	updateMonitorView(getValueToMonitor());
}

var numFilesToLoad;

function handleFileDrop(evt) {
	evt.preventDefault();
	if (typeof window.FileReader === "function") {
		var srcFiles = [];
		for (var i=0; i<evt.dataTransfer.files.length; i++) {
			var f = evt.dataTransfer.files[i];
			if (f.name.match(/\.l$/) || f.name.match(/\.js$/)) {
				srcFiles.push(f);
			} else {
				warn(f.name + " is probably not a Lisp or JavaScript file");
			}
		}
		numFilesToLoad = srcFiles.length;
		for (var i=0; i<srcFiles.length; i++) {
			var reader = new FileReader();
			reader.srcFile = srcFiles[i];
			reader.onload = function(rEvt) {
				try {
					var fileName = rEvt.target.srcFile.name, dropResult = "(unknown result)";
					appendToHistory("filedrop", "loading: " + fileName);
					if (fileName.match(/\.l$/)) {
						// Lisp file
						dropResult = lispToStr(prog(parseList(new Source(rEvt.target.result), true)));
					} else if (fileName.match(/\.js$/)) {
						// JavaScript file
						dropResult = eval(rEvt.target.result).toString();
					} else {
						dropResult = "Why did this happen?";	// very unlikely
					}
					if (--numFilesToLoad == 0) appendToHistory("result", dropResult);
				} catch (e) {
					if (e.lineNumber === undefined) appendToHistory("error", e.message)
					else appendToHistory("error", e.message + "\nLine " + e.lineNumber);
				}
			}
			reader.readAsText(srcFiles[i]);
		}
	} else {
		warn("File Drop not supported by this browser");
	}
	return false;
}

function newcodeCheck(srcObj) {
	var newMod = srcObj.src;
	if (newMod.match(/^[\.\s]*\)/)) throw new Error(BAD_INPUT);
	// Replacing "()" with "NIL" ...
	newMod = newMod.replace(/\(\s*\)/g, " NIL ");
	// Removing dots and spaces before ")", removing trailing dots and spaces ...
	newMod = newMod.replace(/[\.\s]*\)/g, ")").replace(/[\.\s]*$/, "");
	//alert("newcodeCheck: " + srcObj.src + ", " + newMod);
	var newParMatch = newMod.match(/\)*$/);
	var newParCount = newParMatch ? newParMatch[0].length : 0;
	var tmpLisp = parseList(srcObj, false, true);
	if (false) {
		getSymbol("*Newcode").setVal(tmpLisp);
		refreshMonitor();
	}
	var parseResult = lispToStr(tmpLisp);
	var parseParMatch = parseResult.match(/\)*$/);
	var parseParCount = parseParMatch ? parseParMatch[0].length : 0;
	var parBalance = newParCount - parseParCount + ((newMod == "") || newMod.match(/\($/) ? 0 : 1);
	//stdPrint(newMod + " -> " + parseResult + ", " + newParCount + ", " + parseParCount + "\n");
	return parBalance;
}

function openDocWindow(evt) {
	var docUrl = "http://software-lab.de/doc/";
	window.open(docUrl + symbolRefUrl(this.symbol.name), "refdoc",
		"fullscreen=no, toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes, " +
		"directories=no, location=no, width=980, height=600");
}

function printSymbolValue(evt) {
	stdPrint(lispToStr(this.symbol.getVal()) + "\n");
	newcode.focus();
}

function updateCodeGuides() {
	if (! consPrefs.codeGuidesEnabled) return;
	var srcObj = new Source(newcode.value).withTrace();
	var parGuide = document.getElementById("parGuide").firstChild;
	try {
		var parHint = "";
		var parBalance = newcodeCheck(srcObj);	// will call parseList(srcObj, ...)
		if (parBalance == 0) {
			parHint = "★";
		} else if (parBalance < 0) {
			for (var i=0; i>parBalance; i--) parHint += "(";	// one or more )'s needed
		} else {
			for (var i=0; i<parBalance; i++) parHint += ")";	// probably too many )'s
		}
		parGuide.nodeValue = parHint;
	} catch (e) { parGuide.nodeValue = e.toString(); }
	
	var symGuide = document.getElementById("symGuide"), symText = symGuide.firstChild;
	try {
		if (newcode.value != prevNewcode) {
			symGuide.onclick = function() { newcode.focus(); };
			symGuide.className = "nosymbol";
			symGuide.title = null;
			var sName = "☆";
			for (var ni=newcode.value.length-1, pi=prevNewcode.length-1; ni >= 0; ni-- & pi--) {
				if ((pi < 0) || (newcode.value[ni] != prevNewcode[pi])) {
					var itemInd = srcObj.getSymbolBeforePos(ni + 1);
					if (itemInd != null) {
						sName = itemInd.item.name;
						symGuide.symbol = itemInd.item;
						if (typeof itemInd.item.cdr === "function") {
							if (sName.match(/\w+\:\w+/)) {
								symGuide.title = "No ref. yet for this function";
							} else {
								symGuide.onclick = openDocWindow;
								symGuide.className = "builtin";
								symGuide.title = "Open ref. in new window";
							}
						} else {
							symGuide.onclick = printSymbolValue;
							symGuide.className = "othersymbol";
							symGuide.title = "Print symbol value";
						}
					}
					break;
				}
			}
			symText.nodeValue = sName;
			prevNewcode = newcode.value;
		}
	} catch (e) { symText.nodeValue = e.message + ", " + e.lineNumber; }
}

function newcodeKeyup(evt) {
	updateCodeGuides();
	return true;
}

function newcodeKeypress(evt) {
	evt = evt ? evt : window.event;
	if (consPrefs.evaluateOnReturn && (evt.keyCode == 13) && ! evt.shiftKey) {
		evt.preventDefault();
		evalExpr();
		return false;
	}
	return true;
}

function prefCheckboxClick(evt) {
	consPrefs[this.id] = this.checked;
	if (this.id == "closeWindowWarningEnabled") {
		window.onbeforeunload = consPrefs.closeWindowWarningEnabled ? closeWindowMsg : null;
	}
}

function prefInputChange(evt) {
	eval(this.id.replace(/\-/g, ".") + "='" + this.value + "'");
}

function showHidePrefs(visibleOrHidden) {
	try {
		if (visibleOrHidden == "visible") {
			var checkboxArr = document.querySelectorAll("div#prefs input[type='checkbox']");
			for (var i=0; i<checkboxArr.length; i++) {
				var cb = checkboxArr[i];
				cb.checked = consPrefs[cb.id];
				cb.onclick = prefCheckboxClick;
			}
			var inputArr = document.querySelectorAll("div#prefs input[type='text']");
			for (var i=0; i<inputArr.length; i++) {
				var inElem = inputArr[i];
				inElem.value = eval(inElem.id.replace(/\-/g, "."));
				inElem.onchange = prefInputChange;
			}
		} else if (consPrefs.newcodeFocusAfterEvaluation) {
			newcode.focus();
		}
		document.getElementById("prefs").style.visibility = visibleOrHidden;
	} catch (e) { alert("showHidePrefs: " + e); }
}

function openMainWindow() {
	window.open("http://folk.uio.no/jkleiser/pico/emuLisp/index.html", "EmuLispMain", "resizable=yes, scrollbars=yes, location=yes");
}

function closeWindowMsg(evt) {
	evt = evt ? evt : window.event;
	var msg = "Leaving this page will do away with your current EmuLisp data.";
	evt.returnValue = msg;
	return msg;
}

function init() {
	var small = (screen.height < 400);
	window.name = "EmuLispConsole";
	dcons = document.getElementById("dcons");
	dcons.ondragover = function() { return false; }
	dcons.ondragend = function() { return false; }
	dcons.ondrop = handleFileDrop;
	dcons.style.fontSize = "15px";
	dcons.style.fontFamily = "monospace";
	consLog = document.getElementById("log");
	consLog.style.height = small ? "200px" : "400px";
	newcode = document.getElementById("newcode");
	newcode.focus();
	if (typeof newcode.addEventListener == "function") {
		newcode.addEventListener("keypress", newcodeKeypress, false);
		newcode.addEventListener("keyup", newcodeKeyup, false);
	}
	initialLogScrollWidth = document.getElementById("log").scrollWidth;
	updateCodeGuides();
	hideMonitorIfCanvasNotSupported();
	if (consPrefs.closeWindowWarningEnabled) window.onbeforeunload = closeWindowMsg;
}
	</script>
</head>
<body onload="init();">
<div id="head">
	<span id="presentation"><em>EmuLisp</em> - emulating a tiny subset of PicoLisp</span>
	<img id="infosymbol" src="images/info.png"
		title="Open Main Page in sep. window/tab" alt="info" onclick="openMainWindow();">
	<input type="button" value="Prefs" onclick="showHidePrefs('visible');" />
</div>
<div id="main">
	<div id="dcons">
		<div id="log"></div>
		<textarea id="newcode" rows="6"></textarea>
		<span id="version">EmuLisp Console 28-Mar-2011</span>
		<span id="controls">
			<span id="symGuide">☆</span>
			<span id="parGuide">☆</span>
			<input type="button" value="Evaluate" onclick="evalExpr();" />
		</span>
	</div>
	<div id="monitor">
		Expression to monitor: <input id="monitorobject" type="text" value="@" /><br />
		<canvas id="monView" width="478" height="478"
			onclick="refreshMonitor();" title="Click to refresh monitor">
			Monitoring requires canvas support.
		</canvas><br />
		<span style="float: right">
			<input id="clearMonView" type="checkbox" checked />
			<label for="clearMonView">Clear monitor view before evaluation</label>
		</span>
	</div>
</div>
<div id="prefs">
	<p class="paneHead"><span class="closebox" onclick="showHidePrefs('hidden');">X</span></p>
	<p class="pref"><input id="codeGuidesEnabled" type="checkbox" />
		<label for="codeGuidesEnabled">Enable Code Guides</label></p>
	<p class="pref"><input id="evaluateOnReturn" type="checkbox" />
		<label for="evaluateOnReturn">Evaluate on Return</label></p>
	<p class="pref"><input id="newcodeClearAfterEvaluation" type="checkbox" />
		<label for="newcodeClearAfterEvaluation">Clear Input after Evaluation</label></p>
	<p class="pref"><input id="newcodeFocusAfterEvaluation" type="checkbox" />
		<label for="newcodeFocusAfterEvaluation">Focus Input after Evaluation</label></p>
	<p class="pref"><input id="closeWindowWarningEnabled" type="checkbox" />
		<label for="closeWindowWarningEnabled">Warning when Closing Window</label></p>
	<p class="pref"><label for="dcons-style-fontSize">Console Font Size:</label>
		<input id="dcons-style-fontSize" type="text" size="5" /></p>
	<p class="pref"><label for="dcons-style-fontFamily">Console Font Family:</label>
		<input id="dcons-style-fontFamily" type="text" size="10" /></p>
	<p class="pref"><label for="consLog-style-height">Height of Log:</label>
		<input id="consLog-style-height" type="text" size="5" /></p>
</div>
</body>
</html>
