"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLWidget
	instanceVariableNames: 'id value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLWidget guid: (GUID fromString: '{71ab4102-5d4a-4228-a290-7a4b7ef1fabe}')!
MDLWidget comment: ''!
!MDLWidget categoriesForClass!Material-Design-Lite-Widgets! !
!MDLWidget methodsFor!

ensureId: html	self id ifNil: [ self id: html nextId ]!

id	^ id!

id: anObject	id := anObject!

restoreFromSnapshot: anObject	| oldId |	oldId := self id.	super restoreFromSnapshot: anObject.	self id: oldId!

value	^ value!

value: anObject	value := anObject! !
!MDLWidget categoriesFor: #ensureId:!id!public! !
!MDLWidget categoriesFor: #id!accessing!public! !
!MDLWidget categoriesFor: #id:!accessing!public! !
!MDLWidget categoriesFor: #restoreFromSnapshot:!actions!public! !
!MDLWidget categoriesFor: #value!accessing!public! !
!MDLWidget categoriesFor: #value:!accessing!public! !

!MDLWidget class methodsFor!

id: aStringID	^self id: aStringID value: true!

id: aStringID value: aBooleanValue	^self new 		id: aStringID; 		value: aBooleanValue; 		yourself! !
!MDLWidget class categoriesFor: #id:!initialize!public! !
!MDLWidget class categoriesFor: #id:value:!initialize!public! !

