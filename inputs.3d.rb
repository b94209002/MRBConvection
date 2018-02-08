
#*******************************************************************************
# INPUTS.3D.EULER
#*******************************************************************************

max_step 		= 100

stop_time 		= 100.0

amr.n_cell              = 128 128 32

amr.max_level           = 0

ns.do_vorticity_ref     = 1

amr.regrid_int		= 2 

ns.v                    = 1
amr.v                   = 1

amr.check_int		= 10000 

amr.plot_int		= 10
#amr.plot_per            = 10.

ns.cfl                  = 0.9  # CFL number used to set dt

ns.init_shrink          = 1.0  # factor which multiplies the very first time step

ns.vel_visc_coef        = 0.01 
ns.scal_diff_coefs      = 0.01 0.01
ns.do_trac2             = 1

amr.probin_file 	= probin.3d.rb

geometry.coord_sys   =  0

geometry.prob_lo     =  -2. -2. 0.
geometry.prob_hi     =  2. 2. 1.

geometry.is_periodic =  0 0 0

ns.gravity = 0.0

ns.lo_bc             = 2 2 5
ns.hi_bc             = 2 2 5

# 0 = Interior/Periodic  3 = Symmetry
# 1 = Inflow             4 = SlipWall
# 2 = Outflow            5 = NoSlipWall

amr.blocking_factor     = 8
amr.ref_ratio           = 2 2 2 2

ns.sum_interval         = 1
#ns.turb_interval        = 10
ns.liquid_interval      = 1
amr.derive_plot_vars    = energy liquid_water

proj.v=1
proj.proj_tol = 1.e-12
proj.proj_abs_tol = 1.e-14
