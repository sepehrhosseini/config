configs=(".tmux.conf" ".zshrc" ".vimrc" ".yabairc" ".skhdrc" ".profile" ".kitty.conf" ".gitconfig" ".bindkeys" ".aliases")

succeed=()
failed=()

for i in ${!configs[@]}; do
	config_path=$HOME/${configs[$i]}
	if [[ -f "${config_path}" ]]; then
		cp -f ${config_path} ${configs[$i]};
		succeed+=("${configs[$i]}")
	else
		failed+=("${configs[$i]}")
	fi
done

ERROR='\033[0;31m'
SUCCESS='\033[0;32m'

echo "${SUCCESS}Succesfully updated configs in repo: ${succeed[*]}"
echo "${ERROR}Failed updating repo for: ${failed[*]}"
