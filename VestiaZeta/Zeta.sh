tweak() {
	if [ -f $2 ]; then
		chmod 644 $2 >/dev/null 2>&1
		echo $1 >$2 2>/dev/null
		chmod 444 $2 >/dev/null 2>&1
	fi
}

# Screen Saber by: @VelocityFox22

tweak /sys/module/msm_ts/parameters/debug_mask 1
tweak /sys/module/msm_ts/parameters/input_poll_boost 1
tweak /sys/module/msm_ts/parameters/timer_rate 1
tweak /sys/module/msm_ts/parameters/delta 3
tweak /sys/module/msm_ts/parameters/vtg_level 120
tweak /sys/class/input/input0/poll_rate 1000
tweak /sys/class/input/input1/poll_rate 1000
tweak /sys/class/input/input0/input_boost 1
tweak /sys/class/input/input1/input_boost 1
tweak /proc/sys/kernel/sched_child_runs_first 1
tweak /sys/class/input/input0/max_events_per_sec 300
tweak /sys/class/input/input1/max_events_per_sec 300
tweak /sys/class/input/input0/min_latency 1
tweak /sys/class/input/input1/min_latency 1
tweak /sys/class/input/input0/input_sync 1
tweak /sys/class/input/input1/input_sync 1

setprop debug.egl.disable_blur 1
setprop debug.hwui.disable_blur 1
setprop debug.renderengine.no_blur 1
setprop debug.sf.disable_blur_effects 1
setprop persist.sys.graphics.disable_blur 1
setprop persist.vendor.game.optimization.disable_blur 1
setprop ro.graphics.disable_game_blur 1
setprop persist.game.mode.blur_off 1
setprop persist.vendor.graphics.disable_blur 1

setprop persist.sys.graphics.sharpness_boost 1
setprop debug.renderengine.force_high_quality 1
setprop ro.graphics.force_high_sharpness 1
setprop persist.vendor.graphics.sharpness 1
setprop ro.sf.force_rasterization 1
setprop persist.sys.sf.high_quality 1

# Original Zeta Script

service call SurfaceFlinger 1035 i32 0
settings put system min_refresh_rate 120
settings put system peak_refresh_rate 120
resetprop -n debug.adreno.disable_backend_affinity true
resetprop -n debug.sf.use_phase_offsets_as_durations 1
resetprop -n debug.sf.late.sf.duration 2000000
resetprop -n debug.sf.late.app.duration 27000000
resetprop -n debug.sf.frame_rate_multiple_threshold 120
resetprop -n ro.surface_flinger.max_frame_buffer_acquired_buffers 3
