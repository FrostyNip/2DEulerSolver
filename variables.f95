module variables
  use CellType
  implicit none

  !max lengths for j and i dimensions
  integer :: dimi,dimj
  
  !iteration variables
  integer :: i,j,r,s,iter,step

  !x/y laplace smoothd grid data [i,j,x or y]
  real, dimension(:,:,:), allocatable     :: grid

  !Cell data object (has node and state data)
  type(Cell), dimension(:,:), allocatable :: Cell_Mat

  !residual and dissipation for updating
  real, dimension(4)     :: residual,dissipation

  !data for residual calculations
  real, dimension(2,4,3) :: stenH,stenV
  real, dimension(4,3)   :: CellVect_H, CellVect_V
  real, dimension(4)     :: Cell_Temp
  
  !runge kutta time stepping constants
  real, parameter, dimension(4) :: alpha = (/0.25,0.33,0.5,1.0/)

  !timestep value
  real, parameter        :: dt = 0.000001

  !area placeholder
  real                   :: A
  
  !initial states (Density,Pressure,Velocity,Energy)
  real                   :: RhoA,Pa,Ua,Va,Ea


end module variables
