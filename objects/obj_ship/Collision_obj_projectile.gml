current_hp -= other.damages;
hit_alpha = 1;
hit_color = other.my_hit_color;
instance_destroy(other);
