Top level design description:

UltraSonic Top: Kinda done 
	- This component will handle triggering and reading in the echo from the sensor. 
	- This component will handle sending out requests to UART in the form of three output bytes
		- X"A" - Object is close and we should chime constantly
		- X"B" - object is near and we should chime at 125 ms intervals
		- X"C" - object is far and we should chime at 250 ms intervals
		- X"0" - no object is detected, do not chime
	- This component will send haptic requests to the servo component in the form of three byte inputs on the FPGA
		- X"A" - object is close and we should vibrate constantly
		- X"B" - object is near and we should vibrate at 125 ms intervals
		- X"C" - object is far and we should NOT vibrate
		- X"0" - no object, do not vibrate
	- This component will send the distance calculated data to the 7 segement component for display
		- This component will send a go signal for calculation to the 7 segment component
		
Servo Top: done
	- This component will read in a 12.5 Mhz clock from the clk divider
	- This component will read in clr from the project top
	- This component will read in an 8 bit signal from "UltraSonic Top" to determine which haptic interval to use
	- This component will output to the FPGA's 'jd1' port.
	
UART Top: todo
	- This component will read in a 12.5 Mhz clock
	- This componrnt will read in a 3 bit signal from the 'UltraSonic Top'
	- This component will output the 4 bit to the FPGA 'jc1' port via UART.
	
	
	uartSelect(2:0) <= far & near & close
	go <= far xor near xor close;
	
	mux (uartSelect)
	if uartSelect = '001' then =>  TxData <= X"A"
	elsif uartSelect = '010' then => TxData <= X"B"
	elsif uartSelect = '100' then => TxData <= X"C"
	
	
	
Segment Top: done
