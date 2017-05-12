#Get rid of the somewhat excessive debugging info from FreeFem++
export FF_VERBOSITY=0;

case "$1" in
    1)
		echo "Launching test-case 1"
        FreeFem++ main.edp --config 1 --resu resu/case1 --binit 1 --btarget 1e1 --tau 1e-2 --l0 0 --gamma .1 --raffinit 2e-2 --navsto 0 
		;;
    2)
		echo "Launching test-case 2"
        FreeFem++ main.edp --config 2 --resu resu/case2 --l0 0 --binit 1e-1 --btarget 1e1 --tau 1e-2 --gamma .01 --errc 5e-3 --navsto 0
		;;
    6)
		echo "Launching test-case 6"
		FreeFem++ main.edp --config 6 --resu resu/case6 --binit 1 --btarget 10 --tau .01 --l0 0 --raffinit .03 --gamma .01 --navsto 0
		;;
    8)
		echo "Launching test-case 8"
		FreeFem++ main.edp --config 8 --resu resu/case8 --binit 1 --btarget 10 --tau .01 --l0 0 --raffinit .03 --gamma .01
		;;
    9)
		echo "Launching test-case 9"
		FreeFem++ main.edp --config 9 --resu resu/case9 --binit 1 --btarget 10 --tau 3e-3 --l0 0 --optraff 1 --raffinit 3e-2 --kc -1 --errc 2e-2 --navsto 0
		;;
    *)
		echo "Usage : $0 {1|2|6|8|9}"
		;;
esac
