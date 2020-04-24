"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLTableWidgetScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTableWidgetScreen guid: (GUID fromString: '{920b09ad-3669-4e04-b022-9e85f7a0b6f6}')!
MDLTableWidgetScreen comment: 'A high-level widget to generate table.'!
!MDLTableWidgetScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLTableWidgetScreen methodsFor!

renderScreenContentOn: html	self render: self table on: html!

renderTableWidgetOn: html	html		render:			(MDLTableWidget new				addNumericColumnNamed: 'Integer' evaluated: [ :x | x ];				addStringColumnNamed: 'String with commas' evaluated: [ :x | x asStringWithCommas ];				addStringColumnNamed: 'As words' evaluated: [ :x | x asWords capitalized ];				addAjaxButtonColumnWithIconName: 'explore'					onClick: [ :htmlCanvas :x | htmlCanvas javascript alert: 'Explore ' , x asString ]					tooltip: 'Explore integer related to the row.';				addButtonColumnWithIconName: 'delete'					onClick: [ :x | 					Transcript						show: x displayString;						show: ' deleted in callback.';						cr ]					tooltip: 'Delete integer in callback.';				collection: (1000 to: 5000 by: 1000);				yourself)!

table	^ OrderedDictionary new		add: 'Table Widget' -> #renderTableWidgetOn:;		yourself! !
!MDLTableWidgetScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTableWidgetScreen categoriesFor: #renderTableWidgetOn:!accessing!public! !
!MDLTableWidgetScreen categoriesFor: #table!accessing!public! !

!MDLTableWidgetScreen class methodsFor!

icon	^ #comptablesPng!

title	^ 'Table widget'! !
!MDLTableWidgetScreen class categoriesFor: #icon!accessing!public! !
!MDLTableWidgetScreen class categoriesFor: #title!accessing!public! !

