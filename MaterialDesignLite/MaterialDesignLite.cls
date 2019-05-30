"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MaterialDesignLite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MaterialDesignLite guid: (GUID fromString: '{5e679903-3c77-4c82-8bdd-989dc20991c1}')!
MaterialDesignLite comment: 'MaterialDesignLite class	instanceVariableNames: '''''!
!MaterialDesignLite categoriesForClass!Material-Design-Lite-Core! !
!MaterialDesignLite class methodsFor!

mainMenuCommandOn: aBuilder	##(Pragma worldMenu).	(aBuilder item: #MaterialDesignLite)		order: 20;		icon: (self mdlIcon scaledToSize: 16@16)!

mdlIcon	^ PNGReadWriter formFromStream: MDLLibrary default logoPng readStream! !
!MaterialDesignLite class categoriesFor: #mainMenuCommandOn:!public!world/menu! !
!MaterialDesignLite class categoriesFor: #mdlIcon!accessing!public! !

