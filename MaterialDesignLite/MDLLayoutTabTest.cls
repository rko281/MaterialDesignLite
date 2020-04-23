"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutTabTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTabTest guid: (GUID fromString: '{ffc5534a-96e8-4714-82e3-519d9f3a0819}')!
MDLLayoutTabTest comment: ''!
!MDLLayoutTabTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutTabTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutTab ] generates: '<a class="mdl-layout__tab"></a>'!

testIsActive	self assert: [ :html | html mdlLayoutTab isActive ] generates: '<a class="mdl-layout__tab is-active"></a>'!

testIsActiveIf	self assert: [ :html | html mdlLayoutTab isActiveIf: true ] generates: '<a class="mdl-layout__tab is-active"></a>'.	self assert: [ :html | html mdlLayoutTab isActiveIf: false ] generates: '<a class="mdl-layout__tab"></a>'!

testWithContent	self assert: [ :html | html mdlLayoutTab: 'test' ] generates: '<a class="mdl-layout__tab">test</a>'! !
!MDLLayoutTabTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutTabTest categoriesFor: #testIsActive!public!tests! !
!MDLLayoutTabTest categoriesFor: #testIsActiveIf!public!tests! !
!MDLLayoutTabTest categoriesFor: #testWithContent!public!tests! !

