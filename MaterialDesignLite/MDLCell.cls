"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCell guid: (GUID fromString: '{daf18270-8e94-441f-9c78-2e260b9170a2}')!
MDLCell comment: 'Description--------------------I am a brush to create a MDL cell. A cell should always be used inside a Grid.Cells defines some options:- Possibility to define the size depending on the screen kind (desktop, tablet, phone)- Possibility to add an offset depending on the screen kind- Possibility to reorder the cells depending on the screen kind- Possibility to vertically align the cell at the top, middle or bottom (or stretch it)- Hide the cell on some screen kindsExample--------------------	html		mdlGrid: [ 1 to: 12 do: [ :i | 				html mdlCell					class: ''grid-cell-demo'';					size: 1;					with: 1 ].			1 to: 3 do: [ :i | 				html mdlCell					class: ''grid-cell-demo'';					size: 4;					with: 4 ].			#(6 4 2)				do: [ :int | 					html mdlCell						class: ''grid-cell-demo'';						size: int;						with: int ].			html mdlCell				class: ''grid-cell-demo'';				size: 6;				tabletSize: 8;				with: ''6 (8 tablet)''.			html mdlCell				class: ''grid-cell-demo'';				size: 4;				tabletSize: 6;				with: ''4 (6 tablet)''.			html mdlCell				class: ''grid-cell-demo'';				size: 2;				phoneSize: 4;				with: ''2 (4 phone)'' ]'!
!MDLCell categoriesForClass!Material-Design-Lite-Components-Layout! !
!MDLCell methodsFor!

bottom	"Aligns the cell to the bottom of the parent."		self class: 'mdl-cell--bottom'!

desktopOffset: anInteger	"Adds N columns of whitespace before the cell in desktop mode."		self class: 'mdl-cell--' , anInteger asString , '-offset-desktop'!

desktopOrder: anInteger	"Reorders cell to position N when in desktop mode. Be careful!! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"	self class: 'mdl-cell--order-' , anInteger asString , '-desktop'!

desktopSize: aNumber	"Sets the column size for the cell to N in desktop mode only"		self class: 'mdl-cell--', aNumber asString, '-col-desktop'!

hideDesktop	"When this option is enabled, the cell will not appear on desktop mode."		self class: 'mdl-cell--hide-desktop'!

hidePhone	"When this option is enabled, the cell will not appear on phone mode."		self class: 'mdl-cell--hide-phone'!

hideTablet	"When this option is enabled, the cell will not appear on tablet mode."		self class: 'mdl-cell--hide-tablet'!

initialize	super initialize.	self class: 'mdl-cell'!

middle	"Aligns the cell to the middle of the parent."		self class: 'mdl-cell--middle'!

offset: anInteger	"Adds N columns of whitespace before the cell."		self class: 'mdl-cell--' , anInteger asString , '-offset'!

order: anInteger	"Reorders cell to position N. Be careful!! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"	self class: 'mdl-cell--order-' , anInteger asString!

phoneOffset: anInteger	"Adds N columns of whitespace before the cell in phone mode."		self class: 'mdl-cell--' , anInteger asString , '-offset-phone'!

phoneOrder: anInteger	"Reorders cell to position N when in phone mode. Be careful!! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"	self class: 'mdl-cell--order-' , anInteger asString , '-phone'!

phoneSize: aNumber	"Sets the column size for the cell to N in phone mode only"		self class: 'mdl-cell--', aNumber asString, '-col-phone'!

size: aNumber	"Sets the column size for the cell to N for desktop, table and phone"	self class: 'mdl-cell--', aNumber asString, '-col'!

stretch	"Stretches the cell vertically to fill the parent. This is the default value."		self class: 'mdl-cell--stretch'!

tabletOffset: anInteger	"Adds N columns of whitespace before the cell in tablet mode."		self class: 'mdl-cell--' , anInteger asString , '-offset-tablet'!

tabletOrder: anInteger	"Reorders cell to position N when in tablet mode. Be careful!! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"	self class: 'mdl-cell--order-' , anInteger asString , '-tablet'!

tabletSize: aNumber	"tablet 	Sets the column size for the cell to N in tablet mode only"	self class: 'mdl-cell--', aNumber asString, '-col-tablet'!

top	"Aligns the cell to the top of the parent."			self class: 'mdl-cell--top'! !
!MDLCell categoriesFor: #bottom!options / positionning!public! !
!MDLCell categoriesFor: #desktopOffset:!options / offsets!public! !
!MDLCell categoriesFor: #desktopOrder:!options / order!public! !
!MDLCell categoriesFor: #desktopSize:!options / sizes!public! !
!MDLCell categoriesFor: #hideDesktop!options / hiding!public! !
!MDLCell categoriesFor: #hidePhone!options / hiding!public! !
!MDLCell categoriesFor: #hideTablet!options / hiding!public! !
!MDLCell categoriesFor: #initialize!initialization!public! !
!MDLCell categoriesFor: #middle!options / positionning!public! !
!MDLCell categoriesFor: #offset:!options / offsets!public! !
!MDLCell categoriesFor: #order:!options / order!public! !
!MDLCell categoriesFor: #phoneOffset:!options / offsets!public! !
!MDLCell categoriesFor: #phoneOrder:!options / order!public! !
!MDLCell categoriesFor: #phoneSize:!options / sizes!public! !
!MDLCell categoriesFor: #size:!options / sizes!public! !
!MDLCell categoriesFor: #stretch!options / positionning!public! !
!MDLCell categoriesFor: #tabletOffset:!options / offsets!public! !
!MDLCell categoriesFor: #tabletOrder:!options / order!public! !
!MDLCell categoriesFor: #tabletSize:!options / sizes!public! !
!MDLCell categoriesFor: #top!options / positionning!public! !

