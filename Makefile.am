AUTOMAKE_OPTIONS=foreign

ACLOCAL_AMFLAGS = -I m4

etctseriesdir = $(sysconfdir)/tseries/$(PVERSION)
dist_etctseries_DATA = \
	etc/tseries.ctl            \
	etc/symbols.def		   \
	etc/tseries.filter	   \
	etc/tseries-bookmarks.common \
	etc/tseries-bookmarks.VNN


styledir        = $(datarootdir)/tseries/@PVERSION@/style
dist_style_DATA = \
	style/tsDiagrams.def\
	style/accumprecip.style		\
	style/eps_rr24.style		\
	style/eps_rr24t2m_noens_op.style\
	style/eps_rr.style		\
	style/eps_plum_rr.style         \
	style/eps_rrt2m.style		\
	style/eps_t2m.style		\
	style/eps_z500.style		\
	style/fxqgram.style		\
	style/fimex_eps_t2m.style       \
	style/fimex_eps_rr.style        \
	style/fimex_eps_gust.style      \
	style/fimex_eps_ff.style        \
	style/glameps_ff.style		\
	style/glameps_rr.style		\
	style/glameps_t2m.style		\
	style/glameps_z500.style	\
	style/havdiagram.style          \
	style/lameps_ff.style		\
	style/lameps_plum_rr.style	\
	style/lameps_rr.style		\
	style/lameps_t2m.style		\
	style/lameps_z500.style		\
	style/marinogram.style		\
	style/maritim.style		\
	style/meteogram_batch.style	\
	style/meteogram_ff.style	\
	style/meteogram.style		\
	style/proff_combi.style		\
	style/proff_edit.style		\
	style/rrqgram.style		\
	style/snow_meteogram.style	\
	style/t2mqgram.style		\
	style/webogram.style		



pixmapsdir= $(datarootdir)/pixmaps/tseries/@PVERSION@
dist_pixmaps_DATA= \
	share/pixmaps/ts_find.xpm               \
	share/pixmaps/ts_station.xpm            \
	share/pixmaps/ts_active.xpm             \
	share/pixmaps/ts_new_station.xpm        \
	share/pixmaps/weather_01.png            \
	share/pixmaps/weather_02.png            \
	share/pixmaps/weather_03.png            \
	share/pixmaps/weather_04.png            \
	share/pixmaps/weather_05.png            \
	share/pixmaps/weather_06.png            \
	share/pixmaps/weather_07.png            \
	share/pixmaps/weather_08.png            \
	share/pixmaps/weather_09.png            \
	share/pixmaps/weather_10.png            \
	share/pixmaps/weather_11.png            \
	share/pixmaps/weather_12.png            \
	share/pixmaps/weather_13.png            \
	share/pixmaps/weather_14.png            \
	share/pixmaps/weather_15.png            \
	share/pixmaps/weather_16.png            \
	share/pixmaps/weather_17.png            \
	share/pixmaps/weather_18.png            \
	share/pixmaps/weather_19.png            \
	share/pixmaps/weather_999.png           \
	share/pixmaps/busy.gif

applicationsdir = $(datarootdir)/applications
dist_applications_DATA= \
	share/metno-tseries.desktop

pixmapsbasedir= $(datarootdir)/pixmaps
dist_pixmapsbase_DATA= \
	share/pixmaps/tseries.png

install-data-hook:
	cd $(DESTDIR)$(applicationsdir) && mv metno-tseries.desktop metno-tseries-@PVERSION@.desktop
	cd $(DESTDIR)$(pixmapsbasedir)  && mv tseries.png tseries-@PVERSION@.png

