# UART


## Signals

### Receiver

* RRD - __Receiver Register Disable__
    * Input
    * 1-bit
    * Force RBR to 'Z' when '1'.
* RBR - __Receiver Buffer Register__
    * Output
    * 8-bit
    * Un-serialize the received data and output it in 8-bit words.
* PE - __Parity Error__
    * Output
    * 1-bit
    * '1' when received parity does not match parity programmed by control bits.
* FE - __Framing Error__
    * Output
    * 1-bit
    * '1' when the first stop bit is invalid.
* OE - __Overrun Error__
    * Output
    * 1-bit
    * '1' when DR not cleared before the last character is transferred to RBR.
* SFD - __Status Flags Disable__
    * Input
    * 1-bit
    * Force PE, FE, OE, DR and TBRE to 'Z' when '1'.
* RRC - __Received Register Clock__
    * Input
    * 1-bit
    * A clock that is 16X the receiver data rate.
* DRR_ - __Data Received Reset__
    * Input
    * 1-bit
    * Force DR to '0' when '0'.
* DR - __Data Received__
    * Output
    * 1-bit
    * '1' when a character has been received and transferred to RBR.
* RRI - __Receiver Register Input__
    * Input
    * 1-bit
    * Serial data clocked into the receiver register.
* MR - __Master Reset__
    * Input
    * 1-bit
    * When '1', force PE, Fe, OE and DR to '0'. After falling edge, sets TRE to '1' for 18 clock cycles.

### Transmitter