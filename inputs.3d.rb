
#*******************************************************************************
# INPUTS.3D.EULER
#*******************************************************************************

max_step 		= 99999

stop_time 		= 120.0

amr.n_cell              = 1024 1024 64

amr.max_level           = 0

ns.do_vorticity_ref     = 1

amr.regrid_int		= 2 

ns.v                    = 1
amr.v                   = 1

amr.check_int		= 10000 

amr.plot_int		= 50

ns.cfl                  = 0.7  # CFL number used to set dt

ns.init_shrink          = 1.0  # factor which multiplies the very first time step

ns.vel_visc_coef        = 0.01 
ns.scal_diff_coefs      = 0.014 0.014
ns.do_trac2             = 1

amr.probin_file 	= probin.3d.rb

geometry.coord_sys   =  0

geometry.prob_lo     =  0. 0. 0.
geometry.prob_hi     =  16. 16. 1.

geometry.is_periodic =  1 1 0

ns.gravity = 0.0

ns.lo_bc             = 0 0 4
ns.hi_bc             = 0 0 4

# 0 = Interior/Periodic  3 = Symmetry
# 1 = Inflow             4 = SlipWall
# 2 = Outflow            5 = NoSlipWall

amr.blocking_factor     = 8
amr.ref_ratio           = 2 2 2 2

amr.derive_plot_vars    = mag_vort liquid_water
proj.v=1
