"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLCalendarScreen
	instanceVariableNames: 'selectedDay'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCalendarScreen guid: (GUID fromString: '{e449e049-1d2c-43b8-ba9e-fd181df3f60e}')!
MDLCalendarScreen comment: 'A calendar in Material Design style to pick a date'!
!MDLCalendarScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLCalendarScreen methodsFor!

datePicker	^ OrderedDictionary new		add: 'Date picker' -> #renderDatePickerOn:;		yourself!

flatDatePicker	^ OrderedDictionary new		add: 'Flat date picker' -> #renderFlatDatePickerOn:;		yourself!

initialize	super initialize.	selectedDay := Date today!

renderDatePickerOn: html	html		render:			(MDLDatePicker new				callback: [ :day | selectedDay := day ];				currentDate: selectedDay;				onCompleteScript: ((html jQuery id: 'selectedDay2') load html: [ :r | 					r text: 'Selected day: ' , selectedDay asString ]);				yourself).	html break.	html div		id: 'selectedDay2';		mdlTypographyFontBold;		mdlTextColorPrimary;		with: 'Selected day: ' , selectedDay asString!

renderFlatDatePickerOn: html	html div		style: 'background-color: white;border: 1px grey solid;';		with:			(MDLFlatDatePicker new				callback: [ :day | selectedDay := day ];				currentDate: selectedDay;				onCompleteScript: ((html jQuery id: 'selectedDay') load html: [ :r | 					r text: 'Selected day: ' , selectedDay asString ]);				yourself).	html break.	html div		id: 'selectedDay';		mdlTypographyFontBold;		mdlTextColorPrimary;		with: 'Selected day: ' , selectedDay asString!

renderScreenContentOn: html	self		render: self datePicker on: html;		render: self flatDatePicker on: html! !
!MDLCalendarScreen categoriesFor: #datePicker!public!sections! !
!MDLCalendarScreen categoriesFor: #flatDatePicker!public!sections! !
!MDLCalendarScreen categoriesFor: #initialize!initialization!public! !
!MDLCalendarScreen categoriesFor: #renderDatePickerOn:!demos!public! !
!MDLCalendarScreen categoriesFor: #renderFlatDatePickerOn:!demos!public! !
!MDLCalendarScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLCalendarScreen class methodsFor!

icon	^ #compcalendarPng!

title	^ 'Date Picker'! !
!MDLCalendarScreen class categoriesFor: #icon!accessing!public! !
!MDLCalendarScreen class categoriesFor: #title!accessing!public! !

