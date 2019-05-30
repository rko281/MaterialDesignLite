"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLCalendarTest
	instanceVariableNames: 'calendar'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCalendarTest guid: (GUID fromString: '{e2770789-4147-43da-a215-e468a0371d18}')!
MDLCalendarTest comment: 'A MDLCalendarTest is a test class for testing the behavior of MDLCalendar'!
!MDLCalendarTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Calendar! !
!MDLCalendarTest methodsFor!

setUp	calendar := MDLCalendar new!

testDaysForWeek2Casual	calendar currentDate: (Date year: 2016 month: 04 day: 10).	self assert: (calendar daysForWeek: 2) equals: (3 to: 9) asArray!

testDaysForWeek2CasualFrenchFormat	calendar currentDate: (Date year: 2016 month: 04 day: 10).	calendar firstDayOfWeekIndex: 2. "Monday"	self assert: (calendar daysForWeek: 2) equals: (4 to: 10) asArray!

testDaysForWeek2WithFirstDayBeingASaturday	calendar currentDate: (Date year: 2016 month: 05 day: 10).	self assert: (calendar daysForWeek: 2) equals: (1 to: 7) asArray!

testDaysForWeekWithFirstDayBeingAMondayFrenchFormat	calendar currentDate: (Date year: 2016 month: 08 day: 10).	calendar firstDayOfWeekIndex: 2.	self assert: (calendar daysForWeek: 1) equals: (25 to: 31) asArray!

testDaysForWeekWithFirstDayBeingASaturday	calendar currentDate: (Date year: 2016 month: 05 day: 10).	self assert: (calendar daysForWeek: 1) equals: #(24 25 26 27 28 29 30)!

testDaysForWeekWithFirstDayBeingAWeekday	calendar currentDate: (Date year: 2016 month: 04 day: 10).	self assert: (calendar daysForWeek: 1) equals: #(27 28 29 30 31 1 2)!

testGoToMonth	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar goToMonth: 6.	self assert: calendar currentDate asMonth equals: (Month month: 6 year: 2016).	self assert: calendar currentDate equals: (Date year: 2016 month: 6 day: 10)!

testGoToYear	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar goToYear: 2017.	self assert: calendar currentDate year equals: 2017.	self assert: calendar currentDate equals: (Date year: 2017 month: 4 day: 10)!

testIntervalAtInitialization	self assert: calendar yearsInterval first equals: (Date today addMonths: -4 * 12) year.	self assert: calendar yearsInterval last equals: (Date today addMonths: 4 * 12) year!

testIntervalSetCurrentDateModifyInterval	calendar currentDate: Date tomorrow.	self assert: calendar yearsInterval first equals: calendar currentDate year - 4.	self assert: calendar yearsInterval last equals: calendar currentDate year + 4!

testPrintDateForHeader	calendar currentDate: (Date year: 2018 month: 6 day: 5).	self assert: calendar printDateForHeader equals: 'Tue, Jun 5'.	calendar currentDate: (Date year: 2018 month: 6 day: 4).	self assert: calendar printDateForHeader equals: 'Mon, Jun 4'.	calendar currentDate: (Date year: 2018 month: 8 day: 8).	self assert: calendar printDateForHeader equals: 'Wed, Aug 8'!

testSelectNextMonth	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar selectNextMonth.	self assert: calendar currentDate asMonth equals: (Month month: 5 year: 2016).	self assert: calendar currentDate equals: (Date year: 2016 month: 5 day: 10)!

testSelectPreviousMonth	calendar currentDate: (Date year: 2016 month: 4 day: 10).	calendar selectPreviousMonth.	self assert: calendar currentDate asMonth equals: (Month month: 3 year: 2016).	self assert: calendar currentDate equals: (Date year: 2016 month: 3 day: 10)! !
!MDLCalendarTest categoriesFor: #setUp!public!running! !
!MDLCalendarTest categoriesFor: #testDaysForWeek2Casual!public!second week! !
!MDLCalendarTest categoriesFor: #testDaysForWeek2CasualFrenchFormat!international!public! !
!MDLCalendarTest categoriesFor: #testDaysForWeek2WithFirstDayBeingASaturday!public!second week! !
!MDLCalendarTest categoriesFor: #testDaysForWeekWithFirstDayBeingAMondayFrenchFormat!international!public! !
!MDLCalendarTest categoriesFor: #testDaysForWeekWithFirstDayBeingASaturday!first week!public! !
!MDLCalendarTest categoriesFor: #testDaysForWeekWithFirstDayBeingAWeekday!first week!public! !
!MDLCalendarTest categoriesFor: #testGoToMonth!public!tests! !
!MDLCalendarTest categoriesFor: #testGoToYear!public!tests! !
!MDLCalendarTest categoriesFor: #testIntervalAtInitialization!public!tests! !
!MDLCalendarTest categoriesFor: #testIntervalSetCurrentDateModifyInterval!public!tests! !
!MDLCalendarTest categoriesFor: #testPrintDateForHeader!public!tests! !
!MDLCalendarTest categoriesFor: #testSelectNextMonth!public!tests! !
!MDLCalendarTest categoriesFor: #testSelectPreviousMonth!public!tests! !

