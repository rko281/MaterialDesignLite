"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLTooltip
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTooltip guid: (GUID fromString: '{d95a13fe-7f70-4d6d-ac33-f4e0562062fe}')!
MDLTooltip comment: 'Description--------------------I am a brush to create a MDL tooltip.Example--------------------	html mdlIcon		id: html nextId;		with: ''cloud_upload''.	html mdlTooltip		for: html lastId;		with: [ html text: ''Upload ''.			html strong: ''file.zip'' ]'!
!MDLTooltip categoriesForClass!Material-Design-Lite-Components-Tooltips! !
!MDLTooltip methodsFor!

bottom	self position: #bottom!

for: anId	self attributeAt: 'for' put: anId!

initialize	super initialize.	self class: 'mdl-tooltip'!

large	self class: 'mdl-tooltip--large'!

left	self position: #left!

position: aSymbol	self class: 'mdl-tooltip--' , aSymbol!

right	self position: #right!

tag	^ 'span'!

top	self position: #top! !
!MDLTooltip categoriesFor: #bottom!options!public! !
!MDLTooltip categoriesFor: #for:!initialization!public! !
!MDLTooltip categoriesFor: #initialize!initialization!public! !
!MDLTooltip categoriesFor: #large!options!public! !
!MDLTooltip categoriesFor: #left!options!public! !
!MDLTooltip categoriesFor: #position:!options!public! !
!MDLTooltip categoriesFor: #right!options!public! !
!MDLTooltip categoriesFor: #tag!accessing!public! !
!MDLTooltip categoriesFor: #top!options!public! !

