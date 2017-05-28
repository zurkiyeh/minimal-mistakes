library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        enable_change_reg: in     vl_logic;
        enable_total_reg: in     vl_logic;
        price           : in     vl_logic_vector(7 downto 0);
        register_rst    : in     vl_logic;
        reset_system    : in     vl_logic;
        soda_Dispense   : in     vl_logic_vector(1 downto 0);
        value_Coin      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
