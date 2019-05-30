"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLPanelSwitcherButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPanelSwitcherButtonTest guid: (GUID fromString: '{8d62ab88-e8ed-46c8-bfe5-1a744ca701eb}')!
MDLPanelSwitcherButtonTest comment: ''!
!MDLPanelSwitcherButtonTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Panels! !
!MDLPanelSwitcherButtonTest methodsFor!

testId	self assert: [ :html | MDLPanelSwitcherButton new id: 'testId'; renderContentOn: html ] generatedIncludes: 'id="testId"'.!

testJsOnComplete	self		assert: [ :html | 			MDLPanelSwitcherButton new				onCompleteJs: 'console.log(''test'')';				renderContentOn: html ]		generatedIncludes: 'function(){console.log(''test'')}'.	self		assert: [ :html | 			MDLPanelSwitcherButton new				onCompleteJs: 'console.log(''test'')' js;				renderContentOn: html ]		generatedIncludes: 'function(){console.log(''test'')}'.	self		assert:			((MDLPanelSwitcherButton new				onCompleteJs: 'console.log(''test'')';				jsOnComplete) isKindOf: JSStream).	self		assert:			((MDLPanelSwitcherButton new				onCompleteJs: 'console.log(''test'')' js;				jsOnComplete) isKindOf: JSStream)!

testSelect	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'.	self assert: [ :html | MDLPanelSwitcherButton new select; renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'!

testTextIsGenerated	self assert: [ :html | MDLPanelSwitcherButton new text: 'Option'; renderContentOn: html ] generatedIncludes: '>Option</div>'.!

testTooltipNotRenderedIfNil	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'mdl-tooltip'!

testTooltipRendering	self		assert: [ :html | 			MDLPanelSwitcherButton new				tooltip: 'test';				renderTooltipFor: html nextId on: html ]		generates: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">test</span>'! !
!MDLPanelSwitcherButtonTest categoriesFor: #testId!public!tests! !
!MDLPanelSwitcherButtonTest categoriesFor: #testJsOnComplete!public!tests! !
!MDLPanelSwitcherButtonTest categoriesFor: #testSelect!public!tests! !
!MDLPanelSwitcherButtonTest categoriesFor: #testTextIsGenerated!public!tests! !
!MDLPanelSwitcherButtonTest categoriesFor: #testTooltipNotRenderedIfNil!public!tests! !
!MDLPanelSwitcherButtonTest categoriesFor: #testTooltipRendering!public!tests! !

