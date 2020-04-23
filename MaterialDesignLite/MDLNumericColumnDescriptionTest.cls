"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLNumericColumnDescriptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNumericColumnDescriptionTest guid: (GUID fromString: '{5409d280-f79c-4e49-9a44-da1b47dc24a2}')!
MDLNumericColumnDescriptionTest comment: 'A MDLNumericColumnDescriptionTest is a test class for testing the behavior of MDLNumericColumnDescription'!
!MDLNumericColumnDescriptionTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Table! !
!MDLNumericColumnDescriptionTest methodsFor!

testRenderHeadingOn	|columnDescription|	columnDescription := MDLNumericColumnDescription new									title: 'numeric'									yourself.										self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--numeric">numeric</th>'!

testRenderOn	|columnDescription|	columnDescription := MDLNumericColumnDescription new									evaluation: [ :x | x * 2 ];									yourself.										self assert: [ :html | columnDescription render: 2 on: html ] generates: '<td id="id1" class="mdl-table-widget__cell--numeric">4</td>'! !
!MDLNumericColumnDescriptionTest categoriesFor: #testRenderHeadingOn!public!test! !
!MDLNumericColumnDescriptionTest categoriesFor: #testRenderOn!public!test! !

