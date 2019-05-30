"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLDialogTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogTest guid: (GUID fromString: '{aeed24f8-536c-45a5-a99e-6acf9ec43558}')!
MDLDialogTest comment: ''!
!MDLDialogTest categoriesForClass!Material-Design-Lite-Components-Tests-Dialog! !
!MDLDialogTest methodsFor!

testBareBrush	self assert: [ :html | html mdlDialog ] generates: '<dialog class="mdl-dialog"></dialog>'!

testCloseButtonId	self assert: [ :html | html mdlDialog closeButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-closebtnid="id1"></dialog>'!

testOpenButtonId	self assert: [ :html | html mdlDialog openButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-openbtnid="id1"></dialog><script type="text/javascript">newDialog("id1-dialog");</script>'!

testWithContent	self assert: [ :html | html mdlDialog with: 'Test' ] generates: '<dialog class="mdl-dialog">Test</dialog>'! !
!MDLDialogTest categoriesFor: #testBareBrush!public!tests! !
!MDLDialogTest categoriesFor: #testCloseButtonId!public!tests! !
!MDLDialogTest categoriesFor: #testOpenButtonId!public!tests! !
!MDLDialogTest categoriesFor: #testWithContent!public!tests! !

