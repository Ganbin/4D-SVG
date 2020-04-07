//%attributes = {"invisible":true,"shared":true,"preemptive":"incapable"}
  // ----------------------------------------------------
  // Method : SVGTool_SHOW_IN_VIEWER
  // Created 01/10/08 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
C_TEXT:C284($1)
C_TEXT:C284($2)

C_TEXT:C284($Txt_sources)

If (False:C215)
	C_TEXT:C284(SVGTool_SHOW_IN_VIEWER ;$1)
	C_TEXT:C284(SVGTool_SHOW_IN_VIEWER ;$2)
End if 

Compiler_SVG 

COMPILER_Not_Thread_Safe 

DOM EXPORT TO VAR:C863($1;$Txt_sources)

If (<>sourceFontSize=0)
	
	PREFERENCES ("viewerOptions";-><>showColoredBackground;-><>backgroundColor;-><>automaticallyResize;-><>sourceFontSize)
	
End if 

<>SVG_viewerSource:=viewer_sources ($Txt_sources)

Use (Storage:C1525.svg)
	
	Storage:C1525.svg.options:=Storage:C1525.svg.options ?- 0
	
	If (Count parameters:C259>=2)
		
		If ($2="sources")
			
			Storage:C1525.svg.options:=Storage:C1525.svg.options ?+ 0
			
		End if 
	End if 
End use 

Viewer_main 