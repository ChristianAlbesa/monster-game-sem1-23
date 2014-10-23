
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	    SESprite bg;
        SEEntity leatherface;
        SEEntity ft;
        int w;
        int h;
        public static int x;
        public static int y;
        int i;
        
    public void initialize(SEResourceCache rsc)
     {    
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        x = 0;
        y = 0;
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("myroad","road",w,h);
        bg = add_sprite_for_image(SEImage.for_resource("myroad"));
        bg.move(0,0);
        
        ft = add_entity(new PlayerEntity());
        for(i=0;i<Math.random(5,20);i++)
        {
            add_entity(new FallEntity());
        }
        add_entity(new FallEntity());
        add_entity(new PlayerEntity());
        
    }
    public void update(TimeVal now, double delta)
    {
        base.update(now,delta);
    }
    public void on_pointer_move(SEPointerInfo pi)
    {
        x = pi.get_x();
        y = pi.get_y();    
    }
    public void cleanup() {
        base.cleanup();
    }
}