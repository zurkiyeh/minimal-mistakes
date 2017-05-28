library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        comp_Equal      : in     vl_logic;
        comp_Greater    : in     vl_logic;
        comp_Smaller    : in     vl_logic;
        final_Change    : in     vl_logic_vector(7 downto 0);
        final_Total     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;
