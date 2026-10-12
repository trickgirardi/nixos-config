# nixos-config

Configuração pessoal do NixOS (flake) de Patrick Girardi.

## Visão geral

- **Host:** `nixos` (x86_64-linux), NixOS 26.05 (`nixos-26.05`)
- **Desktop:** GNOME + [niri](https://github.com/YaLTeR/niri) com DankMaterialShell (`dms-greeter`)
- **GPU:** Intel + NVIDIA (driver open, PRIME offload)
- **Shell:** fish + starship
- **Locale:** `en_US.UTF-8` com formatos `pt_BR`, fuso `America/Sao_Paulo`, teclado `br-abnt2`
- **Rede:** NetworkManager com DNS Cloudflare (1.1.1.3 / 1.0.0.3, filtro de malware)
- **Extras:** Docker, Flatpak, AppImage, PipeWire, nix-ld

## Estrutura

| Arquivo | Descrição |
| --- | --- |
| `flake.nix` | Entrada do flake; inputs `nixpkgs` e `claude-code-nix` |
| `configuration.nix` | Sistema: boot, rede, desktop, GPU, áudio, usuário, serviços |
| `packages.nix` | Pacotes do sistema, fontes, overlays e exceções de pacotes inseguros |
| `hardware-configuration.nix` | Gerado pelo `nixos-generate-config` (específico da máquina) |

## Uso

```sh
# aplicar a configuração
sudo nixos-rebuild switch --flake .#nixos

# atualizar os inputs
nix flake update
```

## Licença

Veja [LICENSE](LICENSE).
