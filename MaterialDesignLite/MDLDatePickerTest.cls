"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLDatePickerTest
	instanceVariableNames: 'calendar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDatePickerTest guid: (GUID fromString: '{786c8c55-6b03-469a-a015-5b76ff337081}')!
MDLDatePickerTest comment: ''!
!MDLDatePickerTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Calendar! !
!MDLDatePickerTest methodsFor!

setUp	super setUp.	calendar := MDLDatePicker new!

testDisplayDateOn	| today tommorrow afterTommorrow nextMonth |	today := Date today.	tommorrow := (DateAndTime today + 1 days) asDate.	afterTommorrow := (DateAndTime today + 2 days) asDate.	nextMonth := (DateAndTime today + 31 days) asDate.	calendar currentDate: tommorrow.	self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary'.	self assert: [ :html | calendar displayDate: today on: html ] generatedIncludes: 'mdl-color-text--primary'.		self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.	self assert: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.		self deny: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'disabled'.		calendar currentDate: today.	self assert: [ :html | calendar displayDate: nextMonth on: html ] generatedIncludes: 'disabled'!

testGoToNextMonth	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar goToNextMonth.	self assert: calendar currentDate asMonth equals: (Month month: 5 year: 2016).	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)!

testGoToPreviousMonth	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar goToPreviousMonth.	self assert: calendar currentDate asMonth equals: (Month month: 3 year: 2016).	self assert: calendar currentDate equals: (Date year: 2016 month: 3 day: 10)!

testId	self deny: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'.	calendar id: 'testId'.	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'!

testIdIsEnsured	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="id1"'!

testIsInCurrentMonth	calendar currentDate: (Date year: 2018 month: 6 day: 5).	self assert: (calendar isInCurrentMonth: (Date year: 2018 month: 6 day: 5)).	self deny: (calendar selectedDateIs: (Date year: 2018 month: 7 day: 4))!

testIsTodayAndNotSelected	| today tommorow |	today := Date today.	tommorow := (DateAndTime today + 1 days) asDate.	calendar currentDate: today.	self deny: (calendar isTodayAndNotSelected: today).	calendar currentDate: tommorow.	self assert: (calendar isTodayAndNotSelected: today).	self deny: (calendar isTodayAndNotSelected: tommorow)!

testJsOnCompleteScript	calendar onCompleteScript: 'console.log("test")' js.	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'.	calendar onCompleteScript: 'console.log("test")'.	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'!

testRenderMonthesOn	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludesAll: Date monthNames.	calendar currentDate: (Date year: 2018 month: 6 day: 5).	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludes: 'May</div><div class="mdl-cell month-cell mdl-color-text--primary mdl-color-text--primary-contrast mdl-color--primary active mdl-cell--4-col-desktop"' "Needs to be active and get additional classes to show it selected."!

testRenderYearsOn	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludesAll: (calendar calendar yearsInterval collect: #asString).	calendar currentDate: (Date year: 2018 month: 6 day: 5).	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludes: '2017</div><div class="mdl-cell year-cell mdl-color-text--primary mdl-color-text--primary-contrast mdl-color--primary active mdl-cell--4-col-desktop"' "2018 need to be active"!

testSelectedDateIs	calendar currentDate: (Date year: 2018 month: 6 day: 5).	self assert: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 5)).	self deny: (calendar selectedDateIs: (Date year: 2018 month: 6 day: 4))! !
!MDLDatePickerTest categoriesFor: #setUp!public!running! !
!MDLDatePickerTest categoriesFor: #testDisplayDateOn!public!tests! !
!MDLDatePickerTest categoriesFor: #testGoToNextMonth!public!tests! !
!MDLDatePickerTest categoriesFor: #testGoToPreviousMonth!public!tests! !
!MDLDatePickerTest categoriesFor: #testId!public!tests! !
!MDLDatePickerTest categoriesFor: #testIdIsEnsured!public!tests! !
!MDLDatePickerTest categoriesFor: #testIsInCurrentMonth!public!tests! !
!MDLDatePickerTest categoriesFor: #testIsTodayAndNotSelected!public!tests! !
!MDLDatePickerTest categoriesFor: #testJsOnCompleteScript!public!tests! !
!MDLDatePickerTest categoriesFor: #testRenderMonthesOn!public!tests! !
!MDLDatePickerTest categoriesFor: #testRenderYearsOn!public!tests! !
!MDLDatePickerTest categoriesFor: #testSelectedDateIs!public!tests! !

