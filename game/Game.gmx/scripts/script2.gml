// This script should load a map from included file.
// usage: map_load(map_name) - Do not add extension.
//

var handle = file_text_open_read("Maps/" + argument0 + ".rtmf");
if (file_text_read_string(handle) != "RTMF") {
    show_error("Could not load map file. Reason: Invalid file header", true);
}

file_text_readln(handle);
var entity_count = file_text_read_real(handle);
file_text_readln(handle);

for (var i = 0; i < entity_count; i++) {
    var entity_name = file_text_read_string(handle);
    file_text_readln(handle);
    var entity_pos_x = file_text_read_real(handle);
    file_text_readln(handle);
    var entity_pos_y = file_text_read_real(handle);
    file_text_readln(handle);
    var entity_angle = file_text_read_real(handle);
    file_text_readln(handle);
    var entity_meta_info = file_text_read_string(handle);
    file_text_readln(handle);
    
    show_debug_message("Entity definition found: " + entity_name);
    
    // Create an instance of the entity.
    if (object_exists("obj_ent_" + entity_name)) {
        var inst = instance_create(entity_pos_x, entity_pos_y, "obj_ent_" + entity_name);
        inst.image_angle = entity_angle;
        inst.meta = entity_meta_info;
        
        show_debug_message("Entity creared: " + entity_name);
    } else {
        show_error("No such entity found: " + entity_name, true);
    }
}
