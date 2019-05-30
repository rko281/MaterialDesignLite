"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLLogoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLogoTest guid: (GUID fromString: '{91dda6ed-852d-4245-93dd-d446217241ab}')!
MDLLogoTest comment: ''!
!MDLLogoTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLLogoTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLogo ] generates: '<div class="mdl-logo"></div>'!

testWithContent	self assert: [ :html | html mdlLogo: 'Logo' ] generates: '<div class="mdl-logo">Logo</div>'! !
!MDLLogoTest categoriesFor: #testBareBrush!public!tests! !
!MDLLogoTest categoriesFor: #testWithContent!public!tests! !

