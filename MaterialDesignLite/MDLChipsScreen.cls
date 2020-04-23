"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLChipsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipsScreen guid: (GUID fromString: '{50c487d8-93ea-4c04-ba3b-ee7bfc690dc0}')!
MDLChipsScreen comment: 'Chips represent complex entities in small blocks, such as a contact.'!
!MDLChipsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLChipsScreen methodsFor!

imageChips	^ OrderedDictionary new		add: 'Iconned Chip' -> #renderMdlIconChipOn:;		add: 'Image Chip' -> #renderImageChipOn:;		add: 'Contact Chip' -> #renderContactChipOn:;		add: 'Contact with Color Chip' -> #renderContactColorChipOn:;		yourself!

renderAjaxRemovableChipOn: html	html mdlChip		ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert("Deleted")'; "successHook is optional."		with: [ html mdlChipText: 'Example Chip' ]!

renderContactChipOn: html	html mdlChip		deleteCallback: [ 'Component deleted' crLog ];		with: [ 			html mdlChipContact				hexColor: '009587';				with: 'C'.			html mdlChipText: 'Example Chip' ]!

renderContactColorChipOn: html	html mdlChip		deleteCallback: [ 'Component deleted' crLog ];		with: [ 			html mdlChipContact				color: (MDLColor tint: #red code: '200');				with: 'CF'.			html mdlChipText: 'Example Chip' ]!

renderImageChipOn: html	html mdlChip		deleteCallback: [ 'Component deleted' crLog ];		with: [ 			html mdlChipImage				url: (MDLDemoLibrary urlOf: 'chipImageJpg');				altText: 'Profile image'.			html mdlChipText: 'Example Chip' ]!

renderMdlIconChipOn: html	html mdlChip		deleteCallback: [ 'Component deleted' crLog ];		with: [ 			html mdlIcon				chipIcon;				with: #accessibility.			html mdlChipText: 'Example Chip' ]!

renderRemovableChipOn: html	html mdlChip		deleteCallback: [ 'Component deleted' crLog ];		with: [ html mdlChipText: 'Example Chip' ]!

renderScreenContentOn: html	self		render: self simpleChips on: html;		render: self imageChips on: html!

renderSimpleChipOn: html	html mdlChip: [ html mdlChipText: 'Example Chip' ]!

simpleChips	^ OrderedDictionary new		add: 'Simple Chip' -> #renderSimpleChipOn:;		add: 'Deletable Chip' -> #renderRemovableChipOn:;		add: 'Deletable Ajax Chip' -> #renderAjaxRemovableChipOn:;		yourself! !
!MDLChipsScreen categoriesFor: #imageChips!public!sections! !
!MDLChipsScreen categoriesFor: #renderAjaxRemovableChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderContactChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderContactColorChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderImageChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderMdlIconChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderRemovableChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLChipsScreen categoriesFor: #renderSimpleChipOn:!demos!public! !
!MDLChipsScreen categoriesFor: #simpleChips!public!sections! !

!MDLChipsScreen class methodsFor!

icon	^ 'compchipsPng'!

title	^ 'Chips'! !
!MDLChipsScreen class categoriesFor: #icon!accessing!public! !
!MDLChipsScreen class categoriesFor: #title!accessing!public! !

