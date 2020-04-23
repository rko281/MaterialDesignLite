"Filed out from Dolphin Smalltalk 7"!

MDLButtonColumnDescription subclass: #MDLAjaxButtonColumnDescription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAjaxButtonColumnDescription guid: (GUID fromString: '{8bbaad15-62fe-4f57-97af-5e07143c8bba}')!
MDLAjaxButtonColumnDescription comment: 'I am a button performing its action via AJAX which means that my user control what parts of the page need to be refreshed.My #onClickBlock has two arguments: the html canvas to generate javascript on and the row on which the action should be applied.'!
!MDLAjaxButtonColumnDescription categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLAjaxButtonColumnDescription methodsFor!

initialize	super initialize.	"Initialize with a behaviour that does nothing."	self onClickBlock: [ :html :rowObject | html jQuery noop ]!

render: row on: html	| buttonId |	html mdlTableCell		with: [			html mdlButton				class: 'mdl-table-widget__cell--button';				id: (buttonId := self generateIdUsing: html);				onClick: (self onClickBlock value: html value: row);				labelIcon: self iconName ].		self renderTooltipFor: buttonId on: html! !
!MDLAjaxButtonColumnDescription categoriesFor: #initialize!initialization!public! !
!MDLAjaxButtonColumnDescription categoriesFor: #render:on:!public!rendering! !

