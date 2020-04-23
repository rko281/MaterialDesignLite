"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLCardWidgetTests
	instanceVariableNames: 'card'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardWidgetTests guid: (GUID fromString: '{ac39114d-0bb4-400c-bb83-958cb7ba6e77}')!
MDLCardWidgetTests comment: ''!
!MDLCardWidgetTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Cards! !
!MDLCardWidgetTests methodsFor!

setUp	super setUp.	card := MDLCardWidget new!

testAccentColorTitle	card accentColorTitle: 'This is my test title'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testAccentColorTitleClass	card accentColorTitle: 'This is my test title' class: 'myClass'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testActionsBordered	card actionsBordered.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__actions mdl-card--border"></div>'!

testAddAction	self		assert: [ :html | 			card addAction: [ html mdlButton: 'Validate' ].			html render: card ]		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__actions"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div></div>'!

testAddComponentOrBlock	self		assert: [ :html | 			card addComponentOrBlock: [ html mdlButton: 'Validate' ].			html render: card ]		generates: '<div class="mdl-card mdl-card-widget"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div>'!

testAddTextContainer	card addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'.	self		assert: [ :html | html render: card ]		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__supporting-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.</div></div>'!

testAddTextContainerClass	card addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.' class: 'myClass'.	self		assert: [ :html | html render: card ]		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__supporting-text myClass">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.</div></div>'!

testPrimaryColorTitle	card primaryColorTitle: 'This is my test title'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--primary mdl-color-text--primary-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testPrimaryColorTitleClass	card primaryColorTitle: 'This is my test title' class: 'myClass'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--primary mdl-color-text--primary-contrast myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testShadow	"Test than a card can have a shadow."		card shadow: 2.	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-card-widget mdl-shadow--2dp"></div>'.	card shadow: 24.	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-card-widget mdl-shadow--24dp"></div>'!

testTitle	card title: 'This is my test title'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testTitleClass	card title: 'This is my test title' class: 'myClass'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'!

testTitleLevel	card title: 'This is my test title' level: 3.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h3 class="mdl-card__title-text">This is my test title</h3></div>'!

testTitleLevelClass	card title: 'This is my test title' level: 3 class: 'myClass'.	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title myClass"><h3 class="mdl-card__title-text">This is my test title</h3></div>'! !
!MDLCardWidgetTests categoriesFor: #setUp!public!running! !
!MDLCardWidgetTests categoriesFor: #testAccentColorTitle!public!tests! !
!MDLCardWidgetTests categoriesFor: #testAccentColorTitleClass!public!tests! !
!MDLCardWidgetTests categoriesFor: #testActionsBordered!public!tests! !
!MDLCardWidgetTests categoriesFor: #testAddAction!public!tests! !
!MDLCardWidgetTests categoriesFor: #testAddComponentOrBlock!public!tests! !
!MDLCardWidgetTests categoriesFor: #testAddTextContainer!public!tests! !
!MDLCardWidgetTests categoriesFor: #testAddTextContainerClass!public!tests! !
!MDLCardWidgetTests categoriesFor: #testPrimaryColorTitle!public!tests! !
!MDLCardWidgetTests categoriesFor: #testPrimaryColorTitleClass!public!tests! !
!MDLCardWidgetTests categoriesFor: #testShadow!public!tests! !
!MDLCardWidgetTests categoriesFor: #testTitle!public!tests! !
!MDLCardWidgetTests categoriesFor: #testTitleClass!public!tests! !
!MDLCardWidgetTests categoriesFor: #testTitleLevel!public!tests! !
!MDLCardWidgetTests categoriesFor: #testTitleLevelClass!public!tests! !

