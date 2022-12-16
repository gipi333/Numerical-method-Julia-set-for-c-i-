!*******************************************************************************
!
! Année :2020/2021
!
! Auteur: Laboureur Guillaume
!
!*******************************************************************************


program first

complex :: c = (0, 1), zzero = (-2.001,2.001)
INTEGER :: i,j,k,m
complex, dimension(27) :: zi
complex, dimension(4001,4001) :: Matrice_zero
INTEGER, dimension(4001,4001) :: Matrice_k

do k = 1,27
    zi(k) =  5
end do
do i = 1,4001
    do j = 1,4001
        Matrice_k(i,j) = 28
    end do
end do 

!---------------------------------------------------
! Création de la matrice zero contenant tous les z0
!---------------------------------------------------
do i = 1, 4001
    zzero = zzero - (0,0.001)
        do j = 1,4001

            zzero = zzero + (0.001,0)             
            Matrice_zero(i,j) = zzero

        end do
    zzero = zzero - 4001*(0.001,0)        
end do



!--------------------------------------------------------------
! Création de la matrice contenant les k maximum pour chaque z0
!--------------------------------------------------------------

! Pour chaque valeur de z0, on calcule les zk tant que |zk| <= 2 et on en déduit le k maximum

do i = 1, 4001   
    do j= 1,4001


        ! Calcul des zi tant que |zi| <= 2
        !----------------------------------
        do k = 1, 26  
            zi(1) = Matrice_zero(i,j)
            If (k /= 1) Then 
                do m = 1,(k-1)
                    If ( CABS(zi(m)) <= 2) Then 

                        zi(m+1) = zi(m)**2 + c 

                    end If
                end do
            end If                             
        end do 

        ! Calcul de la matrice contenant le k maximum pour chaque z0
        !-----------------------------------------------------------
        do k=1,27
            If (zi(k) == 5) Then
                
                If (Matrice_k(i,j)>k) Then
                    Matrice_k(i,j) = k-1
                end if

            end if 
        end do

        ! Réinitialisation de la matrice zi
        !----------------------------------
        do k = 1,26
            zi(k) = 5
        end do

    end do
end do 



open(unit=1,FILE='fractale.txt')
write(1,*)  Matrice_k 
close(1)

! Programme Matlab:
!
! A = fscanf(fopen('fractale.txt','r'), '%f',[4001,4001]);
! X = [-2,2]
! Y = [-2,2]
! imagesc(X,Y,A)
! title('Ensembles de Julia pour c=i')
! ylabel('Im(z)')
! xlabel('Re(z)')




end program  first




















