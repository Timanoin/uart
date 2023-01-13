library ieee;
use ieee.std_logic_1164.all;

entity top is
    port (
        -- Receiver
        RRC   : in  std_logic;
        RRD   : in  std_logic;
        RRI   : in  std_logic;
        RBR   : out std_logic_vector(7 downto 0) 
        -- Transmitter
        TRC   : in  std_logic;
        TBRL_ : in  std_logic;
        TRB   : in  std_logic_vector(7 downto 0);
        TRE   : out std_logic;
        TRO   : out std_logic;
        TBRE  : out std_logic;
        -- Control signals
        SFD   : in  std_logic;
        DRR_  : in  std_logic;
        MR    : in  std_logic;
        CRL   : in  std_logic;
        PI    : in  std_logic;
        SBS   : in  std_logic;
        EPE   : in  std_logic;
        CLS   : in  std_logic_vector (1 downto 0);
        PE    : out std_logic;
        FE    : out std_logic;
        OE    : out std_logic;
        DR    : out std_logic;
    ) ;
end top;

architecture beh of top is
    signal parity_format : std_logic_vector(1 downto 0);
    signal data_bits : integer;
    type t_parity is (odd, even, none);
    signal parity : t_parity;
    type t_stop_bits is (one, one_h, two);
    signal stop_bits : t_stop_bits;
begin
    -- Control Definition
    -- data bits
    process (CLS)
    begin
        case CLS is
            when "00"   => data_bits <= 5;
            when "01"   => data_bits <= 6;
            when "10"   => data_bits <= 7;
            when "11"   => data_bits <= 8;
            when others => data_bits <= 5;
        end case;
    end process;
    -- parity format
    parity_format <= PI & EPE;
    process (parity_format)
    begin
        case parity_format is
            when "00"   => parity <= odd;
            when "01"   => parity <= even;
            when "1X"   => parity <= none;
            when others => parity <= none;
        end case;
    end process;
    -- stop bits
    process (CLS, SBS)
    begin
        if SBS = '1' then
            if CLS = "00" then 
                stop_bits <= oneh;
            else 
                stop_bits <= two;
            end if;
        else
            stop_bits <= one;
        end if;
    end process;
end beh;