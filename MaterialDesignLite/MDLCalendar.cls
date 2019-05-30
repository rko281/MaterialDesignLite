﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MDLCalendar
	instanceVariableNames: 'currentDate firstDayOfWeekIndex yearsInterval'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCalendar guid: (GUID fromString: '{71bc0d5b-c6a7-49dc-8f5e-155d1d5a7e62}')!
MDLCalendar comment: 'firstDayOfWeekIndex is the index of the first day of the week in the representation, 7 being saturday and 1 sunday'!
!MDLCalendar categoriesForClass!Material-Design-Lite-Widgets-Calendar! !
!MDLCalendar methodsFor!

currentDate

currentDate: anObject

daysForWeek: i

firstDayOfWeekIndex

firstDayOfWeekIndex: anInteger

goToMonth: anIndex

goToYear: aNumber

initialize

printDateForHeader

selectNextMonth

selectNextYears

selectPreviousMonth

selectPreviousYears

yearsInterval
!MDLCalendar categoriesFor: #currentDate!accessing!public! !
!MDLCalendar categoriesFor: #currentDate:!accessing!public! !
!MDLCalendar categoriesFor: #daysForWeek:!computing weeks!public! !
!MDLCalendar categoriesFor: #firstDayOfWeekIndex!accessing!public! !
!MDLCalendar categoriesFor: #firstDayOfWeekIndex:!accessing!public! !
!MDLCalendar categoriesFor: #goToMonth:!accessing!public! !
!MDLCalendar categoriesFor: #goToYear:!accessing!public! !
!MDLCalendar categoriesFor: #initialize!initialization!public! !
!MDLCalendar categoriesFor: #printDateForHeader!printing!public! !
!MDLCalendar categoriesFor: #selectNextMonth!accessing!public! !
!MDLCalendar categoriesFor: #selectNextYears!accessing!public! !
!MDLCalendar categoriesFor: #selectPreviousMonth!accessing!public! !
!MDLCalendar categoriesFor: #selectPreviousYears!accessing!public! !
!MDLCalendar categoriesFor: #yearsInterval!accessing!public! !
