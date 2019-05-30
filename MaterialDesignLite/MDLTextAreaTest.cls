"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLTextAreaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextAreaTest guid: (GUID fromString: '{614632fd-5115-4e18-83f2-df9f409d24f5}')!
MDLTextAreaTest comment: ''!
!MDLTextAreaTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextAreaTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTextArea ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input"></textarea>'!

testWithContent	self assert: [ :html | html mdlTextArea: 'test' ] generates: '<textarea rows="auto" cols="auto" class="mdl-textfield__input">test</textarea>'! !
!MDLTextAreaTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextAreaTest categoriesFor: #testWithContent!public!tests! !

