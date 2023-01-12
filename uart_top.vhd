library ieee;
use ieee.std_logic_1164.all;

entity top is
    generic (N : integer := 8);
    port (
        -- Receiver
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
        -- Transmitter
        TBRE : out std_logic;
        TBRL_ : in std_logic;
        TRE : out std_logic;
        TRO : out std_logic;
        TRB : in std_logic_vector(7 downto 0);
        CRL : in std_logic;
        PI : in std_logic;
        SBS : in std_logic;
        CLS : in std_logic_vector (1 downto 0);
        EPE : in std_logic;
        TRC : in std_logic;
    ) ;
end top;