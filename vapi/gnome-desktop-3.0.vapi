/* gnome-desktop-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gnome", gir_namespace = "GnomeDesktop", gir_version = "3.0", lower_case_cprefix = "gnome__")]
namespace Gnome {
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_bg_get_type ()")]
	public class BG : GLib.Object {
		[CCode (cname = "gnome_bg_new", has_construct_function = false)]
		public BG ();
		[CCode (cname = "gnome_bg_changes_with_time")]
		public bool changes_with_time ();
		[CCode (cname = "gnome_bg_create_frame_thumbnail")]
		public Gdk.Pixbuf create_frame_thumbnail (Gnome.DesktopThumbnailFactory factory, Gdk.Screen screen, int dest_width, int dest_height, int frame_num);
		[CCode (cname = "gnome_bg_create_surface")]
		public Cairo.Surface create_surface (Gdk.Window window, int width, int height, bool root);
		[CCode (cname = "gnome_bg_create_thumbnail")]
		public Gdk.Pixbuf create_thumbnail (Gnome.DesktopThumbnailFactory factory, Gdk.Screen screen, int dest_width, int dest_height);
		[CCode (cname = "gnome_bg_draw")]
		public void draw (Gdk.Pixbuf dest, Gdk.Screen screen, bool is_root);
		[CCode (cname = "gnome_bg_get_draw_background")]
		public bool get_draw_background ();
		[CCode (cname = "gnome_bg_get_filename")]
		public unowned string get_filename ();
		[CCode (cname = "gnome_bg_get_image_size")]
		public bool get_image_size (Gnome.DesktopThumbnailFactory factory, int best_width, int best_height, int width, int height);
		[CCode (cname = "gnome_bg_get_surface_from_root")]
		public static Cairo.Surface get_surface_from_root (Gdk.Screen screen);
		[CCode (cname = "gnome_bg_has_multiple_sizes")]
		public bool has_multiple_sizes ();
		[CCode (cname = "gnome_bg_is_dark")]
		public bool is_dark (int dest_width, int dest_height);
		[CCode (cname = "gnome_bg_load_from_preferences")]
		public void load_from_preferences (GLib.Settings settings);
		[CCode (cname = "gnome_bg_save_to_preferences")]
		public void save_to_preferences (GLib.Settings settings);
		[CCode (cname = "gnome_bg_set_draw_background")]
		public void set_draw_background (bool draw_background);
		[CCode (cname = "gnome_bg_set_filename")]
		public void set_filename (string filename);
		[CCode (cname = "gnome_bg_set_surface_as_root")]
		public static void set_surface_as_root (Gdk.Screen screen, Cairo.Surface surface);
		[CCode (cname = "gnome_bg_set_surface_as_root_with_crossfade")]
		public static Gnome.BGCrossfade set_surface_as_root_with_crossfade (Gdk.Screen screen, Cairo.Surface surface);
		public signal void changed ();
		public signal void transitioned ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_bg_crossfade_get_type ()")]
	public class BGCrossfade : GLib.Object {
		[CCode (cname = "gnome_bg_crossfade_new", has_construct_function = false)]
		public BGCrossfade (int width, int height);
		[CCode (cname = "gnome_bg_crossfade_is_started")]
		public bool is_started ();
		[CCode (cname = "gnome_bg_crossfade_set_end_surface")]
		public bool set_end_surface (Cairo.Surface surface);
		[CCode (cname = "gnome_bg_crossfade_set_start_surface")]
		public bool set_start_surface (Cairo.Surface surface);
		[CCode (cname = "gnome_bg_crossfade_start")]
		public void start (Gdk.Window window);
		[CCode (cname = "gnome_bg_crossfade_stop")]
		public void stop ();
		[NoAccessorMethod]
		public int height { get; construct; }
		[NoAccessorMethod]
		public int width { get; construct; }
		public virtual signal void finished (GLib.Object window);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_desktop_thumbnail_factory_get_type ()")]
	public class DesktopThumbnailFactory : GLib.Object {
		[CCode (cname = "gnome_desktop_thumbnail_factory_new", has_construct_function = false)]
		public DesktopThumbnailFactory (Gnome.DesktopThumbnailSize size);
		[CCode (cname = "gnome_desktop_thumbnail_factory_can_thumbnail")]
		public bool can_thumbnail (string uri, string mime_type, long mtime);
		[CCode (cname = "gnome_desktop_thumbnail_factory_create_failed_thumbnail")]
		public void create_failed_thumbnail (string uri, long mtime);
		[CCode (cname = "gnome_desktop_thumbnail_factory_generate_thumbnail")]
		public Gdk.Pixbuf generate_thumbnail (string uri, string mime_type);
		[CCode (cname = "gnome_desktop_thumbnail_factory_has_valid_failed_thumbnail")]
		public bool has_valid_failed_thumbnail (string uri, long mtime);
		[CCode (cname = "gnome_desktop_thumbnail_factory_lookup")]
		public string lookup (string uri, long mtime);
		[CCode (cname = "gnome_desktop_thumbnail_factory_save_thumbnail")]
		public void save_thumbnail (Gdk.Pixbuf thumbnail, string uri, long original_mtime);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_rr_config_get_type ()")]
	public class RRConfig : GLib.Object {
		[CCode (has_construct_function = false)]
		protected RRConfig ();
		[CCode (cname = "gnome_rr_config_applicable")]
		public bool applicable (Gnome.RRScreen screen) throws GLib.Error;
		[CCode (cname = "gnome_rr_config_apply_from_filename_with_time")]
		public static bool apply_from_filename_with_time (Gnome.RRScreen screen, string filename, uint32 timestamp) throws GLib.Error;
		[CCode (cname = "gnome_rr_config_apply_with_time")]
		public bool apply_with_time (Gnome.RRScreen screen, uint32 timestamp) throws GLib.Error;
		[CCode (cname = "gnome_rr_config_new_current", has_construct_function = false)]
		public RRConfig.current (Gnome.RRScreen screen) throws GLib.Error;
		[CCode (cname = "gnome_rr_config_ensure_primary")]
		public bool ensure_primary ();
		[CCode (cname = "gnome_rr_config_equal")]
		public bool equal (Gnome.RRConfig config2);
		[CCode (cname = "gnome_rr_config_get_backup_filename")]
		public static string get_backup_filename ();
		[CCode (cname = "gnome_rr_config_get_clone")]
		public bool get_clone ();
		[CCode (cname = "gnome_rr_config_get_intended_filename")]
		public static string get_intended_filename ();
		[CCode (array_length = false, array_null_terminated = true, cname = "gnome_rr_config_get_outputs")]
		public unowned Gnome.RROutputInfo[] get_outputs ();
		[CCode (cname = "gnome_rr_config_load_current")]
		public bool load_current () throws GLib.Error;
		[CCode (cname = "gnome_rr_config_load_filename")]
		public bool load_filename (string filename) throws GLib.Error;
		[CCode (cname = "gnome_rr_config_match")]
		public bool match (Gnome.RRConfig config2);
		[CCode (cname = "gnome_rr_config_sanitize")]
		public void sanitize ();
		[CCode (cname = "gnome_rr_config_save")]
		public bool save () throws GLib.Error;
		[CCode (cname = "gnome_rr_config_set_clone")]
		public void set_clone (bool clone);
		[CCode (cname = "gnome_rr_config_new_stored", has_construct_function = false)]
		public RRConfig.stored (Gnome.RRScreen screen) throws GLib.Error;
		public Gnome.RRScreen screen { construct; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_crtc_get_type ()")]
	[Compact]
	public class RRCrtc {
		[CCode (cname = "gnome_rr_crtc_can_drive_output")]
		public bool can_drive_output (Gnome.RROutput output);
		[CCode (cname = "gnome_rr_crtc_get_current_mode")]
		public Gnome.RRMode get_current_mode ();
		[CCode (cname = "gnome_rr_crtc_get_current_rotation")]
		public Gnome.RRRotation get_current_rotation ();
		[CCode (cname = "gnome_rr_crtc_get_gamma")]
		public bool get_gamma (int size, ushort red, ushort green, ushort blue);
		[CCode (cname = "gnome_rr_crtc_get_id")]
		public uint32 get_id ();
		[CCode (cname = "gnome_rr_crtc_get_position")]
		public void get_position (int x, int y);
		[CCode (cname = "gnome_rr_crtc_get_rotations")]
		public Gnome.RRRotation get_rotations ();
		[CCode (cname = "gnome_rr_crtc_set_config_with_time")]
		public bool set_config_with_time (uint32 timestamp, int x, int y, Gnome.RRMode mode, Gnome.RRRotation rotation, Gnome.RROutput outputs, int n_outputs) throws GLib.Error;
		[CCode (cname = "gnome_rr_crtc_set_gamma")]
		public void set_gamma (int size, ushort red, ushort green, ushort blue);
		[CCode (cname = "gnome_rr_crtc_supports_rotation")]
		public bool supports_rotation (Gnome.RRRotation rotation);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_rr_labeler_get_type ()")]
	public class RRLabeler : GLib.Object {
		[CCode (cname = "gnome_rr_labeler_new", has_construct_function = false)]
		public RRLabeler (Gnome.RRConfig config);
		[CCode (cname = "gnome_rr_labeler_get_color_for_output")]
		public Gdk.Color get_color_for_output (Gnome.RROutputInfo output);
		[CCode (cname = "gnome_rr_labeler_hide")]
		public void hide ();
		[CCode (cname = "gnome_rr_labeler_show")]
		public void show ();
		public Gnome.RRConfig config { construct; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_mode_get_type ()")]
	[Compact]
	public class RRMode {
		[CCode (cname = "gnome_rr_mode_get_freq")]
		public int get_freq ();
		[CCode (cname = "gnome_rr_mode_get_height")]
		public uint get_height ();
		[CCode (cname = "gnome_rr_mode_get_id")]
		public uint32 get_id ();
		[CCode (cname = "gnome_rr_mode_get_width")]
		public uint get_width ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_rr_output_get_type ()")]
	[Compact]
	public class RROutput {
		[CCode (cname = "gnome_rr_output_can_clone")]
		public bool can_clone (Gnome.RROutput clone);
		[CCode (cname = "gnome_rr_output_get_backlight")]
		public int get_backlight () throws GLib.Error;
		[CCode (cname = "gnome_rr_output_get_backlight_max")]
		public int get_backlight_max ();
		[CCode (cname = "gnome_rr_output_get_backlight_min")]
		public int get_backlight_min ();
		[CCode (cname = "gnome_rr_output_get_connector_type")]
		public unowned string get_connector_type ();
		[CCode (cname = "gnome_rr_output_get_crtc")]
		public Gnome.RRCrtc get_crtc ();
		[CCode (cname = "gnome_rr_output_get_current_mode")]
		public Gnome.RRMode get_current_mode ();
		[CCode (cname = "gnome_rr_output_get_edid_data")]
		public uint8 get_edid_data (size_t size);
		[CCode (cname = "gnome_rr_output_get_height_mm")]
		public int get_height_mm ();
		[CCode (cname = "gnome_rr_output_get_id")]
		public uint32 get_id ();
		[CCode (cname = "gnome_rr_output_get_is_primary")]
		public bool get_is_primary ();
		[CCode (cname = "gnome_rr_output_get_name")]
		public unowned string get_name ();
		[CCode (cname = "gnome_rr_output_get_position")]
		public void get_position (int x, int y);
		[CCode (cname = "gnome_rr_output_get_possible_crtcs")]
		public Gnome.RRCrtc get_possible_crtcs ();
		[CCode (cname = "gnome_rr_output_get_preferred_mode")]
		public Gnome.RRMode get_preferred_mode ();
		[CCode (cname = "gnome_rr_output_get_size_inches")]
		public int get_size_inches ();
		[CCode (cname = "gnome_rr_output_get_width_mm")]
		public int get_width_mm ();
		[CCode (cname = "gnome_rr_output_is_connected")]
		public bool is_connected ();
		[CCode (cname = "gnome_rr_output_is_laptop")]
		public bool is_laptop ();
		[CCode (cname = "gnome_rr_output_list_modes")]
		public Gnome.RRMode list_modes ();
		[CCode (cname = "gnome_rr_output_set_backlight")]
		public bool set_backlight (int value) throws GLib.Error;
		[CCode (cname = "gnome_rr_output_supports_mode")]
		public bool supports_mode (Gnome.RRMode mode);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_rr_output_info_get_type ()")]
	public class RROutputInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		protected RROutputInfo ();
		[CCode (cname = "gnome_rr_output_info_get_aspect_ratio")]
		public double get_aspect_ratio ();
		[CCode (cname = "gnome_rr_output_info_get_display_name")]
		public unowned string get_display_name ();
		[CCode (cname = "gnome_rr_output_info_get_geometry")]
		public void get_geometry (out int x, out int y, out int width, out int height);
		[CCode (cname = "gnome_rr_output_info_get_name")]
		public unowned string get_name ();
		[CCode (cname = "gnome_rr_output_info_get_preferred_height")]
		public int get_preferred_height ();
		[CCode (cname = "gnome_rr_output_info_get_preferred_width")]
		public int get_preferred_width ();
		[CCode (cname = "gnome_rr_output_info_get_primary")]
		public bool get_primary ();
		[CCode (cname = "gnome_rr_output_info_get_product")]
		public uint get_product ();
		[CCode (cname = "gnome_rr_output_info_get_refresh_rate")]
		public int get_refresh_rate ();
		[CCode (cname = "gnome_rr_output_info_get_rotation")]
		public Gnome.RRRotation get_rotation ();
		[CCode (cname = "gnome_rr_output_info_get_serial")]
		public uint get_serial ();
		[CCode (cname = "gnome_rr_output_info_get_vendor")]
		public void get_vendor ([CCode (array_length = false)] out unowned string[] vendor);
		[CCode (cname = "gnome_rr_output_info_is_active")]
		public bool is_active ();
		[CCode (cname = "gnome_rr_output_info_is_connected")]
		public bool is_connected ();
		[CCode (cname = "gnome_rr_output_info_set_active")]
		public void set_active (bool active);
		[CCode (cname = "gnome_rr_output_info_set_geometry")]
		public void set_geometry (int x, int y, int width, int height);
		[CCode (cname = "gnome_rr_output_info_set_primary")]
		public void set_primary (bool primary);
		[CCode (cname = "gnome_rr_output_info_set_refresh_rate")]
		public void set_refresh_rate (int rate);
		[CCode (cname = "gnome_rr_output_info_set_rotation")]
		public void set_rotation (Gnome.RRRotation rotation);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_rr_screen_get_type ()")]
	public class RRScreen : GLib.Object, GLib.Initable {
		[CCode (cname = "gnome_rr_screen_new", has_construct_function = false)]
		public RRScreen (Gdk.Screen screen) throws GLib.Error;
		[CCode (cname = "gnome_rr_screen_create_clone_modes")]
		public Gnome.RRMode create_clone_modes ();
		[CCode (cname = "gnome_rr_screen_get_crtc_by_id")]
		public unowned Gnome.RRCrtc get_crtc_by_id (uint32 id);
		[CCode (cname = "gnome_rr_screen_get_dpms_mode")]
		public bool get_dpms_mode (Gnome.RRDpmsMode mode) throws GLib.Error;
		[CCode (cname = "gnome_rr_screen_get_output_by_id")]
		public unowned Gnome.RROutput get_output_by_id (uint32 id);
		[CCode (cname = "gnome_rr_screen_get_output_by_name")]
		public Gnome.RROutput get_output_by_name (string name);
		[CCode (cname = "gnome_rr_screen_get_ranges")]
		public void get_ranges (out int min_width, out int max_width, out int min_height, out int max_height);
		[CCode (cname = "gnome_rr_screen_get_timestamps")]
		public void get_timestamps (out uint32 change_timestamp_ret, out uint32 config_timestamp_ret);
		[CCode (array_length = false, array_null_terminated = true, cname = "gnome_rr_screen_list_clone_modes")]
		public unowned Gnome.RRMode[] list_clone_modes ();
		[CCode (array_length = false, array_null_terminated = true, cname = "gnome_rr_screen_list_crtcs")]
		public unowned Gnome.RRCrtc[] list_crtcs ();
		[CCode (array_length = false, array_null_terminated = true, cname = "gnome_rr_screen_list_modes")]
		public unowned Gnome.RRMode[] list_modes ();
		[CCode (array_length = false, array_null_terminated = true, cname = "gnome_rr_screen_list_outputs")]
		public unowned Gnome.RROutput[] list_outputs ();
		[CCode (cname = "gnome_rr_screen_refresh")]
		public bool refresh () throws GLib.Error;
		[CCode (cname = "gnome_rr_screen_set_dpms_mode")]
		public bool set_dpms_mode (Gnome.RRDpmsMode mode) throws GLib.Error;
		[CCode (cname = "gnome_rr_screen_set_primary_output")]
		public void set_primary_output (Gnome.RROutput output);
		[CCode (cname = "gnome_rr_screen_set_size")]
		public void set_size (int width, int height, int mm_width, int mm_height);
		[NoAccessorMethod]
		public Gdk.Screen gdk_screen { owned get; construct; }
		public virtual signal void changed ();
		public virtual signal void output_connected (void* output);
		public virtual signal void output_disconnected (void* output);
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", type_id = "gnome_wall_clock_get_type ()")]
	public class WallClock : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WallClock ();
		[CCode (cname = "gnome_wall_clock_get_clock")]
		public unowned string get_clock ();
		[NoAccessorMethod]
		public string clock { owned get; }
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cprefix = "GNOME_DESKTOP_THUMBNAIL_SIZE_")]
	public enum DesktopThumbnailSize {
		NORMAL,
		LARGE
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cprefix = "GNOME_RR_DPMS_")]
	public enum RRDpmsMode {
		ON,
		STANDBY,
		SUSPEND,
		OFF,
		DISABLED,
		UNKNOWN
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cprefix = "GNOME_RR_")]
	[Flags]
	public enum RRRotation {
		ROTATION_0,
		ROTATION_90,
		ROTATION_180,
		ROTATION_270,
		REFLECT_X,
		REFLECT_Y
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cprefix = "GNOME_RR_ERROR_")]
	public errordomain RRError {
		UNKNOWN,
		NO_RANDR_EXTENSION,
		RANDR_ERROR,
		BOUNDS_ERROR,
		CRTC_ASSIGNMENT,
		NO_MATCHING_CONFIG,
		NO_DPMS_EXTENSION
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "GNOME_RR_CONNECTOR_TYPE_PANEL")]
	public const string RR_CONNECTOR_TYPE_PANEL;
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_prepend_terminal_to_vector")]
	public static void desktop_prepend_terminal_to_vector (int argc, string argv);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_thumbnail_has_uri")]
	public static bool desktop_thumbnail_has_uri (Gdk.Pixbuf pixbuf, string uri);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_thumbnail_is_valid")]
	public static bool desktop_thumbnail_is_valid (Gdk.Pixbuf pixbuf, string uri, long mtime);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_thumbnail_md5")]
	[Deprecated (since = "2.22")]
	public static string desktop_thumbnail_md5 (string uri);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_thumbnail_path_for_uri")]
	public static string desktop_thumbnail_path_for_uri (string uri, Gnome.DesktopThumbnailSize size);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_desktop_thumbnail_scale_down_pixbuf")]
	public static Gdk.Pixbuf desktop_thumbnail_scale_down_pixbuf (Gdk.Pixbuf pixbuf, int dest_width, int dest_height);
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-crossfade.h,libgnome-desktop/gnome-bg.h,libgnome-desktop/gnome-desktop-thumbnail.h,libgnome-desktop/gnome-desktop-utils.h,libgnome-desktop/gnome-rr-config.h,libgnome-desktop/gnome-rr-labeler.h,libgnome-desktop/gnome-rr.h,libgnome-desktop/gnome-wall-clock.h", cname = "gnome_rr_error_quark")]
	public static GLib.Quark rr_error_quark ();
}
