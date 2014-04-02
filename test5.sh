mkdir test
cd test
mkdir test_07
mkdir test_08
mkfifo test_09

for i in `seq 1 4242`
do
	echo "" >> test_04
done

for i in `seq 1 1`
do
	echo "" >> test_01
done

for i in `seq 1 42`
do
	echo "" >> test_02
done

for i in `seq 1 1`
do
	echo "" >> test_05
done

ln test_01 test_06

for i in `seq 1 1`
do
	echo "" >> test_06
done


touch -t 201303292013 test_01
touch -t 201403282013 test_02
touch -t 201403291442 test_03
touch -t 204201012042 test_04
touch -t 201403291522 test_05
touch -t 201303292013 test_06
touch -t 201004012010 test_07
touch -t 201403291519 test_08
touch -t 201403301617 test_09

chmod 000 test_01
chmod 020 test_03
chmod 755 test_05
chmod 000 test_06
chmod 755 test_07
chmod 755 test_08
chmod 644 test_09
ln -s test_01 test_10
touch -t 201403291444 -h test_10
exit 42
