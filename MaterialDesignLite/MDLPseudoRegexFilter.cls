"Filed out from Dolphin Smalltalk 7"!

MDLAbstractFilter subclass: #MDLPseudoRegexFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPseudoRegexFilter guid: (GUID fromString: '{1a91a650-e410-4b71-9491-8dab3fca2471}')!
MDLPseudoRegexFilter comment: 'MDLPseudoRegexFilter class	instanceVariableNames: '''''!
!MDLPseudoRegexFilter categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLPseudoRegexFilter class methodsFor!

adaptPattern: aPattern	^ String		streamContents: [ :s | 			(aPattern includes: $*)				ifFalse: [ s nextPutAll: '.*' ].			s nextPutAll: ('.*' join: ($* split: aPattern)).			(aPattern includes: $*)				ifFalse: [ s nextPutAll: '.*' ] ]!

formatedElement: aString matches: aRegex	^ aRegex matches: aString!

selectMatchingFrom: aCollection format: aFormatBlock with: aPattern	| regex |	regex := (self adaptPattern: aPattern) asRegexIgnoringCase.	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: regex ]! !
!MDLPseudoRegexFilter class categoriesFor: #adaptPattern:!accessing!public! !
!MDLPseudoRegexFilter class categoriesFor: #formatedElement:matches:!accessing!public! !
!MDLPseudoRegexFilter class categoriesFor: #selectMatchingFrom:format:with:!accessing!public! !

