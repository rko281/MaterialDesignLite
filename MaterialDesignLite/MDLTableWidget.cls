﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLTableWidget
	instanceVariableNames: 'columnDescriptions collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableWidget guid: (GUID fromString: '{b42f9c7e-d2f5-42f9-8dc1-4e3ecbbd6156}')!
MDLTableWidget comment: 'I am table widget which aims to provide a high-level API to generate MDL tables.
!MDLTableWidget categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLTableWidget methodsFor!

addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock

addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip

addAjaxButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip

addButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip

addButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip

addColumn: aColumnDescription

addNumericColumnNamed: aString evaluated: aBlock

addStringColumnNamed: aString evaluated: aBlock

collection

collection: anObject

columnDescriptions

initialize

renderContentOn: html

renderTableBodyOn: html

renderTableHeadOn: html
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
