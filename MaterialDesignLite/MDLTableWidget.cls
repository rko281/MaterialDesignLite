"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLTableWidget
	instanceVariableNames: 'columnDescriptions collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableWidget guid: (GUID fromString: '{b42f9c7e-d2f5-42f9-8dc1-4e3ecbbd6156}')!
MDLTableWidget comment: 'I am table widget which aims to provide a high-level API to generate MDL tables.I work by providing myself a #collection which just needs to be iterable (i.e. understand #do:) and a list of column descriptions.I provide a nice API to add colum descriptions (see my ''adding'' protocol).'!
!MDLTableWidget categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLTableWidget methodsFor!

addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock	self addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: nil!

addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip	self addColumn: (MDLAjaxButtonColumnDescription new							title: aString;							iconName: iconName;							onClickBlock: onClickBlock;							tooltip: tooltip;							yourself)!

addAjaxButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip	self addAjaxButtonColumnNamed: '' iconName: iconName onClick: onClickBlock tooltip: tooltip!

addButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip	self addColumn: (MDLButtonColumnDescription new							title: aString;							iconName: iconName;							onClickBlock: onClickBlock;							tooltip: tooltip;							yourself)!

addButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip	self addButtonColumnNamed: '' iconName: iconName onClick: onClickBlock tooltip: tooltip!

addColumn: aColumnDescription	columnDescriptions add: aColumnDescription!

addNumericColumnNamed: aString evaluated: aBlock	self addColumn: (MDLNumericColumnDescription new							title: aString;							evaluation: aBlock;							yourself)!

addStringColumnNamed: aString evaluated: aBlock	self addColumn: (MDLStringColumnDescription new							title: aString;							evaluation: aBlock;							yourself)!

collection	^ collection!

collection: anObject	collection := anObject!

columnDescriptions	^ columnDescriptions!

initialize	super initialize.	columnDescriptions := OrderedCollection new.	collection := #()!

renderContentOn: html	html mdlTable		class: 'mdl-table-widget';		with: [			self renderTableHeadOn: html.			self renderTableBodyOn: html ]!

renderTableBodyOn: html	html tableBody		class: 'mdl-table-widget__body';		with: [ 		self collection do: [ :row | 			html tableRow: [ 				self columnDescriptions do: [ :columnDescription |					columnDescription render: row on: html ] ] ] ]!

renderTableHeadOn: html	html tableHead		class: 'mdl-table-widget__head';		with: [ 		html tableRow: [ 			self columnDescriptions do: [ :column |				column renderHeadingOn: html ] ] ]! !
!MDLTableWidget categoriesFor: #addAjaxButtonColumnNamed:iconName:onClick:!adding!public! !
!MDLTableWidget categoriesFor: #addAjaxButtonColumnNamed:iconName:onClick:tooltip:!adding!public! !
!MDLTableWidget categoriesFor: #addAjaxButtonColumnWithIconName:onClick:tooltip:!adding!public! !
!MDLTableWidget categoriesFor: #addButtonColumnNamed:iconName:onClick:tooltip:!adding!public! !
!MDLTableWidget categoriesFor: #addButtonColumnWithIconName:onClick:tooltip:!adding!public! !
!MDLTableWidget categoriesFor: #addColumn:!adding!public! !
!MDLTableWidget categoriesFor: #addNumericColumnNamed:evaluated:!adding!public! !
!MDLTableWidget categoriesFor: #addStringColumnNamed:evaluated:!adding!public! !
!MDLTableWidget categoriesFor: #collection!accessing!public! !
!MDLTableWidget categoriesFor: #collection:!accessing!public! !
!MDLTableWidget categoriesFor: #columnDescriptions!accessing!public! !
!MDLTableWidget categoriesFor: #initialize!initialization!public! !
!MDLTableWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLTableWidget categoriesFor: #renderTableBodyOn:!public!rendering! !
!MDLTableWidget categoriesFor: #renderTableHeadOn:!public!rendering! !

