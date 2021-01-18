configs=(".tmux.conf" ".zshrc" ".vimrc" ".testing")
paths=("" "" "" "")

succeed=()
failed=()

for i in ${!configs[@]}; do
	config_path=$HOME/${paths[$i]}${configs[$i]}
	if [[ -f "${config_path}" ]]; then
		while true; do
			read -p "${configs[$i]} already exists, do you want to replace it? (y/n) " yn
		    case $yn in
		        [Nn]* ) 
					failed+=("${configs[$i]}")
					break;;
		        [Yy]* | * )
					cp ${configs[$i]} ${config_path};
					succeed+=("${configs[$i]}")
					break;;
		    esac
		done
	else
		cp ${configs[$i]} ${config_path}
		succeed+=("${configs[$i]}")
	fi
done

ERROR='\033[0;31m'
SUCCESS='\033[0;32m'

echo "${SUCCESS}Succesfully installed configs: ${succeed[*]}"
echo "${ERROR}Failed installing for: ${failed[*]}"