from i3pystatus import Status
from i3pystatus.updates import aptget

status = Status()

#Language
status.register("shell",
        command="xkb-switch",
        color="#5faf00",
        interval = 0.01,)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
                format="%a %-d %b %H:%M",
                color="#888888",)
# color="#00a388",)

# The battery monitor has many formatting options, see README for details

# This would look like this, when discharging (or charging)
# ↓14.22W 56.15% [77.81%] 2h:41m
# And like this if full:
# =14.22W 100.0% [91.21%]
#
# This would also display a desktop notification (via D-Bus) if the percentage
# goes below 5 percent while discharging. The block will also color RED.
# If you don't have a desktop notification demon yet, take a look at dunst:
#   http://www.knopwob.org/dunst/
status.register(
            'battery',
            interval=5,
            format='{status}{percentage:.0f} {remaining:%E%hh:%Mm}',
            alert=True,
            alert_percentage=15,
            battery_ident='BAT0',
            battery_prefix="BAT0",
            charging_color="#4e9c00",
            color="#4e9c00",
            critical_color ="#db143c",
            full_color="#4e9c00",
            critical_level_percentage=5,
            critical_level_command="hibernate",
            status = {
                'DPL': ' ',
                'CHR': '',
                'DIS': ' ',
                'FULL': ' ',
            }
        )
'''status.register("battery",
                format="{status}{percentage:.0f}% ",
    alert=True,
    alert_percentage=5,
    status={
        "DIS":"↓",
        "CHR": "↑",
        "FULL": "",
    },)
'''
# This would look like this:
# Discharging 6h:51m
'''status.register("battery",
    format="{status} {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS":  "Discharging",
        "CHR":  "Charging",
        "FULL": "Bat full",
    },)
'''
# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
'''status.register("load",
                format="{avg1}",)
'''
#cpu
status.register("cpu_usage_graph",
                format="CPU: {cpu_graph}",
                color="#4e9c00",
                graph_width=8,
                graph_style="blocks",)


#mem
'''
status.register("mem",
    color="#999999",
    warn_color="#E5E500",
    alert_color="#FF1919",
    format="{avail_mem}/{total_mem} G",
    divisor=1073741824,)
'''
status.register("mem_bar",
                format="MEM: {used_mem_bar}",
                color='#4e9c00',
                warn_color="#ff6800",
                alert_color="#ff0000",
                multi_colors=True,
                )
# Shows your CPU temperature, if you have a Intel CPU
'''status.register("temp",
    format="{temp:.0f}°C",)
'''
# Displays whether a DHCP client is running
'''status.register("runwatch",
    name="DHCP",
    path="/var/run/dhclient*.pid",)
'''

# updates
'''
status.register("updates",
                format = "Updates: {count}",
                format_no_updates = "", #"No updates",
                backends = [aptget.AptGet()])
'''


# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
    interface="enp3s0",
    format_up="{v4cidr}",
    format_down="",
    color_up="#4e9c00",
                )

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
    interface="wlp2s0b1",
    format_up="{essid} {quality:03.0f}",
    format_down="",
    color_up="#4e9c00",
                )

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
                path="/home",
                format=" {used} / {total}",#"{avail} GB",
                color="#888888", # {used}/{total}G
                critical_color="#f80000",
                critical_limit=1,)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
                format=" {volume}",
                format_muted=" {volume}",
                color_unmuted="#4e9c00",
                color_muted="#888888",
                )

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.run()

