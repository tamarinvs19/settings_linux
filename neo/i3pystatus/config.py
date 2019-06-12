from i3pystatus import Status
from i3pystatus.updates import aptget

status = Status()

#Language
status.register("shell",
        command="xkb-switch",
        color="#00af87",
        interval = 0.01,)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
        format="%a %-d %b %H:%M",
        color="#888888",
        on_leftclick="evolution",
        )
# color="#00a388",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
'''status.register("load",
                format="{avg1}",)
'''
#cpu
status.register("cpu_usage_graph",
        format="CPU: {cpu_graph}",
        color="#00af87",
        graph_width=8,
        graph_style="blocks",)


#mem
status.register("mem_bar",
        format="MEM: {used_mem_bar}",
        color='#00af87',
        warn_color="#ff6800",
        alert_color="#ff0000",
        multi_colors=True,
        )
# Shows your CPU temperature, if you have a Intel CPU
# status.register("temp",
#         format="{temp:.0f}°C",
#         color='#888888',)

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
        format_up="Eth: {v4cidr}",
        format_down="",
        color_up="#00af87",
        )

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
        interface="wlx502b73c03b19",
        format_up="WiFi: {essid} {quality:03.0f}",
        format_down="No WiFi",
        color_up="#00af87",
        )

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
        path="/home",
        format="Home: {used} / {total}",#"{avail} GB",
        color="#888888", # {used}/{total}G
        critical_color="#f80000",
        critical_limit=1,)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
        format="Vol: {volume}",
        format_muted="Vol: {volume}",
        color_unmuted="#00af87",
        color_muted="#888888",
        on_leftclick = ["switch_mute"],
        on_downscroll = "decrease_volume",
        on_upscroll = "increase_volume",
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

