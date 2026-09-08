//setting variables
event_inherited();
enemy_type = "bandit"
hp = max_hp;
scr_create_enemy_parts(enemy_type, equip2, -20, choose(asset_get_index("s_enemy_head_" + enemy_type), asset_get_index("s_enemy2_head_" + enemy_type),asset_get_index("s_enemy3_head_" + enemy_type)))
scr_ai_line_guarding();
