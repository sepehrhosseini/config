configs=(".tmux.conf" ".zshrc" ".vimrc" ".yabairc" ".skhdrc" ".profile" ".kitty.conf" ".gitconfig" ".bindkeys" ".aliases")

succeed=()
failed=()

for i in ${!configs[@]}; do
	config_path=$HOME/${configs[$i]}
	if [[ -f "${config_path}" ]]; then
		while true; do
			read -p "${config_path} already exists, do you want to replace it? (y/n) " yn
		    case $yn in
		        [Nn]* ) 
					failed+=("${configs[$i]}")
					break;;
		        [Yy]* | * )
					cp -f ${configs[$i]} ${config_path};
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
