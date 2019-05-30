"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLSortableTableHeaderState
	instanceVariableNames: 'nextState'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSortableTableHeaderState guid: (GUID fromString: '{35b2afba-8888-4006-98a2-406dcdf37ff6}')!
MDLSortableTableHeaderState comment: ''!
!MDLSortableTableHeaderState categoriesForClass!Material-Design-Lite-Widgets-Table! !
!MDLSortableTableHeaderState methodsFor!

defaultNextState	^ self class defaultNextState!

initializeNextState	self nextState: (self defaultNextState new nextState: (self defaultNextState defaultNextState new nextState: self))!

nextState	^ nextState ifNil: [ self initializeNextState. nextState ]!

nextState: anObject	nextState := anObject!

renderContentOn: html forTable: table columnIndex: i header: header	self subclassResponsibility ! !
!MDLSortableTableHeaderState categoriesFor: #defaultNextState!accessing!public! !
!MDLSortableTableHeaderState categoriesFor: #initializeNextState!initialization!public! !
!MDLSortableTableHeaderState categoriesFor: #nextState!accessing!public! !
!MDLSortableTableHeaderState categoriesFor: #nextState:!accessing!public! !
!MDLSortableTableHeaderState categoriesFor: #renderContentOn:forTable:columnIndex:header:!public!rendering! !

!MDLSortableTableHeaderState class methodsFor!

defaultNextState	^ self subclassResponsibility!

for: element	^ self new element: element! !
!MDLSortableTableHeaderState class categoriesFor: #defaultNextState!accessing!public! !
!MDLSortableTableHeaderState class categoriesFor: #for:!instance creation!public! !

