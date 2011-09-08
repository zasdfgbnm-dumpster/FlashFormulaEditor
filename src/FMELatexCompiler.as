package
{
	import FMEUnits.FMEComposeds.*;
	import FMEUnits.FMESvgChars.*;
	public class FMELatexCompiler
	{
		private static var charClasses:Object = {
			"a":FMESvgChar_a,  "b":FMESvgChar_b,  "c":FMESvgChar_c,  "d":FMESvgChar_d,  "e":FMESvgChar_e,
			"f":FMESvgChar_f,  "g":FMESvgChar_g,  "h":FMESvgChar_h,  "i":FMESvgChar_i,  "j":FMESvgChar_j,
			"k":FMESvgChar_k,  "l":FMESvgChar_l,  "m":FMESvgChar_m,  "n":FMESvgChar_n,  "o":FMESvgChar_o,
			"p":FMESvgChar_p,  "q":FMESvgChar_q,  "r":FMESvgChar_r,  "s":FMESvgChar_s,  "t":FMESvgChar_t,
			"u":FMESvgChar_u,  "v":FMESvgChar_v,  "w":FMESvgChar_w,  "x":FMESvgChar_x,  "y":FMESvgChar_y,
			"z":FMESvgChar_z,  "A":FMESvgChar__A, "B":FMESvgChar__B, "C":FMESvgChar__C, "D":FMESvgChar__D,
			"E":FMESvgChar__E, "F":FMESvgChar__F, "G":FMESvgChar__G, "H":FMESvgChar__H, "I":FMESvgChar__I,
			"J":FMESvgChar__J, "K":FMESvgChar__K, "L":FMESvgChar__L, "M":FMESvgChar__M, "N":FMESvgChar__N,
			"O":FMESvgChar__O, "P":FMESvgChar__P, "Q":FMESvgChar__Q, "R":FMESvgChar__R, "S":FMESvgChar__S,
			"T":FMESvgChar__T, "U":FMESvgChar__U, "V":FMESvgChar__V, "W":FMESvgChar__W, "X":FMESvgChar__X,
			"Y":FMESvgChar__Y, "Z":FMESvgChar__Z,
			"0":FMESvgChar_0,  "1":FMESvgChar_1,  "2":FMESvgChar_2,  "3":FMESvgChar_3, 
			"4":FMESvgChar_4,  "5":FMESvgChar_5,  "6":FMESvgChar_6,  "7":FMESvgChar_7, 
			"8":FMESvgChar_8,  "9":FMESvgChar_9,
			"\\sim":FMESvgChar_tilde,				"!":FMESvgChar_exclamation,			"\\#":FMESvgChar_pound,				"\\$":FMESvgChar_dollar,	
			"\\%":FMESvgChar_percent,				"\\&":FMESvgChar_and,				"*":FMESvgChar_star,	
			"("	:FMESvgChar_open_paren,				")":FMESvgChar_close_paren,			"+":FMESvgChar_plus,	
			"-"	:FMESvgChar_minus,					"=":FMESvgChar_equals,				"[":FMESvgChar_open_bracket,		"]":FMESvgChar_close_bracket,	
			"\\backslash":FMESvgChar_backslash,	"\\{":FMESvgChar_open_curly,		"\\}":FMESvgChar_close_curly,		"|":FMESvgChar_vertical_bar,	
			";":FMESvgChar_semicolon,				"'":FMESvgChar_apostrophe,			":":FMESvgChar_colon,				"\"":FMESvgChar_double_quotation,	
			",":FMESvgChar_comma,					".":FMESvgChar_dot,					"/":FMESvgChar_slash,				"<":FMESvgChar_less_than,	
			">":FMESvgChar_more_than,				"?":FMESvgChar_question,			"\\pm":FMESvgChar_plus_minus,		"\\times":FMESvgChar_times,	
			"\\div":FMESvgChar_divide,				"\\neq":FMESvgChar_not_equal,		"\\equiv":FMESvgChar_equivalent,	"\\approx":FMESvgChar_approx_equal,	
			"\\le":FMESvgChar_less_eq,				"\\ge":FMESvgChar_more_eq,			"\\infty":FMESvgChar_infinity,		"\\to":FMESvgChar_arrow,	
			"\\because":FMESvgChar_because,		"\\therefore":FMESvgChar_hence,	"\\cdot":FMESvgChar_mid_dot,		"\\partial":FMESvgChar_partial,
			"\\in":FMESvgChar_in, 					"\\notin":FMESvgChar_notin,		"\\subset":FMESvgChar_subset, 		"\\subseteq":FMESvgChar_subseteq, 
			"\\subsetneq":FMESvgChar_subsetneq, 	"\\cup":FMESvgChar_cup, 			"\\cap":FMESvgChar_cap, 			"\\emptyset":FMESvgChar_emptyset, 
			"\\nabla":FMESvgChar_nabla, 			"\\propto":FMESvgChar_propto, 		"\\neg":FMESvgChar_neg, 			"\\forall":FMESvgChar_forall, 
			"\\Rightarrow":FMESvgChar__Rightarrow,"\\Leftrightarrow":FMESvgChar__Leftrightarrow, 						"\\exists":FMESvgChar_exists,
			"\\mapsto":FMESvgChar_mapsto,			"\\hbar":FMESvgChar_hbar,
			"\\alpha":FMESvgChar_alpha, 			"\\beta":FMESvgChar_beta, 			"\\gamma":FMESvgChar_gamma, 		"\\delta":FMESvgChar_delta, 
			"\\epsilon":FMESvgChar_epsilon,		"\\zeta":FMESvgChar_zeta,			"\\eta":FMESvgChar_eta, 			"\\theta":FMESvgChar_theta, 
			"\\iota":FMESvgChar_iota,				"\\kappa":FMESvgChar_kappa, 		"\\lambda":FMESvgChar_lambda, 		"\\mu":FMESvgChar_mu, 
			"\\nu":FMESvgChar_nu, 					"\\xi":FMESvgChar_xi, 				"\\omicron":FMESvgChar_omicron, 	"\\pi":FMESvgChar_pi, 
			"\\rho":FMESvgChar_rho,				"\\sigma":FMESvgChar_sigma, 		"\\tau":FMESvgChar_tau, 			"\\upsilon":FMESvgChar_upsilon, 
			"\\phi":FMESvgChar_phi, 				"\\chi":FMESvgChar_chi, 			"\\psi":FMESvgChar_psi, 			"\\omega":FMESvgChar_omega, 
			"\\Alpha":FMESvgChar__Alpha, 			"\\Beta":FMESvgChar__Beta, 		"\\Gamma":FMESvgChar__Gamma, 		"\\Delta":FMESvgChar__Delta, 
			"\\Epsilon":FMESvgChar__Epsilon, 		"\\Zeta":FMESvgChar__Zeta, 		"\\Eta":FMESvgChar__Eta, 			"\\Theta":FMESvgChar__Theta, 
			"\\Iota":FMESvgChar__Iota, 			"\\Kappa":FMESvgChar__Kappa, 		"\\Lambda":FMESvgChar__Lambda, 	"\\Mu":FMESvgChar__Mu, 
			"\\Nu":FMESvgChar__Nu, 					"\\Xi":FMESvgChar__Xi, 				"\\Omicron":FMESvgChar__Omicron, 	"\\Pi":FMESvgChar__Pi, 
			"\\Rho":FMESvgChar__Rho,				"\\Sigma":FMESvgChar__Sigma, 		"\\Tau":FMESvgChar__Tau, 			"\\Upsilon":FMESvgChar__Upsilon, 
			"\\Phi":FMESvgChar__Phi, 				"\\Chi":FMESvgChar__Chi, 			"\\Psi":FMESvgChar__Psi, 			"\\Omega":FMESvgChar__Omega, 
			"\\varepsilon":FMESvgChar_varepsilon, "\\vartheta":FMESvgChar_vartheta, "\\varkappa":FMESvgChar_varkappa, 	"\\varpi":FMESvgChar_varpi, 
			"\\varrho":FMESvgChar_varrho, 			"\\varsigma":FMESvgChar_varsigma, "\\varphi":FMESvgChar_varphi,
			"\\sum":FMESvgChar_sum,	 			"\\bigcup":FMESvgChar_bigcup, 		"\\bigcap":FMESvgChar_bigcap, 		"\\prod":FMESvgChar_prod, 
			"\\int":FMESvgChar_int, 				"\\oint":FMESvgChar_oint,
			"\\sinh":FMESvgChar_sinh, 				"\\cos":FMESvgChar_cos, 			"\\lg":FMESvgChar_lg, 				"\\gcd":FMESvgChar_gcd, 
			"\\cosh":FMESvgChar_cosh,		 		"\\tan":FMESvgChar_tan, 			"\\exp":FMESvgChar_exp, 			"\\Pr":FMESvgChar_Pr, 
			"\\tanh":FMESvgChar_tanh, 				"\\coth":FMESvgChar_coth, 			"\\det":FMESvgChar_det, 			"\\cot":FMESvgChar_cot, 
			"\\limsup":FMESvgChar_limsup, 			"\\deg":FMESvgChar_deg, 			"\\sec":FMESvgChar_sec, 			"\\liminf":FMESvgChar_liminf, 
			"\\dim":FMESvgChar_dim, 				"\\csc":FMESvgChar_csc, 			"\\lim":FMESvgChar_lim, 			"\\hom":FMESvgChar_hom, 
			"\\arcsin":FMESvgChar_arcsin, 			"\\sup":FMESvgChar_sup, 			"\\ker":FMESvgChar_ker, 			"\\arccos":FMESvgChar_arccos, 
			"\\inf":FMESvgChar_inf, 				"\\max":FMESvgChar_max, 			"\\arctan":FMESvgChar_arctan, 		"\\log":FMESvgChar_log, 
			"\\min":FMESvgChar_min, 				"\\sin":FMESvgChar_sin, 			"\\ln":FMESvgChar_ln, 				"\\arg":FMESvgChar_arg
		};
		private static function testFraction(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var frac:RegExp = /(?<=^\\frac).*/g;
			var matches:Array = Latex.match(frac);
			if(matches.length!=0){
				Latex = matches[0];
				var numerator:String;
				var denominator:String;
				var resultArr:Array = new Array();
				var prevlen:int = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==prevlen)
					return origin;
				numerator = resultArr.pop();
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==prevlen)
					return origin;
				denominator = resultArr.pop();
				array.push(new FMEFraction(who,numerator,denominator));
			}
			return Latex;
		}
		private static function testSqrt(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var sqrt:RegExp = /(?<=^\\sqrt).*/g;
			var matches:Array = Latex.match(sqrt);
			if(matches.length!=0){
				Latex = matches[0];
				var exp:String;
				var radix:String;
				var resultArr:Array = new Array();
				var len:int = Latex.length;
				Latex = testMatched("\\[","\\]",Latex,resultArr);
				if(Latex.length==len)
					exp = null;
				else
					exp = resultArr.pop();
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				radix = resultArr.pop();
				array.push(new FMESqrt(who,radix,exp));
			}
			return Latex;
		}
		private static function testFirstAsPlainOrSkip(Latex:String,who:FMEContainer,array:Array):String{
			var _class:Class = charClasses[Latex.charAt(0)];
			if(_class!=null)
				array.push(new _class(who));
			return Latex.substr(1);
		}
		private static function testMatched(leftLatexReg:String,rightLatexReg:String,Latex:String,resultArr:Array):String{
			var originLatex:String = Latex;
			var result:String = "";
			var stk:int = 0;
			var Lleft:RegExp = new RegExp("^"+leftLatexReg,"g");
			var Lright:RegExp = new RegExp("^"+rightLatexReg,"g");
			var Lplain:RegExp = new RegExp("^(?:(?!"+leftLatexReg+"|"+rightLatexReg+")[^\\])*","g");
			var Lplainlr:RegExp = new RegExp("^\\("+leftLatexReg+"|"+rightLatexReg+")","g");
			var matchs:Array = Latex.match(Lleft);
			var matchstr:String;
			if(matchs.length==0)
				return Latex;
			else
				Latex = Latex.substr((matchs.pop() as String).length);
			while(stk>=0){
				if(Latex.length==0)
					return originLatex;
				matchs = Latex.match(Lplain);
				if(matchs.length>0){
					matchstr = matchs.pop();
					result += matchstr;
					Latex = Latex.substr(matchstr.length);
					continue;
				}
				matchs = Latex.match(Lleft);
				if(matchs.length>0){
					matchstr = matchs.pop();
					result += matchstr;
					Latex = Latex.substr(matchstr.length);
					stk++;
					continue;
				}
				matchs = Latex.match(Lright);
				if(matchs.length>0){
					matchstr = matchs.pop();
					if(stk>0)
						result += matchstr;
					Latex = Latex.substr(matchstr.length);
					stk--;
					continue;
				}
				matchs = Latex.match(Lplainlr);
				if(matchs.length>0){
					matchstr = matchs.pop();
					result += matchstr;
					Latex = Latex.substr(matchstr.length);
					continue;
				}
				result += Latex.charAt(0);
				Latex = Latex.substr(1);
			}
			resultArr.push(result);
			return Latex;
		}
		private static  function testScript(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var tmporigin:String;
			var len:int = Latex.length;
			var main:String = null;
			var superscript:String = null;
			var subscript:String = null;
			var resultArr:Array = new Array();
			
			Latex = testMatched("\\{","\\}",Latex,resultArr);
			if(Latex.length==len)
				return origin;
			main = resultArr.pop();
			
			if(Latex.charAt(0)=="^"){
				Latex = Latex.substr(1);
				len = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				superscript = resultArr.pop();
				
				if(Latex.charAt(0)=="_"){
					tmporigin = Latex;
					Latex = Latex.substr(1);
					len = Latex.length;
					Latex = testMatched("\\{","\\}",Latex,resultArr);
					if(Latex.length==len)
						Latex = tmporigin;
					else
						subscript = resultArr.pop();
				}
			}else if(Latex.charAt(0)=="_"){
				Latex = Latex.substr(1);
				len = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				subscript = resultArr.pop();
				
				if(Latex.charAt(0)=="^"){
					tmporigin = Latex;
					Latex = Latex.substr(1);
					len = Latex.length;
					Latex = testMatched("\\{","\\}",Latex,resultArr);
					if(Latex.length==len)
						Latex = tmporigin;
					else
						superscript = resultArr.pop();
				}
			}else{
				return origin;
			}
			array.push(new FMEScript(who,main,superscript,subscript));
			return Latex;
		}
		private static function testOverset(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var overset:RegExp = /(?<=^\\overset).*/g;
			var matches:Array = Latex.match(overset);
			if(matches.length!=0){
				Latex = matches[0];
				var main:String;
				var _set:String;
				var resultArr:Array = new Array();
				var len:int = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				main = resultArr.pop();
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				_set = resultArr.pop();
				array.push(new FMEOverset(who,main,_set));
			}
			return Latex;
		}
		private static function testUnderset(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var underset:RegExp =  new RegExp("(?<=^\\\\underset).*","g");
			var matches:Array = Latex.match(underset);
			if(matches.length!=0){
				Latex = matches[0];
				var main:String;
				var _set:String;
				var resultArr:Array = new Array();
				var len:int = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				main = resultArr.pop();
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				_set = resultArr.pop();
				array.push(new FMEUnderset(who,main,_set));
			}
			return Latex;
		}
		private static function testEscChar(Latex:String,who:FMEContainer,array:Array):String{
			var regs:Array = [
				new RegExp("^\\\\[#$%&\\{\\}]","g"),
				new RegExp("^\\\\(sim|backslash|pm|times|div|neq|equiv)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(approx|le|ge|infty|to|because|therefore)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(cdot|partial|in|notin|subset|subseteq)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(subsetneq|cup|bigcup|cap|bigcap|emptyset)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(nabla|propto|neg|forall|Rightarrow)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(Leftrightarrow|exists|hbar|mapsto)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(alpha|beta|gamma|delta|epsilon|zeta|eta|theta)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(iota|kappa|lambda|mu|nu|xi|omicron|pi)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(rho|sigma|tau|upsilon|phi|chi|psi|omega)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(Alpha|Beta|Gamma|Delta|Epsilon|Zeta|Eta|Theta)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(Iota|Kappa|Lambda|Mu|Nu|Xi|Omicron|Pi)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(Rho|Sigma|Tau|Upsilon|Phi|Chi|Psi|Omega)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(varepsilon|vartheta|varkappa|varpi|varrho|varsigma|varphi)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(sum|bigcup|bigcap|prod|int|oint)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(sinh|cos|lg|gcd|cosh|tan|exp|Pr)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(tanh|coth|det|cot|limsup|deg|sec)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(liminf|dim|csc|lim|hom|arcsin|sup)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(ker|arccos|inf|max|arctan|log|min)(?![a-zA-Z])","g"),
				new RegExp("^\\\\(sin|ln|arg)(?![a-zA-Z])","g")
				//new RegExp("^\\\\()(?![a-zA-Z])","g"),
				//new RegExp("^\\\\()(?![a-zA-Z])","g"),
			];
			for each(var reg:RegExp in regs){
				var matchs:Array = Latex.match(reg);
				if(matchs.length>0)
					break;
			}
			if(matchs.length>0){
				var matchstr:String = matchs[0];
				array.push(new charClasses[matchstr](who));
				Latex = Latex.substr((matchs[0] as String).length);
			}
			return Latex
		}
		private static function testVec(Latex:String,who:FMEContainer,array:Array):String{
			var origin:String = Latex;
			var overset:RegExp = /(?<=^\\vec).*/g;
			var matches:Array = Latex.match(overset);
			if(matches.length!=0){
				Latex = matches[0];
				var body:String;
				var resultArr:Array = new Array();
				var len:int = Latex.length;
				Latex = testMatched("\\{","\\}",Latex,resultArr);
				if(Latex.length==len)
					return origin;
				body = resultArr.pop();
				array.push(new FMEVec(who,body));
			}
			return Latex;
		}
		private static function testMatchedBracket(Latex:String,who:FMEContainer,array:Array):String{
			var body:String;
			var resultArr:Array = new Array();
			var len:int = Latex.length;
			Latex = testMatched("\\\\left\\s*\\[","\\\\right\\s*\\]",Latex,resultArr);
			if(Latex.length!=len){
				body = resultArr.pop();
				array.push(new FMEMatchedBracket(who,body));
			}
			return Latex;
		}
		private static function testMatchedParen(Latex:String,who:FMEContainer,array:Array):String{
			var body:String;
			var resultArr:Array = new Array();
			var len:int = Latex.length;
			Latex = testMatched("\\\\left\\s*\\(","\\\\right\\s*\\)",Latex,resultArr);
			if(Latex.length!=len){
				body = resultArr.pop();
				array.push(new FMEMatchedParen(who,body));
			}
			return Latex;
		}
		private static function testMatchedCurly(Latex:String,who:FMEContainer,array:Array):String{
			var body:String;
			var resultArr:Array = new Array();
			var len:int = Latex.length;
			Latex = testMatched("\\\\left\\s*\\\\{","\\\\right\\s*\\\\}",Latex,resultArr);
			if(Latex.length!=len){
				body = resultArr.pop();
				array.push(new FMEMatchedCurly(who,body));
			}
			return Latex;
		}
		private static function clearLeftSpace(Latex:String):String{
			return Latex.replace(/^\s*/g,"");
		}
		public static function compile(Latex:String,who:FMEContainer):Array{
			var len:int;
			var arr:Array = new Array;
			while((len=(Latex=clearLeftSpace(Latex)).length)>0){
				Latex = testFraction(Latex,who,arr);
				Latex = testSqrt(Latex,who,arr);
				Latex = testScript(Latex,who,arr);
				Latex = testOverset(Latex,who,arr);
				Latex = testUnderset(Latex,who,arr);
				Latex = testEscChar(Latex,who,arr);
				Latex = testVec(Latex,who,arr);
				Latex = testMatchedBracket(Latex,who,arr);
				Latex = testMatchedParen(Latex,who,arr);
				Latex = testMatchedCurly(Latex,who,arr);
				if(Latex.length==len)
					Latex = testFirstAsPlainOrSkip(Latex,who,arr);
			}
			return arr;
		}
	}
}