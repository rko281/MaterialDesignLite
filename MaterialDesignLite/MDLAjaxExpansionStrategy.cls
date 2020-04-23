﻿"Filed out from Dolphin Smalltalk 7"!

MDLExpansionStrategy subclass: #MDLAjaxExpansionStrategy
	instanceVariableNames: 'onFoldBlock onExpandBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAjaxExpansionStrategy guid: (GUID fromString: '{b1423a81-1f2b-4e5a-8316-32b0401b052f}')!
MDLAjaxExpansionStrategy comment: 'I am display strategy that uses AJAX to reload the entire MDLExpansionPanel each time the toggle button is clicked.
!MDLAjaxExpansionStrategy categoriesForClass!Material-Design-Lite-Widgets-Expansion! !
!MDLAjaxExpansionStrategy methodsFor!

customize: anExpansionPanelHeader in: anExpansionPanel on: html

isAjaxExpansionStrategy

renderExpansionPanel: anExpansionPanel contentOn: html
!MDLAjaxExpansionStrategy categoriesFor: #customize:in:on:!javascript!public! !
!MDLAjaxExpansionStrategy categoriesFor: #isAjaxExpansionStrategy!public!testing! !
!MDLAjaxExpansionStrategy categoriesFor: #renderExpansionPanel:contentOn:!public!rendering! !
