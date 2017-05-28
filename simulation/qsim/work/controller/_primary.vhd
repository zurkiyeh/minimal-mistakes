library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        coin_Detected   : in     vl_logic;
        value_cents     : in     vl_logic_vector(7 downto 0);
        soda_price_0    : in     vl_logic_vector(7 downto 0);
        soda_price_1    : in     vl_logic_vector(7 downto 0);
        soda_choice     : in     vl_logic;
        reset           : in     vl_logic;
        comp_greater_in : in     vl_logic;
        comp_smaller_in : in     vl_logic;
        comp_equal_in   : in     vl_logic;
        soda_Dispense   : out    vl_logic_vector(1 downto 0);
        value_Coin      : out    vl_logic_vector(7 downto 0);
        price           : out    vl_logic_vector(7 downto 0);
        enable_change_reg: out    vl_logic;
        enable_total_reg: out    vl_logic;
        register_rst    : out    vl_logic;
        reset_system    : out    vl_logic
    );
end controller;
