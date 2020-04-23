"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTabsPanelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsPanelTest guid: (GUID fromString: '{d52b4a92-a260-4135-a929-bec62373ae88}')!
MDLTabsPanelTest comment: ''!
!MDLTabsPanelTest categoriesForClass!Material-Design-Lite-Components-Tests-Nav! !
!MDLTabsPanelTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTabsPanel ] generates: '<div class="mdl-tabs__panel"></div>'!

testIsActive	self assert: [ :html | html mdlTabsPanel isActive ] generates: '<div class="mdl-tabs__panel is-active"></div>'!

testIsActiveIf	self assert: [ :html | html mdlTabsPanel isActiveIf: true ] generates: '<div class="mdl-tabs__panel is-active"></div>'.	self assert: [ :html | html mdlTabsPanel isActiveIf: false ] generates: '<div class="mdl-tabs__panel"></div>'.!

testWithContent	self assert: [ :html | html mdlTabsPanel: 'test' ] generates: '<div class="mdl-tabs__panel">test</div>'! !
!MDLTabsPanelTest categoriesFor: #testBareBrush!public!tests! !
!MDLTabsPanelTest categoriesFor: #testIsActive!public!tests! !
!MDLTabsPanelTest categoriesFor: #testIsActiveIf!public!tests! !
!MDLTabsPanelTest categoriesFor: #testWithContent!public!tests! !

