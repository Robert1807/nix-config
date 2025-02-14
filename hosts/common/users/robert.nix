{
  config,
  pkgs,
  inputs,
  ...
}:
{
  users.users.robert = {
    isNormalUser = true;
    description = "Robert Rivarola";
    extraGroups = [
      "wheel"
      "kmem"
      "tty"
      "messagebus"
      "disk"
      "audio"
      "floppy"
      "uucp"
      "lp"
      "cdrom"
      "tape"
      "video"
      "dialout"
      "utmp"
      "adm"
      "networkmanager"
      "systemd-journal"
      "libvirtd"
      "keys"
      "users"
      "systemd-network"
      "systemd-resolve"
      "systemd-timesync"
      "input"
      "nm-openvpn"
      "qemu-libvirtd"
      "kvm"
      "render"
      "sgx"
      "shadow"
      "pipewire"
      "trezord"
      "rtkit"
      "avahi"
      "sshd"
      "systemd-oom"
      "systemd-coredump"
      "resolvconf"
      "polkituser"
      "nscd"
      "nixbld"
      "nogroup"
    ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.robert =
    import ../../../home/robert/${config.networking.hostName}.nix;
}
