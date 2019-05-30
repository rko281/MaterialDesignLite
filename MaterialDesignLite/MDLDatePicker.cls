"Filed out from Dolphin Smalltalk 7"!

MDLFlatDatePicker subclass: #MDLDatePicker
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDatePicker guid: (GUID fromString: '{2abd3c4e-6c1c-4eca-aa7e-c97839185ee2}')!
MDLDatePicker comment: 'I am a date picker embebded in a MDLCard for a better display.'!
!MDLDatePicker categoriesForClass!Material-Design-Lite-Widgets-Calendar! !
!MDLDatePicker methodsFor!

containerClass	^ 'mdl-calendar-card'!

renderCalendarOn: html	html		render:			(MDLCardWidget new				shadow: 2;				class: 'mdl-calendar-widget';				addProperties: properties;				primaryColorTitle: self calendar printDateForHeader;				addTextContainer: [ self renderCalendarContentOn: html ];				yourself)! !
!MDLDatePicker categoriesFor: #containerClass!accessing!public! !
!MDLDatePicker categoriesFor: #renderCalendarOn:!public!rendering! !

