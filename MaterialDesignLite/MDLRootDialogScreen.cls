"Filed out from Dolphin Smalltalk 7"!

MDLExtensionsDemo subclass: #MDLRootDialogScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLRootDialogScreen guid: (GUID fromString: '{f5d5beac-9a15-4920-af08-18685b40dc2b}')!
MDLRootDialogScreen comment: 'Description--------------------Screen to render root dialog examples.'!
!MDLRootDialogScreen categoriesForClass!Material-Design-Lite-Demo-Extensions! !
!MDLRootDialogScreen methodsFor!

renderRootDialogOn: html	"Since this extension uses Traits, this code is not really useful. R	ead the code of MDLExampleRootDialogRoot and MDLExampleRootDialogUser to understand how to use the root dialog."	html div		shadow: 2;		with: MDLExampleRootDialogRoot new!

renderScreenContentOn: html	self render: self rootDialog fullWidth: true on: html!

rootDialog	^ OrderedDictionary new		add: 'Root dialog' -> #renderRootDialogOn:;		yourself!

warningMessage	^ 'This extension is not available in the Gemstone version of this project. This is due to the lack of Traits on Gemstone. You can reproduce it by flattening the Traits of the project in your project.'! !
!MDLRootDialogScreen categoriesFor: #renderRootDialogOn:!demos!public! !
!MDLRootDialogScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLRootDialogScreen categoriesFor: #rootDialog!public!sections! !
!MDLRootDialogScreen categoriesFor: #warningMessage!accessing!public! !

!MDLRootDialogScreen class methodsFor!

description	^ 'This extension provides Traits to ease the use of MDL dialogs. The principle is to add an empty dialog at the root of the application, then open it through methods available on any Seaside brush and render the content via ajax. One Trait needs to be used on the root component of the web application to add an empty hidden dialog. A second Trait needs to be used by the components wanting to open a dialog and provide the necessary methods to open the root dialog and to fill its content with ajax.'!

icon	^ 'compdialogPng'!

title	^ 'Root dialog'! !
!MDLRootDialogScreen class categoriesFor: #description!accessing!public! !
!MDLRootDialogScreen class categoriesFor: #icon!accessing!public! !
!MDLRootDialogScreen class categoriesFor: #title!accessing!public! !

