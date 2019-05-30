"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLFlatDatePicker
	instanceVariableNames: 'daysList calendar callback onCompleteScript'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFlatDatePicker guid: (GUID fromString: '{03e1ee20-e55b-49e0-8f92-00f1873101e0}')!
MDLFlatDatePicker comment: 'I am a component displaying a calendar to let the user pick a date.'!
!MDLFlatDatePicker categoriesForClass!Material-Design-Lite-Widgets-Calendar! !
!MDLFlatDatePicker methodsFor!

calendar	^ calendar!

calendar: anObject	calendar := anObject!

callback: aOneArgBlock	aOneArgBlock argumentCount ~= 1		ifTrue: [ ^ self error: '1 argument expected' ].	callback := aOneArgBlock!

containerClass	^ 'mdl-calendar'!

currentDate	^ self calendar currentDate!

currentDate: aDate	self calendar currentDate: aDate!

daysList	^ daysList!

displayDate: aDate on: html	html mdlButton		class: 'mdl-color-text--primary' if: (self isTodayAndNotSelected: aDate);		class: 'mdl-color-text--primary-contrast mdl-color--primary' if: (self selectedDateIs: aDate);		class: 'disabled' if: (self isInCurrentMonth: aDate) not;		rippleEffect;		icon;		onClick: (self jsUpdateDate: aDate on: html);		with: aDate dayOfMonth greaseString!

goToMonth: anObject	calendar goToMonth: anObject!

goToNextMonth	self calendar selectNextMonth!

goToNextYears	self calendar selectNextYears!

goToPreviousMonth	self calendar selectPreviousMonth!

goToPreviousYears	self calendar selectPreviousYears!

initialize	super initialize.	daysList := {'S' . 'M' . 'T' . 'W' . 'T' . 'F' . 'S'}.	calendar := MDLCalendar new.	onCompleteScript := ''!

isInCurrentMonth: aDate	^ aDate asMonth = self currentDate asMonth!

isTodayAndNotSelected: aDate	^ aDate = Date today and: [ aDate ~= self currentDate ]!

jsGoToMonth: aMonth on: html	^ html jQuery ajax		callback: [ self goToMonth: aMonth ];		onComplete: (self jsOnCompleteScriptOn: html)!

jsOnCompleteScript	^ self onCompleteScript js!

jsOnCompleteScriptOn: html	^ (html jQuery id: self id) load		html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ];		onComplete: self jsOnCompleteScript!

jsUpdateDate: aDate on: html	^ html jQuery ajax		callback: [ callback value: aDate.			self currentDate: aDate ];		onComplete: (self jsOnCompleteScriptOn: html)!

onCompleteScript	^ onCompleteScript!

onCompleteScript: anObject	onCompleteScript := anObject!

renderButtonNamed: aString renderingMethod: aSymbol on: html	html mdlButton		rippleEffect;		onClick: (((html jQuery id: self id) find: '.mdl-card__supporting-text') load html: [ :ajaxHtml | self perform: aSymbol with: ajaxHtml ]);		with: aString!

renderButtonWithIcon: anIcon action: aSymbol on: html	html		mdlCellDesktop: 2		tablet: 1		phone: 1		with: [ html mdlButton				onClick:					(html jQuery ajax						callback: [ self perform: aSymbol ];						onComplete:							((html jQuery id: self id) load								html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));				rippleEffect;				style: 'color: rgba(0,0,0,0.7)';				icon: anIcon ]!

renderCalendarBodyOn: html	html table		class: 'mdl-textfield--full-width';		with: [ self renderDaysOn: html.			self renderWeeksOn: html ]!

renderCalendarContentOn: html	html mdlGrid		style: 'text-align: center; font-size: 14px; line-height:2; color: rgba(0,0,0,1)';		with: [ 			self renderCalendarHeaderOn: html.			html				mdlCellDesktop: 12				tablet: 8				phone: 4				with: [ self renderCalendarBodyOn: html ] ]!

renderCalendarHeaderOn: html	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.	self renderCurrentMonthOn: html.	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html!

renderCalendarOn: html	self renderCalendarTitleOn: html.	html div		class: 'mdl-card__supporting-text';		with: [ self renderCalendarContentOn: html ]!

renderCalendarTitleOn: html	html div		mdlBackgroundColorPrimary;		class: 'mdl-calendar__title mdl-color-text--primary-contrast';		with: [ html heading				level3;				with: self calendar printDateForHeader ]!

renderContentOn: html	self ensureId: html.	html div		id: self id;		class: self containerClass;		with: [ self renderCalendarOn: html ]!

renderCurrentMonthOn: html	html		mdlCellDesktop: 8		tablet: 6		phone: 2		with: [ self				renderButtonNamed: self currentDate monthAbbreviation				renderingMethod: #renderMonthesOn:				on: html.			html space.			self				renderButtonNamed: self currentDate year greaseString				renderingMethod: #renderYearsOn:				on: html ]!

renderDate: aDate on: html	html tableData with: [ self displayDate: aDate on: html ]!

renderDaysOn: html	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].	html tableHead: [ html tableRow: [ self daysList do: [ :day |  html tableHeading class: 'mdl-color-text--grey-600'; with: day ] ] ]!

renderMonthesOn: html	html mdlGrid		mdlTypographyTextCenter;		with: [ Date monthNames				do: [ :aString | 					html mdlCell						class: 'month-cell';						class: 'active' if: aString = self currentDate monthName;						onClick: (self jsGoToMonth: (Month indexOfMonth: aString) on: html);						desktopSize: 4;						with: aString ] ]!

renderWeeksOn: html	self currentDate asMonth weeks do: [ :aWeek | html tableRow: [ aWeek dates do: [ :aDate | self renderDate: aDate on: html ] ] ]!

renderYearsHeaderOn: html	self		renderYearsIntervalButtonWithIcon: 'navigate_before'		action: #goToPreviousYears		on: html.	html		mdlCellDesktop: 8		tablet: 6		phone: 2		with:			(String				streamContents: [ :aStream | 					aStream						nextPutAll: self calendar yearsInterval first greaseString;						nextPutAll: ' - ';						nextPutAll: self calendar yearsInterval last greaseString ]).	self		renderYearsIntervalButtonWithIcon: 'navigate_next'		action: #goToNextYears		on: html!

renderYearsIntervalButtonWithIcon: anIcon action: aSymbol on: html	html		mdlCellDesktop: 2		tablet: 1		phone: 1		with: [ html mdlButton				onClick: (((html jQuery id: self id) find: '.mdl-card__supporting-text') load html: [ :ajaxHtml | self perform: aSymbol. self renderYearsOn: ajaxHtml ]);				rippleEffect;				style: 'color: rgba(0,0,0,0.7)';				icon: anIcon ]!

renderYearsOn: html	html mdlGrid		mdlTypographyTextCenter;		with: [ self renderYearsHeaderOn: html.			self calendar yearsInterval				do: [ :aYear | 					html mdlCell						class: 'year-cell';						class: 'active' if: aYear = self currentDate year;						onClick:							(html jQuery ajax								callback: [ self calendar goToYear: aYear ];								onComplete: (self jsOnCompleteScriptOn: html));						desktopSize: 4;						with: aYear greaseString ] ]!

selectedDateIs: aDate	^ aDate = self currentDate! !
!MDLFlatDatePicker categoriesFor: #calendar!accessing!public! !
!MDLFlatDatePicker categoriesFor: #calendar:!accessing!public! !
!MDLFlatDatePicker categoriesFor: #callback:!accessing!public! !
!MDLFlatDatePicker categoriesFor: #containerClass!accessing!public! !
!MDLFlatDatePicker categoriesFor: #currentDate!accessing!public! !
!MDLFlatDatePicker categoriesFor: #currentDate:!accessing!public! !
!MDLFlatDatePicker categoriesFor: #daysList!accessing!public! !
!MDLFlatDatePicker categoriesFor: #displayDate:on:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #goToMonth:!private! !
!MDLFlatDatePicker categoriesFor: #goToNextMonth!private! !
!MDLFlatDatePicker categoriesFor: #goToNextYears!private! !
!MDLFlatDatePicker categoriesFor: #goToPreviousMonth!private! !
!MDLFlatDatePicker categoriesFor: #goToPreviousYears!private! !
!MDLFlatDatePicker categoriesFor: #initialize!initialization!public! !
!MDLFlatDatePicker categoriesFor: #isInCurrentMonth:!public!testing! !
!MDLFlatDatePicker categoriesFor: #isTodayAndNotSelected:!public!testing! !
!MDLFlatDatePicker categoriesFor: #jsGoToMonth:on:!javascript!public! !
!MDLFlatDatePicker categoriesFor: #jsOnCompleteScript!javascript!public! !
!MDLFlatDatePicker categoriesFor: #jsOnCompleteScriptOn:!javascript!public! !
!MDLFlatDatePicker categoriesFor: #jsUpdateDate:on:!javascript!public! !
!MDLFlatDatePicker categoriesFor: #onCompleteScript!accessing!public! !
!MDLFlatDatePicker categoriesFor: #onCompleteScript:!accessing!public! !
!MDLFlatDatePicker categoriesFor: #renderButtonNamed:renderingMethod:on:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderButtonWithIcon:action:on:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderCalendarBodyOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderCalendarContentOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderCalendarHeaderOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderCalendarOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderCalendarTitleOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderContentOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderCurrentMonthOn:!public!rendering! !
!MDLFlatDatePicker categoriesFor: #renderDate:on:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderDaysOn:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderMonthesOn:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderWeeksOn:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderYearsHeaderOn:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderYearsIntervalButtonWithIcon:action:on:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #renderYearsOn:!private/rendering!public! !
!MDLFlatDatePicker categoriesFor: #selectedDateIs:!public!testing! !

