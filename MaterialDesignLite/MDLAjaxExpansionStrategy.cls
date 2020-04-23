"Filed out from Dolphin Smalltalk 7"!

MDLExpansionStrategy subclass: #MDLAjaxExpansionStrategy
	instanceVariableNames: 'onFoldBlock onExpandBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAjaxExpansionStrategy guid: (GUID fromString: '{b1423a81-1f2b-4e5a-8316-32b0401b052f}')!
MDLAjaxExpansionStrategy comment: 'I am display strategy that uses AJAX to reload the entire MDLExpansionPanel each time the toggle button is clicked.Because of my behaviour, one can define an action to execute on server side either when I expand (#onExpandBlock:) or when I fold (#onFoldBlock:).These actions can eventually modify the state of the expansion panel as the full widget is reload via AJAX.'!
!MDLAjaxExpansionStrategy categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLAjaxExpansionStrategy methodsFor!

customize: anExpansionPanelHeader in: anExpansionPanel on: html	anExpansionPanelHeader		onClick:			((html jQuery this parent find: '.mdl-expansion-panel__content') load				html: [ :ajaxHtmlCanvas | 					anExpansionPanel						toggleExpansion;						renderExpansionPanelContentOn: ajaxHtmlCanvas ];				onComplete: 'componentHandler.upgradeElements(this);' js)!

isAjaxExpansionStrategy	^ true!

renderExpansionPanel: anExpansionPanel contentOn: html	anExpansionPanel isExpanded		ifTrue: [ anExpansionPanel expandedBlock value: html ]! !
!MDLAjaxExpansionStrategy categoriesFor: #customize:in:on:!javascript!public! !
!MDLAjaxExpansionStrategy categoriesFor: #isAjaxExpansionStrategy!public!testing! !
!MDLAjaxExpansionStrategy categoriesFor: #renderExpansionPanel:contentOn:!public!rendering! !

