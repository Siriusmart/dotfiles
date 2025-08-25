export let data = #{
    for_vcs: LOCAL,
    cool_setting: if SYSTEM.hostname == "foo" { 10 } else { 25 }
};
export let eggs = #{
    zsh: #{
        targets: #{
	    ".zshenv.entry": "~/.zshenv",
	    ".": "~/.config/zsh"
	},
	unsafe_shell_hooks: #{
	    post_deploy: "rm ~/.config/zsh/.zshenv.entry"
	},
	main_file: ".zshrc"
    }
};
