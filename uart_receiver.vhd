library ieee;
use ieee.std_logic_1164.all;

entity receiver is
    port (
        -- Receiver ports
        RRD : in std_logic;
        RBR : out std_logic_vector(7 downto 0) 
        PE : out std_logic;
        FE : out std_logic;
        OE : out std_logic;
        SFD : in std_logic;
        RRC : in std_logic;
        DRR_ : in std_logic;
        DR : out std_logic;
        RRI : in std_logic;
        MR : in std_logic;
    );
end receiver;

architecture beh of receiver is
begin
    
end beh ;