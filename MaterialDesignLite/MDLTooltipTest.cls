"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTooltipTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTooltipTest guid: (GUID fromString: '{d3171952-8b2c-442f-bf9c-03d7d61252f6}')!
MDLTooltipTest comment: ''!
!MDLTooltipTest categoriesForClass!Material-Design-Lite-Components-Tests-Tooltips! !
!MDLTooltipTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTooltip ] generates: '<span class="mdl-tooltip"></span>'!

testBottom	self assert: [ :html | html mdlTooltip bottom ] generates: '<span class="mdl-tooltip mdl-tooltip--bottom"></span>'!

testFor	self		assert: [ :html | 			html mdlTooltip				for: html nextId;				with: 'test' ]		generates: '<span class="mdl-tooltip" for="id1">test</span>'!

testLarge	self assert: [ :html | html mdlTooltip large ] generates: '<span class="mdl-tooltip mdl-tooltip--large"></span>'!

testLeft	self assert: [ :html | html mdlTooltip left ] generates: '<span class="mdl-tooltip mdl-tooltip--left"></span>'!

testRight	self assert: [ :html | html mdlTooltip right ] generates: '<span class="mdl-tooltip mdl-tooltip--right"></span>'!

testTop	self assert: [ :html | html mdlTooltip top ] generates: '<span class="mdl-tooltip mdl-tooltip--top"></span>'!

testWithContent	self assert: [ :html | html mdlTooltip with: 'test' ] generates: '<span class="mdl-tooltip">test</span>'! !
!MDLTooltipTest categoriesFor: #testBareBrush!public!tests! !
!MDLTooltipTest categoriesFor: #testBottom!public!tests! !
!MDLTooltipTest categoriesFor: #testFor!public!tests! !
!MDLTooltipTest categoriesFor: #testLarge!public!tests! !
!MDLTooltipTest categoriesFor: #testLeft!public!tests! !
!MDLTooltipTest categoriesFor: #testRight!public!tests! !
!MDLTooltipTest categoriesFor: #testTop!public!tests! !
!MDLTooltipTest categoriesFor: #testWithContent!public!tests! !

