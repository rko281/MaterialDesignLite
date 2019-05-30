"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilter subclass: #MDLInsensitiveBeginsWithFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLInsensitiveBeginsWithFilter guid: (GUID fromString: '{6f2e79a9-c047-4d42-b0bf-8ed5b88a25aa}')!
MDLInsensitiveBeginsWithFilter comment: 'MDLInsensitiveBeginsWithFilter class	instanceVariableNames: '''''!
!MDLInsensitiveBeginsWithFilter categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLInsensitiveBeginsWithFilter class methodsFor!

formatedElement: aString matches: aPattern	^ aString asLowercase beginsWith: aPattern asLowercase! !
!MDLInsensitiveBeginsWithFilter class categoriesFor: #formatedElement:matches:!accessing!public! !

