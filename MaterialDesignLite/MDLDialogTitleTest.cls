"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLDialogTitleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogTitleTest guid: (GUID fromString: '{651b4e6a-d564-4dba-953e-4c6e219f6c34}')!
MDLDialogTitleTest comment: ''!
!MDLDialogTitleTest categoriesForClass!Material-Design-Lite-Components-Tests-Dialog! !
!MDLDialogTitleTest methodsFor!

testBareBrush	self assert: [ :html | html mdlDialogTitle ] generates: '<h4 class="mdl-dialog__title"></h4>'!

testLevel1	self		assert: [ :html | 			html mdlDialogTitle				level1;				with: 'title' ]		generates: '<h1 class="mdl-dialog__title">title</h1>'!

testLevel2	self		assert: [ :html | 			html mdlDialogTitle				level2;				with: 'title' ]		generates: '<h2 class="mdl-dialog__title">title</h2>'!

testLevel3	self		assert: [ :html | 			html mdlDialogTitle				level3;				with: 'title' ]		generates: '<h3 class="mdl-dialog__title">title</h3>'!

testLevel4	self		assert: [ :html | 			html mdlDialogTitle				level4;				with: 'title' ]		generates: '<h4 class="mdl-dialog__title">title</h4>'!

testLevel5	self		assert: [ :html | 			html mdlDialogTitle				level5;				with: 'title' ]		generates: '<h5 class="mdl-dialog__title">title</h5>'!

testLevel6	self		assert: [ :html | 			html mdlDialogTitle				level6;				with: 'title' ]		generates: '<h6 class="mdl-dialog__title">title</h6>'!

testWithContent	self assert: [ :html | html mdlDialogTitle: 'title' ] generates: '<h4 class="mdl-dialog__title">title</h4>'! !
!MDLDialogTitleTest categoriesFor: #testBareBrush!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel1!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel2!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel3!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel4!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel5!public!tests! !
!MDLDialogTitleTest categoriesFor: #testLevel6!public!tests! !
!MDLDialogTitleTest categoriesFor: #testWithContent!public!tests! !

