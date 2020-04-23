"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLListIconComponentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListIconComponentTest guid: (GUID fromString: '{62cf4fb4-5fb2-44e7-b016-d0cd71c2ce75}')!
MDLListIconComponentTest comment: ''!
!MDLListIconComponentTest categoriesForClass!Material-Design-Lite-Widgets-Tests-List! !
!MDLListIconComponentTest methodsFor!

testHelpText	self		assert: [ :html | html render: (MDLListIconComponent named: 'Test' helpText: 'This is an help text') ]		generatedIncludes: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">This is an help text</span>'!

testNoHelpTextGeneratesNoTooltip	self		deny: [ :html | 			html				render:					(MDLListIconComponent new						label: 'Test';						yourself) ]		generatedIncludes: 'mdl-tooltip'! !
!MDLListIconComponentTest categoriesFor: #testHelpText!public!tests! !
!MDLListIconComponentTest categoriesFor: #testNoHelpTextGeneratesNoTooltip!public!tests! !

