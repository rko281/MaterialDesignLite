"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLDialogWidgetTests
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogWidgetTests guid: (GUID fromString: '{91f3875b-9a66-4cff-a5e8-333689e84fc2}')!
MDLDialogWidgetTests comment: ''!
!MDLDialogWidgetTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Dialog! !
!MDLDialogWidgetTests methodsFor!

setUp	super setUp.	dialog := MDLDialogWidget new!

testActions	dialog actions: [ :html | html mdlButton: 'Test' ].	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions"><button class="mdl-button mdl-js-button" type="submit">Test</button>'.	dialog actions: MDLDialogWidgetSimpleWidgetMock new.	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions">This is a mock'!

testButtonBrush	self		assert: [ :html | 			dialog				buttonBrush:					(MDLButton new						colored;						yourself);				buttonName: 'Test'.			html render: dialog ]		generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--colored mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'!

testButtonName	dialog buttonName: 'Test'.	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'!

testCloseButtonName	dialog closeButtonName: 'Test'.	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button" id="id3" type="button">Test</button>'!

testContent	dialog content: [ :html | html text: 'Test' ].	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">Test</div>'.	dialog content: MDLDialogWidgetSimpleWidgetMock new.	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">This is a mock</div>'!

testDialogBrush	self		assert: [ :html | 			dialog				dialogBrush:					(MDLDialog new						class: 'TestClass';						yourself);				buttonName: 'Test'.			html render: dialog ]		generatedIncludes: '<dialog class="mdl-dialog TestClass"'!

testDialogIsRegistered	self assert: [ :html | html render: dialog ] generatedIncludes: '<script type="text/javascript">newDialog('!

testRenderBareDialog	self assert: [ :html | html render: dialog ] generatedIncludes: '<dialog class="mdl-dialog"'!

testTitle	dialog title: 'Test'.	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.		dialog title: [ :html | html text: 'Test' ].	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.	dialog title: MDLDialogWidgetSimpleWidgetMock new.	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">This is a mock</h4>'! !
!MDLDialogWidgetTests categoriesFor: #setUp!public!running! !
!MDLDialogWidgetTests categoriesFor: #testActions!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testButtonBrush!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testButtonName!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testCloseButtonName!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testContent!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testDialogBrush!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testDialogIsRegistered!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testRenderBareDialog!public!tests! !
!MDLDialogWidgetTests categoriesFor: #testTitle!public!tests! !

