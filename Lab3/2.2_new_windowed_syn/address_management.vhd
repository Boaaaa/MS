library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE work.constants.all;
USE work.functions.all;

ENTITY ddress_management is
	generic(
		M_2 : integer := M_const;
		N_2 : integer := N_const;
		F_2 : integer := F_const;
		-- Address size for the external address (virtual address)
        size_ext_addr_am_2         : integer := log2(M_const + (N_const*3));
		-- Address size for the external address (physical address)
        size_int_addr_2          : integer := log2(M_const + (N_const*2)*F_const + N_const);
		-- Address for the external address (physical address)
		physical_addr_num_In_Local_Out_2 : integer := F_const*(N_const*2) + N_const;
        -- Number of windows binary
        size_windows_2          : integer := log2(F_const)
	);
	PORT(
		addr_read_in_1 : in std_logic_vector(size_ext_addr_am_2 -1 downto 0);
		addr_read_in_2 : in std_logic_vector(size_ext_addr_am_2 -1 downto 0);
		addr_write_in : in std_logic_vector(size_ext_addr_am_2 -1 downto 0);
		cwp : in integer;
		
		addr_read_out_1 : out std_logic_vector(size_int_addr_2-1 downto 0);
		addr_read_out_2 : out std_logic_vector(size_int_addr_2-1 downto 0);
		addr_write_out : out std_logic_vector(size_int_addr_2-1 downto 0)
	);
end ddress_management;

architecture behavior of ddress_management is
begin
	-- Process used to compute the addresses
    addr_gen : process (addr_read_in_1, addr_read_in_2, addr_write_in, cwp)
		-- Variables used into the process
        --variable cwp_in           : integer range 0 to f_windows;
        variable addr_read_one : integer range 0 to M_const + (N_const*3);
        variable addr_read_two : integer range 0 to M_const + (N_const*3);
        variable addr_write    : integer range 0 to M_const + (N_const*3);

        begin
            --cwp_in             := to_integer(unsigned(cwp));
            addr_read_one      := to_integer(unsigned(addr_read_in_1));
            addr_read_two      := to_integer(unsigned(addr_read_in_2));
            addr_write         := to_integer(unsigned(addr_write_in));

            -- Translates the virtual address to physical one
            -- Physical address = virtual address + cwp*(2*n_in_out_local)
            -- First of all we should check if the virtual address refers to a global register

            if(addr_read_one < M_2) then
                -- If it is a global register, the physical address will be just the virtual one
                addr_read_out_1(size_ext_addr_am_2-1 downto 0) <= addr_read_in_1;
				addr_read_out_1(size_int_addr_2-1 downto size_ext_addr_am_2) <= (others => '0');
            else
                -- Otherwise we must add the offset to reach the right physical address
                addr_read_out_1 <= std_logic_vector(to_unsigned(((cwp*(2*N_2) + addr_read_one) mod physical_addr_num_In_Local_Out_2) + M_2,addr_read_out_1'length));
            end if;

            if(addr_read_two < M_2) then
                -- It is a global register
                addr_read_out_2(size_ext_addr_am_2-1 downto 0) <= addr_read_in_2;
				addr_read_out_2(size_int_addr_2-1 downto size_ext_addr_am_2) <= (others => '0');
            else
                -- We must add the offset to reach the physical address
                addr_read_out_2 <= std_logic_vector(to_unsigned(((cwp*(2*N_2) + addr_read_two) mod physical_addr_num_In_Local_Out_2) + M_2,addr_read_out_2'length));
            end if;

            if(addr_write < M_2) then
                -- It is a global register
                addr_write_out(size_ext_addr_am_2-1 downto 0) <= addr_write_in;
				addr_write_out(size_int_addr_2-1 downto size_ext_addr_am_2) <= (others => '0');
            else
                -- We must add the offset to reach the physical address
                addr_write_out <= std_logic_vector(to_unsigned(((cwp*(2*N_2) + addr_write) mod physical_addr_num_In_Local_Out_2) + M_2,addr_write_out'length));
            end if; 
	end process addr_gen;
end behavior;

configuration CFG_ddress_management_BEH of ddress_management is
  for behavior
  end for;
end configuration;