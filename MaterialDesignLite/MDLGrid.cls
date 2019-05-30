"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLGrid guid: (GUID fromString: '{f7c12e76-fca5-49d3-a2ce-38d56865cba8}')!
MDLGrid comment: 'Description--------------------I am a brush to create a MDL grid.Example--------------------	html		mdlGrid: [ 1 to: 12 do: [ :i | 				html mdlCell					class: ''grid-cell-demo'';					size: 1;					with: 1 ].			1 to: 3 do: [ :i | 				html mdlCell					class: ''grid-cell-demo'';					size: 4;					with: 4 ].			#(6 4 2)				do: [ :int | 					html mdlCell						class: ''grid-cell-demo'';						size: int;						with: int ].			html mdlCell				class: ''grid-cell-demo'';				size: 6;				tabletSize: 8;				with: ''6 (8 tablet)''.			html mdlCell				class: ''grid-cell-demo'';				size: 4;				tabletSize: 6;				with: ''4 (6 tablet)''.			html mdlCell				class: ''grid-cell-demo'';				size: 2;				phoneSize: 4;				with: ''2 (4 phone)'' ]'!
!MDLGrid categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLGrid methodsFor!

initialize	super initialize.	self class: 'mdl-grid'!

noSpacing	self class: 'mdl-grid--no-spacing'! !
!MDLGrid categoriesFor: #initialize!initialization!public! !
!MDLGrid categoriesFor: #noSpacing!options!public! !

