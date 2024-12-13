service call SurfaceFlinger 1035 i32 0
settings put system min_refresh_rate 120
settings put system peak_refresh_rate 120
resetprop -n debug.adreno.disable_backend_affinity true
resetprop -n debug.sf.use_phase_offsets_as_durations 1
resetprop -n debug.sf.late.sf.duration 2000000
resetprop -n debug.sf.late.app.duration 27000000
resetprop -n debug.sf.frame_rate_multiple_threshold 120
resetprop -n ro.surface_flinger.max_frame_buffer_acquired_buffers 3
