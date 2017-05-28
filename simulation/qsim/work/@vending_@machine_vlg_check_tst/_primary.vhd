library verilog;
use verilog.vl_types.all;
entity Vending_Machine_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(1 downto 0);
        E               : in     vl_logic_vector(7 downto 0);
        P               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Vending_Machine_vlg_check_tst;
