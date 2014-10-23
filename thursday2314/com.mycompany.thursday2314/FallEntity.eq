
/*
 * FallEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class FallEntity : SEEntity
{
    SESprite leatherface;
    int w;
    int h;
    int mx;
    int my;
    int p_x;
    int py;
    
    public void initialize(SEResourceCache rsc)
    {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        p_x = MainScene.x;
        py = MainScene.y;
        
        rsc.prepare_image("myleatherface","leatherface",0.1*w);
        leatherface = add_sprite_for_image(SEImage.for_resource("myleatherface"));
        mx = leatherface.get_x();
        my = leatherface.get_y();
        leatherface.move(Math.random(0,w), Math.random(0,h));
    }
    public void tick(TimeVal now, double delta)
    {
        var mx = leatherface.get_x();
        var my = leatherface.get_y();
        var px = MainScene.x;
        var py = MainScene.y;
        base.tick(now, delta);
        leatherface.move(mx +(px-mx)/Math.random(100,1000), my + (py-my)/Math.random(100,1000));
    }
    public void cleanup()
    {
        base.cleanup();
    }
    
}

