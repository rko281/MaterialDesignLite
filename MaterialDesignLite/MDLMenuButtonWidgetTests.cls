"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLMenuButtonWidgetTests
	instanceVariableNames: 'menu'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuButtonWidgetTests guid: (GUID fromString: '{1dcaba31-49ad-43a6-80e2-82f1ab97fa3a}')!
MDLMenuButtonWidgetTests comment: ''!
!MDLMenuButtonWidgetTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Menu! !
!MDLMenuButtonWidgetTests methodsFor!

setUp	super setUp.	menu := MDLMenuButtonWidget new		objectsPossibilities: #('material' 'design' 'lite');		yourself!

testButtonContents	menu buttonContent: 'test'.	self assert: [ :html | menu renderButtonContentOn: html ] generates: 'test'.	menu buttonContent: [ :html | html mdlIcon: 'mood' ].	self assert: [ :html | menu renderButtonContentOn: html ] generates: '<i class="material-icons">mood</i>'!

testDefaultDescriptionPositionAtBottom	self assert: menu descriptionPosition equals: #bottom!

testDescriptionAtBottom	menu descriptionAtBottom.		self assert: menu descriptionPosition equals: #bottom!

testDescriptionAtLeft	menu descriptionAtLeft.	menu description: 'Description'.	self assert: menu descriptionPosition equals: #left.	self assert: [ :html | html render: menu ] generatedIncludes: 'mdl-tooltip--left'!

testDescriptionAtRight	menu descriptionAtRight.	self assert: menu descriptionPosition equals: #right!

testDescriptionAtTop	menu descriptionAtTop.	self assert: menu descriptionPosition equals: #top!

testLabelFor	menu textBlock: nil.	self assert: (menu labelFor: 3) equals: '3'.	menu textBlock: [ :e | e asUppercase ].	self assert: (menu labelFor: 'test') equals: 'TEST'.	menu textBlock: #asUppercase.	self assert: (menu labelFor: 'test') equals: 'TEST'!

testObjectsPossibilitiesWithLabel	menu textBlock: #asUppercase.	menu sortBlock: [ :a :b | a < b ].	self		assert: menu objectsPossibilitiesWithLabel		equals:			{('DESIGN' -> 'design').			('LITE' -> 'lite').			('MATERIAL' -> 'material')}.	menu sortBlock: [ :a :b | b < a ].	self		assert: menu objectsPossibilitiesWithLabel		equals:			{('MATERIAL' -> 'material').			('LITE' -> 'lite').			('DESIGN' -> 'design')}!

testSelectedObject	menu selectedObject: 'material'.	self assert: [ :html | html render: menu ] generatedIncludes: '>material<i class="material-icons">arrow_drop_down</i>'.		menu selectedObject: 'lite'.	self assert: [ :html | html render: menu ] generatedIncludes: '>lite<i class="material-icons">arrow_drop_down</i>'! !
!MDLMenuButtonWidgetTests categoriesFor: #setUp!public!running! !
!MDLMenuButtonWidgetTests categoriesFor: #testButtonContents!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testDefaultDescriptionPositionAtBottom!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testDescriptionAtBottom!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testDescriptionAtLeft!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testDescriptionAtRight!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testDescriptionAtTop!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testLabelFor!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testObjectsPossibilitiesWithLabel!public!tests! !
!MDLMenuButtonWidgetTests categoriesFor: #testSelectedObject!public!tests! !

