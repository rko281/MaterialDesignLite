"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilter subclass: #MDLInsensitiveSubstringFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLInsensitiveSubstringFilter guid: (GUID fromString: '{25606ad7-f401-422d-ac7a-d5b5162a7218}')!
MDLInsensitiveSubstringFilter comment: 'MDLInsensitiveSubstringFilter class	instanceVariableNames: '''''!
!MDLInsensitiveSubstringFilter categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLInsensitiveSubstringFilter class methodsFor!

formatedElement: aString matches: aPattern	^ aString asLowercase includesSubstring: aPattern asLowercase! !
!MDLInsensitiveSubstringFilter class categoriesFor: #formatedElement:matches:!accessing!public! !

