Class {
	#name : #RSChartTest,
	#superclass : #RSTest,
	#category : #'Roassal3-Matplotlib-Tests'
}

{ #category : #tests }
RSChartTest >> testBasic [

	| x |
	x := -10.0 to: 20.0 count: 100.

	RSChart new
    addPlot: (RSScatterPlot new x: x y: (x raisedTo: 3));
    addPlot: (RSLinePlot new x: x y: (x raisedTo: 2));
	addDecoration: RSHorizontalTick new;
	addDecoration: RSVerticalTick new;
	build
]

{ #category : #tests }
RSChartTest >> testWithWeirdValues [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesBar [
	
	| values g d line c |
	self skip.
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSScatterPlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLine [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 2.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks [

	| values g d line c |
	values := {Float infinity negated. Float infinity negated. 0.30102999566398114. 0.47712125471966244}.
	g := RSChart new.
	d := RSLinePlot new y: values.
	g addPlot: d.
	g addDecoration: RSHorizontalTick new.
	g addDecoration: RSVerticalTick new.
	g build.
	c := g canvas.
	
	self assert: c numberOfShapes equals: 20.
	self assert: c shapes first class equals: RSBox.
	
	line := c shapes second.
	self assert: line controlPoints size equals: 2.
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks2 [
	| x g d c labels |
	x := { -5 . 0 . 1 . 2 }.
	g := RSChart new.
	d := RSLinePlot new x: x y: x log.
	g addPlot: d.
	g addDecoration: RSVerticalTick new.
	g build.
	
	self assert: g minValueX equals: -5.
	self assert: g minValueY equals: 0.

	self assert: g maxValueX equals: 2.
	self assert: g maxValueY equals: 8 / 25.

	c := g canvas.
	
	labels := c shapes select: [ :s | s class == RSLabel ].
	self assert: labels first position y <= 0
	
]

{ #category : #tests }
RSChartTest >> testWithWeirdValuesLineWithTicks3 [
	| x g d c labels |
	x := -5 to: 5 by: 0.1.
	self skip.
	g := RSChart new.
	d := RSLinePlot new x: x y: x log.
	g addPlot: d.
	g addDecoration: RSVerticalTick new.
	g build.
	
	self assert: g minValueX equals: -5.
	self assert: g minValueY closeTo: -1.0000000000000044.

	self assert: g maxValueX equals: 5.
	self assert: g maxValueY equals: 4 / 5.

	c := g canvas.
	
	labels := c shapes select: [ :s | s class == RSLabel ].
	self assert: labels first position y <= 0
	
]
