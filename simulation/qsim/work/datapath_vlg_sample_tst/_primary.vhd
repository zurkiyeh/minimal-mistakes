library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        cost            : in     vl_logic_vector(7 downto 0);
        enable_Change   : in     vl_logic;
        enable_Total    : in     vl_logic;
        reset           : in     vl_logic;
        soda_Value      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
