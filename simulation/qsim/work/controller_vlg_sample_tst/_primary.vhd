library verilog;
use verilog.vl_types.all;
entity controller_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        coin_Detected   : in     vl_logic;
        comp_equal_in   : in     vl_logic;
        comp_greater_in : in     vl_logic;
        comp_smaller_in : in     vl_logic;
        reset           : in     vl_logic;
        soda_choice     : in     vl_logic;
        soda_price_0    : in     vl_logic_vector(7 downto 0);
        soda_price_1    : in     vl_logic_vector(7 downto 0);
        value_cents     : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end controller_vlg_sample_tst;
