"Filed out from Dolphin Smalltalk 7"!

MDLExampleComponentWithRightPanel subclass: #MDLExampleComponentWithRightPanelFolded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExampleComponentWithRightPanelFolded guid: (GUID fromString: '{010f1844-bf6e-4b6b-b23e-94b990d43b08}')!
MDLExampleComponentWithRightPanelFolded comment: 'Description--------------------Illustrate the use of the resizable right panel that is by default folded.'!
!MDLExampleComponentWithRightPanelFolded categoriesForClass!Material-Design-Lite-Demo-Utils! !
!MDLExampleComponentWithRightPanelFolded methodsFor!

browserClass	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."	^ 'mdl-extension-example2'!

defaultFoldButton	^ (MDLFoldButton for: '#' , self rightPanelId)		fold;		yourself! !
!MDLExampleComponentWithRightPanelFolded categoriesFor: #browserClass!accessing!public! !
!MDLExampleComponentWithRightPanelFolded categoriesFor: #defaultFoldButton!components!public! !

