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
    },
    hypr: #{
        targets: "~/.config/hypr"
    },
    rofi: "~/.config/rofi",
    kitty: #{
        targets: "~/.config/kitty"
    },
    wlogout: #{
        targets: "~/.config/wlogout"
    },
    nvim: #{
        targets: "~/.config/nvim"
    },
	"obs-studio": #{
		targets: #{
			"themes": "~/.config/obs-studio/themes"
		}
	},
	zathura: #{
		targets: "~/.config/zathura"
	},
	"youtube-tui": #{
		targets: "~/.config/youtube-tui"
	},
	Thunar: #{
		targets: "~/.config/Thunar"
	},
	btop: #{
		targets: "~/.config/btop"
	},
	mako: #{
		targets: "~/.config/mako"
	},
	"gtk-3.0": #{
		targets: "~/.config/gtk-3.0"
	},
	"gtk-4.0": #{
		targets: "~/.config/gtk-4.0"
	},
	"qt6ct": #{
		targets: "~/.config/qt6ct"
	},
	"Kvantum": #{
		targets: "~/.config/Kvantum"
	},
	"fastfetch": #{
		targets: "~/.config/fastfetch"
	},
};
