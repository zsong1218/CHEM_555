program workshop_4

use mqc_gaussian

implicit none
character(len=:),allocatable::fileName
type(mqc_gaussian_unformatted_matrix_file)::matFile
type(mqc_wavefunction)::wavefunction
type(mqc_molecule_data)::molecule
type(mqc_twoERIs)::twoeris
type(mqc_scalar)::Vnn

call mqc_get_command_argument(1,fileName)
call matFile%load(fileName)
call matFile%getESTObj('wavefunction',wavefunction)
call matFile%getMolData(molecule)
call matFile%get2ERIs('regular',twoeris)
Vnn = molecule%getNucRep()
call Vnn%print(6,'Nuclear Repulsion Energy (au)')
call molecule%print(6)
call wavefunction%print(6,'all')
call twoeris%print(6,'AO 2ERIs')
!type(mqc_matrix)::A,B,C

!A=reshape([2,1,1,0],[2,2])
!B=reshape([1,2,1,3],[2,2])
!C=matmul(A,B)
!call A%print(6,'Matrix A')
!call B%print(6,'Matrix B')
!call C%print(6,'Result of A.B')

end program workshop_4
