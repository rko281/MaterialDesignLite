"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLStringColumnDescriptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLStringColumnDescriptionTest guid: (GUID fromString: '{7a715764-3f57-4359-92fa-1be1f0640ed1}')!
MDLStringColumnDescriptionTest comment: 'A MDLStringColumnDescriptionTest is a test class for testing the behavior of MDLStringColumnDescription'!
!MDLStringColumnDescriptionTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Table! !
!MDLStringColumnDescriptionTest methodsFor!

testRenderHeadingOn	|columnDescription|	columnDescription := MDLStringColumnDescription new									title: 'non-numeric';									yourself.										self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--string mdl-data-table__cell--non-numeric">non-numeric</th>'!

testRenderOn	|columnDescription|	columnDescription := MDLStringColumnDescription new									evaluation: [ :x | x asString ];									yourself.										self assert: [ :html | columnDescription render: 2 on: html ] generates: '<td id="id1" class="mdl-table-widget__cell--string mdl-data-table__cell--non-numeric">2</td>'! !
!MDLStringColumnDescriptionTest categoriesFor: #testRenderHeadingOn!public!test! !
!MDLStringColumnDescriptionTest categoriesFor: #testRenderOn!public!test! !

