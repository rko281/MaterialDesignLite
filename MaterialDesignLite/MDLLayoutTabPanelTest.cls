"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLLayoutTabPanelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutTabPanelTest guid: (GUID fromString: '{cbbe7c02-86cf-4878-98a7-9be798564ad9}')!
MDLLayoutTabPanelTest comment: ''!
!MDLLayoutTabPanelTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutTabPanelTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutTabPanel ] generates: '<div class="mdl-layout__tab-panel"></div>'!

testIsActive	self assert: [ :html | html mdlLayoutTabPanel isActive ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'!

testIsActiveIf	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: true ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'.	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: false ] generates: '<div class="mdl-layout__tab-panel"></div>'.!

testWithContent	self assert: [ :html | html mdlLayoutTabPanel: 'test' ] generates: '<div class="mdl-layout__tab-panel">test</div>'! !
!MDLLayoutTabPanelTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutTabPanelTest categoriesFor: #testIsActive!public!tests! !
!MDLLayoutTabPanelTest categoriesFor: #testIsActiveIf!public!tests! !
!MDLLayoutTabPanelTest categoriesFor: #testWithContent!public!tests! !

