library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        soda_Value      : in     vl_logic_vector(7 downto 0);
        cost            : in     vl_logic_vector(7 downto 0);
        enable_Change   : in     vl_logic;
        enable_Total    : in     vl_logic;
        comp_Greater    : out    vl_logic;
        comp_Smaller    : out    vl_logic;
        comp_Equal      : out    vl_logic;
        final_Total     : out    vl_logic_vector(7 downto 0);
        final_Change    : out    vl_logic_vector(7 downto 0)
    );
end datapath;
