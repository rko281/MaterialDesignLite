"Filed out from Dolphin Smalltalk 7"!

MDLExpansionStrategy subclass: #MDLLazyExpansionStrategy
	instanceVariableNames: 'currentStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLazyExpansionStrategy guid: (GUID fromString: '{9a0046fb-9347-47a6-8672-3fddf48eca3a}')!
MDLLazyExpansionStrategy comment: 'I am a lazy expansion strategy.I combine the best from MDLHideExpansionStrategy and MDLAjaxExpansionStrategy to load the panel content only once when it is needed.That is to say, if the panel is initially rendered folded, the first time the user click the expansion panel to expand it, I will perform an AJAX call to ask the server to render the content.Then, next times the user click on the expansion panel, I will behave as MDLHideExpansionStrategy.If the panel is initially rendered expanded, I behave exactly as MDLHideExpansionStrategy.'!
!MDLLazyExpansionStrategy categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLLazyExpansionStrategy methodsFor!

customize: anExpansionPanelHeader in: anExpansionPanel on: html	anExpansionPanel isExpanded ifTrue: [ self switchToDisplayNoneStrategy ].	^ currentStrategy customize: anExpansionPanelHeader in: anExpansionPanel on: html!

initialize	super initialize.	currentStrategy := MDLAjaxExpansionStrategy new!

renderExpansionPanel: anExpansionPanel contentOn: html	anExpansionPanel isExpanded ifTrue: [ self switchToDisplayNoneStrategy ].	currentStrategy renderExpansionPanel: anExpansionPanel contentOn: html.	currentStrategy isAjaxExpansionStrategy ifTrue: [ self switchToDisplayNoneStrategy ]!

switchToDisplayNoneStrategy	currentStrategy := MDLHideExpansionStrategy new! !
!MDLLazyExpansionStrategy categoriesFor: #customize:in:on:!javascript!public! !
!MDLLazyExpansionStrategy categoriesFor: #initialize!initialization!public! !
!MDLLazyExpansionStrategy categoriesFor: #renderExpansionPanel:contentOn:!public!rendering! !
!MDLLazyExpansionStrategy categoriesFor: #switchToDisplayNoneStrategy!private! !

