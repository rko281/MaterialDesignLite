"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLButtonColumnDescriptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLButtonColumnDescriptionTest guid: (GUID fromString: '{40e52785-471f-463a-86ca-3436f2fa7620}')!
MDLButtonColumnDescriptionTest comment: 'A MDLButtonColumnDescriptionTest is a test class for testing the behavior of MDLButtonColumnDescription'!
!MDLButtonColumnDescriptionTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Table! !
!MDLButtonColumnDescriptionTest methodsFor!

testRenderHeadingOn	|columnDescription|	columnDescription := MDLButtonColumnDescription new									title: 'callback';									yourself.										self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--button mdl-data-table__cell--non-numeric">callback</th>'!

testRenderOn	|columnDescription|	columnDescription := MDLButtonColumnDescription new									iconName: 'delete';									yourself.										self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td class="mdl-table-widget__cell--button"><a class="mdl-button mdl-js-button mdl-button--icon" id="id1" href="/?2"><i class="material-icons">delete</i></a></td>'!

testRenderOnWithTooltip	|columnDescription|	columnDescription := MDLButtonColumnDescription new									iconName: 'delete';									tooltip: 'Removes the row on server-side.';									yourself.										self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td class="mdl-table-widget__cell--button"><a class="mdl-button mdl-js-button mdl-button--icon" id="id1" href="/?2"><i class="material-icons">delete</i></a></td><span class="mdl-tooltip" for="id1">Removes the row on server-side.</span>'! !
!MDLButtonColumnDescriptionTest categoriesFor: #testRenderHeadingOn!public!test! !
!MDLButtonColumnDescriptionTest categoriesFor: #testRenderOn!public!test! !
!MDLButtonColumnDescriptionTest categoriesFor: #testRenderOnWithTooltip!public!test! !

