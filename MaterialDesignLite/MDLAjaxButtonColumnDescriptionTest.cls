"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLAjaxButtonColumnDescriptionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAjaxButtonColumnDescriptionTest guid: (GUID fromString: '{490f8a53-7318-4ad7-9163-14134e9a52c0}')!
MDLAjaxButtonColumnDescriptionTest comment: 'A MDLAjaxButtonColumnDescriptionTest is a test class for testing the behavior of MDLAjaxButtonColumnDescription'!
!MDLAjaxButtonColumnDescriptionTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Table! !
!MDLAjaxButtonColumnDescriptionTest methodsFor!

testRenderOn	|columnDescription|	columnDescription := MDLAjaxButtonColumnDescription new									iconName: 'delete';									yourself.										self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td><label class="mdl-button mdl-js-button mdl-table-widget__cell--button mdl-button--icon" id="id1" onclick="$.noop" type="submit"><i class="material-icons">delete</i></label></td>'!

testRenderOnWithTooltip	|columnDescription|	columnDescription := MDLAjaxButtonColumnDescription new									iconName: 'delete';									tooltip: 'Delete the row.';									yourself.										self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td><label class="mdl-button mdl-js-button mdl-table-widget__cell--button mdl-button--icon" id="id1" onclick="$.noop" type="submit"><i class="material-icons">delete</i></label></td><span class="mdl-tooltip" for="id1">Delete the row.</span>'! !
!MDLAjaxButtonColumnDescriptionTest categoriesFor: #testRenderOn!public!test! !
!MDLAjaxButtonColumnDescriptionTest categoriesFor: #testRenderOnWithTooltip!public!test! !

