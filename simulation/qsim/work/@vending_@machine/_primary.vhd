library verilog;
use verilog.vl_types.all;
entity Vending_Machine is
    port(
        C               : in     vl_logic;
        Choice          : in     vl_logic;
        rst             : in     vl_logic;
        V               : in     vl_logic_vector(7 downto 0);
        S0              : in     vl_logic_vector(7 downto 0);
        S1              : in     vl_logic_vector(7 downto 0);
        P               : out    vl_logic_vector(7 downto 0);
        E               : out    vl_logic_vector(7 downto 0);
        D               : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic
    );
end Vending_Machine;
