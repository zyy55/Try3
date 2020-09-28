"
Instance Variables
	eur10:		<Object>
	eur20:		<Object>
	eur5:		<Object>


    Implementation Points
"
Class {
	#name : #PastaTest,
	#superclass : #TestCase,
	#instVars : [
		'eur5',
		'eur10',
		'eur20'
	],
	#category : #Pasta2020
}

{ #category : #initialization }
PastaTest >> setUp [
	eur5 := 5 euro.
	eur10 := 10 euro.
	eur20 := 20 euro.
	
]

{ #category : #tests }
PastaTest >> testIguals [
	self assert: eur5 = eur5.
	self assert: eur10 = 10 euro.
	self assert: eur10 ~= eur20.
	
]

{ #category : #tests }
PastaTest >> testSuma [
	self assert: 5 euro + 5 euro = 10 euro.
	self assert: eur20 = (eur10 + eur10).
	self assert: eur5 +eur10 = 15 euro.
	self assert: eur5 + eur5 + eur5 + eur5  = eur20 .
]
