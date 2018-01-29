
#*******************************************************************************
# INPUTS.3D.EULER
#*******************************************************************************

max_step 		= 1200

stop_time 		= 120.0

amr.n_cell              = 32 32 128

amr.max_level           = 0

ns.do_vorticity_ref     = 1

amr.regrid_int		= 2 

ns.v                    = 1
amr.v                   = 1

amr.check_int		= 10000 

amr.plot_int		= 30

ns.cfl                  = 0.7  # CFL number used to set dt

ns.init_shrink          = 1.0  # factor which multiplies the very first time step

ns.vel_visc_coef        = 0.1 
ns.scal_diff_coefs      = 0.1 0.1
ns.do_trac2             = 1

amr.probin_file 	= probin.3d.rb

geometry.coord_sys   =  0

geometry.prob_lo     =  -0.25 -0.25 -1.
geometry.prob_hi     =  0.25 0.25 1.

geometry.is_periodic =  1 1 0

ns.gravity = 0.0

ns.lo_bc             = 0 0 5
ns.hi_bc             = 0 0 5

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
mg.v=2
