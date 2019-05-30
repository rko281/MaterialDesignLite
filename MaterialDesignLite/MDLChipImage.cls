"Filed out from Dolphin Smalltalk 7"!

WAImageTag subclass: #MDLChipImage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipImage guid: (GUID fromString: '{1809f287-79e1-4baa-ace0-1de064b4cbf5}')!
MDLChipImage comment: 'Description--------------------I am a tag to display an image on a mdl chip.Example--------------------	"A Chip with an image"	html mdlChip		deleteCallback: [ self deleteSelectedComponent ];		with: [ 					html mdlChipImage						url: ''https://lh4.googleusercontent.com/-ToY4At__mZ4/AAAAAAAAAAI/AAAAAAAAAF0/Ah1JqF_XDcc/photo.jpg?sz=128'';						altText: ''Profile image''.					html text: ''Example Chip'' ].'!
!MDLChipImage categoriesForClass!Material-Design-Lite-Components-Chips! !
!MDLChipImage methodsFor!

with: anObject	self beChipDecoration. "Cannot do it at the initialization because it need the canvas."	super with: anObject! !
!MDLChipImage categoriesFor: #with:!public! !

