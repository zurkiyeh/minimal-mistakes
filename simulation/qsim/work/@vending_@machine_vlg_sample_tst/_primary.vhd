library verilog;
use verilog.vl_types.all;
entity Vending_Machine_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        Choice          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        S0              : in     vl_logic_vector(7 downto 0);
        S1              : in     vl_logic_vector(7 downto 0);
        V               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Vending_Machine_vlg_sample_tst;
