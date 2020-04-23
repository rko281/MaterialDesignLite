"Filed out from Dolphin Smalltalk 7"!

MDLTableColumnDescription subclass: #MDLButtonColumnDescription
	instanceVariableNames: 'onClickBlock iconName tooltip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLButtonColumnDescription guid: (GUID fromString: '{9c5b4703-f776-4533-ac55-dfb0ce9eca1b}')!
MDLButtonColumnDescription comment: 'I model a button column.I add a button to each row which should perform an action concerning the row.I perform my action in a callback which means that the page is refreshed when a button is clicked.My #onClickBlock has a single argument: the row on which the action should be applied.A #tooltip can bet set to display useful information to user about the purpose of my buttons.'!
!MDLButtonColumnDescription categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLButtonColumnDescription methodsFor!

iconName	^ iconName!

iconName: anObject	iconName := anObject!

initialize	super initialize.	"Initialize with a behaviour that does nothing."	self onClickBlock: [  ]!

onClickBlock	^ onClickBlock!

onClickBlock: anObject	onClickBlock := anObject!

render: row on: html	| buttonId |	html mdlTableCell		class: 'mdl-table-widget__cell--button';		with: [ html mdlAnchorButton				id: (buttonId := self generateIdUsing: html);				callback: [ self onClickBlock value: row ];				icon: self iconName ].		self renderTooltipFor: buttonId on: html!

renderHeadingOn: html	(super renderHeadingOn: html)		class: 'mdl-table-widget__cell--button';		nonNumerical;		with: self title.!

renderTooltipFor: buttonId on: html	self tooltip ifNil: [ ^ self ].	html mdlTooltip		for: buttonId;		with: [ html text: self tooltip ]!

tooltip	^ tooltip!

tooltip: anObject	tooltip := anObject! !
!MDLButtonColumnDescription categoriesFor: #iconName!accessing!public! !
!MDLButtonColumnDescription categoriesFor: #iconName:!accessing!public! !
!MDLButtonColumnDescription categoriesFor: #initialize!initialization!public! !
!MDLButtonColumnDescription categoriesFor: #onClickBlock!accessing!public! !
!MDLButtonColumnDescription categoriesFor: #onClickBlock:!accessing!public! !
!MDLButtonColumnDescription categoriesFor: #render:on:!public!rendering! !
!MDLButtonColumnDescription categoriesFor: #renderHeadingOn:!public!rendering! !
!MDLButtonColumnDescription categoriesFor: #renderTooltipFor:on:!public!rendering! !
!MDLButtonColumnDescription categoriesFor: #tooltip!accessing!public! !
!MDLButtonColumnDescription categoriesFor: #tooltip:!accessing!public! !

