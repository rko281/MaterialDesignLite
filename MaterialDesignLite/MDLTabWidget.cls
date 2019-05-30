"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLTabWidget
	instanceVariableNames: 'tabs'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabWidget guid: (GUID fromString: '{e21980cf-a55e-4f78-96f2-299ada1d262d}')!
MDLTabWidget comment: 'I represent a simple widget to use mdlTable'!
!MDLTabWidget categoriesForClass!Material-Design-Lite-Widgets-Tab! !
!MDLTabWidget methodsFor!

addTabNamed: aString content: anObject	tabs at: aString put: anObject!

initialize	super initialize.	tabs := OrderedDictionary new!

renderContentOn: html	self ensureId: html.	html mdlTabs		id: self id;		with: [ | tabIds |			tabIds := Dictionary new.			html				mdlTabBar: [ tabs						keysAndValuesDo: [ :label :tabContent | 							html mdlTab								url: '#' , (tabIds at: tabContent ifAbsentPut: [ html nextId ]);								isActiveIf: (tabs indexOfKey: label) = 1;								with: label ] ].			tabs				keysAndValuesDo: [ :label :tabContent | 					html mdlTabsPanel						id: (tabIds at: tabContent);						isActiveIf: (tabs indexOfKey: label) = 1;						with: tabContent ] ]! !
!MDLTabWidget categoriesFor: #addTabNamed:content:!adding!public! !
!MDLTabWidget categoriesFor: #initialize!initialization!public! !
!MDLTabWidget categoriesFor: #renderContentOn:!public!rendering! !

