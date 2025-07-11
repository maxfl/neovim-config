return {
	"sphamba/smear-cursor.nvim",
	opts = {
        stiffness = 0.4,
        trailing_stiffness = 0.2,

		-- Smear cursor when switching buffers or windows.
		smear_between_buffers = true,

		-- Smear cursor when moving within line or to neighbor lines.
		smear_between_neighbor_lines = true,
		min_vertical_distance_smear = 1,
		min_horizontal_distance_smear = 5,

		-- Draw the smear in buffer space instead of screen space when scrolling
		scroll_buffer_space = true,

		-- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
		-- Smears will blend better on all backgrounds.
		legacy_computing_symbols_support = true,
	},
}
