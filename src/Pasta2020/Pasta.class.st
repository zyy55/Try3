"
Instance Variables
	moneda:		<Object>
	quantitat:		<Object>


    Implementation Points
"
Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'moneda',
		'quantitat'
	],
	#category : #Pasta2020
}

{ #category : #'as yet unclassified' }
Pasta class >> moneda: unaMoneda quantitat: unaQuantitat [
	^ self new moneda: unaMoneda; quantitat: unaQuantitat.
]

{ #category : #arithmetic }
Pasta >> + unaPasta [
	^ self moneda = unaPasta moneda
		ifTrue: [ Pasta moneda: self moneda quantitat: (self quantitat + unaPasta quantitat) ]
		ifFalse: [ self error: 'No pots sumar peres i pomes' ]
]

{ #category : #equality }
Pasta >> = unaPasta [
	^ self quantitat = unaPasta quantitat and: [ self moneda = unaPasta moneda ]
]

{ #category : #accessing }
Pasta >> moneda [
	^ moneda
]

{ #category : #accessing }
Pasta >> moneda: unaMoneda [
	moneda := unaMoneda
]

{ #category : #accessing }
Pasta >> quantitat [
	^ quantitat
]

{ #category : #accessing }
Pasta >> quantitat: anObject [
	quantitat := anObject
]
