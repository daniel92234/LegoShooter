alarm[0] = 600 + random(600);
if irandom(5) == 1{
    cloudy = true;
    if irandom(4) > 1{
        instance_create(0, 0, o_bkg_rain);
    }
}
else{
    cloudy = false;
}
if current_hour >= 7 and current_hour <= 18{
    time_of_day = "day";
}
else{
    time_of_day = "night";
    instance_create(0, 0, o_bkg_lighting_night);
}

