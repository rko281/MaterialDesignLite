"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLApplicationTest
	instanceVariableNames: 'app'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLApplicationTest guid: (GUID fromString: '{6c270df6-2a96-4ab0-8175-a7d28c71de91}')!
MDLApplicationTest comment: ''!
!MDLApplicationTest categoriesForClass!Material-Design-Lite-Core-Tests! !
!MDLApplicationTest methodsFor!

setUp	super setUp.	app := MDLApplication new!

testAddScreen	| screen |	self assert: app screens size equals: 0.	screen := WAComponent new.	app addScreen: screen.	self assert: app screens size equals: 1.	self assert: app screens anyOne equals: screen!

testPrimaryColorSecondaryColor	app primaryColor: MDLColor pink secondaryColor: MDLColor orange.	self assert: app colors equals: 'pink-orange'!

testRemoveScreen	| screen |	screen := WAComponent new.	app addScreen: screen.	self assert: app screens size equals: 1.	app removeScreen: screen.	self assert: app screens isEmpty! !
!MDLApplicationTest categoriesFor: #setUp!public!running! !
!MDLApplicationTest categoriesFor: #testAddScreen!public!tests! !
!MDLApplicationTest categoriesFor: #testPrimaryColorSecondaryColor!public!tests! !
!MDLApplicationTest categoriesFor: #testRemoveScreen!public!tests! !

