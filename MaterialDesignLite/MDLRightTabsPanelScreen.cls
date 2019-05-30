"Filed out from Dolphin Smalltalk 7"!

MDLExtensionsDemo subclass: #MDLRightTabsPanelScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRightTabsPanelScreen guid: (GUID fromString: '{7622252e-0a09-47ed-ba45-a534dd6d3fb3}')!
MDLRightTabsPanelScreen comment: 'Description--------------------Screen to render resizable right panel with tabs examples.'!
!MDLRightTabsPanelScreen categoriesForClass!Material-Design-Lite-Demo-Extensions! !
!MDLRightTabsPanelScreen methodsFor!

renderRightPanelFoldedOn: html	"The code is not really useful here since this extension it managed by Traits.		Please, browse the code of the example class bellow in your Seaside image."		html div		shadow: 2;		style: 'height: 500px; display: flex;';		with: MDLExampleComponentWithRightPanelFolded new!

renderRightPanelOn: html	"The code is not really useful here since this extension it managed by Traits.		Please, browse the code of the example class bellow in your Seaside image.		To make a Seaside component use this feature you need to:- Make your component use the TRightTabsPanelBrowser trait.- Implement the #browserClass method. It should return a symbol to use to prefix html classes.- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.- Implement the instance variables, getter and setters for the toolbar and right panel components.- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.- Call #initialijeRightPanel from the initialize method of the component.- Call #renderRightPanelOn: during the rendering phase of the component"		html div		shadow: 2;		style: 'height: 500px; display: flex;';		with: MDLExampleComponentWithRightPanel new!

renderScreenContentOn: html	self		render: self rightPanel fullWidth: true on: html;		render: self rightPanelFolded fullWidth: true on: html!

rightPanel	^ OrderedDictionary new		add: 'Right panel resizable with tabs' -> #renderRightPanelOn:;		yourself!

rightPanelFolded	^ OrderedDictionary new		add: 'Right panel folded' -> #renderRightPanelFoldedOn:;		yourself!

warningMessage	^ 'This extension is not available in the Gemstone version of this project. This is due to the lack of Traits on Gemstone. You can reproduce it by flattening the Traits of the project in your project.'! !
!MDLRightTabsPanelScreen categoriesFor: #renderRightPanelFoldedOn:!demos!public! !
!MDLRightTabsPanelScreen categoriesFor: #renderRightPanelOn:!demos!public! !
!MDLRightTabsPanelScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLRightTabsPanelScreen categoriesFor: #rightPanel!public!sections! !
!MDLRightTabsPanelScreen categoriesFor: #rightPanelFolded!public!sections! !
!MDLRightTabsPanelScreen categoriesFor: #warningMessage!accessing!public! !

!MDLRightTabsPanelScreen class methodsFor!

description	^ 'Extension to create a browser with a resizable right panel with tabs.'!

icon	^ 'extRightPanelPng'!

title	^ 'Right panel with tabs'! !
!MDLRightTabsPanelScreen class categoriesFor: #description!accessing!public! !
!MDLRightTabsPanelScreen class categoriesFor: #icon!accessing!public! !
!MDLRightTabsPanelScreen class categoriesFor: #title!accessing!public! !

