# UART


## Signals

### Receiver

* RRD - Receiver Register Disable
    * Input
    * 1-bit
    * Force RBR to 'Z'.
* RBR - Receiver Buffer Resgister
    * Output
    * 8-bit
    * Un-serialize the received data and output it in 8-bit words.
* PE - Parity Error
    * Output
    * 1-bit
* FE : out std_logic;
* OE : out std_logic;
* SFD : in std_logic;
* RRC : in std_logic;
* DRR_ : in std_logic;
* DR : out std_logic;
* RRI : in std_logic;
* MR : in std_logic;

### Transmitter