if time_of_day == "day"{
    draw_background_tiled(bkg_city, 0, __background_get( e__BG.Y, 0 ));
    if cloudy = true{
        draw_background_tiled(bkg_city_cloudy, 0, __background_get( e__BG.Y, 0 ));
    }
}
else if time_of_day == "night"{
    draw_background_tiled(bkg_city_night, 0, __background_get( e__BG.Y, 0 ));
    if cloudy = true{
        draw_background_tiled(bkg_city_night_cloudy, 0, __background_get( e__BG.Y, 0 ));
    }
}

