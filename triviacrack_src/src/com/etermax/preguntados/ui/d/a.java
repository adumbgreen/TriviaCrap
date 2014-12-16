// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PowerUpDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomLinearButton;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            c, d, b, i

public class a extends b
{

    static Map i;
    int a;
    GameDTO b;
    int c;
    com.etermax.preguntados.ui.d.i d;
    d e;
    String f;
    int g;
    PowerUp h;

    public a()
    {
    }

    private int a(PowerUp powerup)
    {
        for (Iterator iterator = e.s().getPowerUps().iterator(); iterator.hasNext();)
        {
            PowerUpDTO powerupdto = (PowerUpDTO)iterator.next();
            if (powerupdto.getName() == powerup)
            {
                return powerupdto.getCost();
            }
        }

        return 0;
    }

    public static Fragment a(int j, GameDTO gamedto, int l)
    {
        return com.etermax.preguntados.ui.d.c.h().b(j).a(gamedto).a(l).a();
    }

    private static void a(View view, float f1)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f1, f1);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        view.startAnimation(alphaanimation);
    }

    private void h()
    {
        for (Iterator iterator = i.keySet().iterator(); iterator.hasNext();)
        {
            PowerUp powerup = (PowerUp)iterator.next();
            int j = ((Integer)((List)i.get(powerup)).get(0)).intValue();
            int l = a(powerup);
            CustomLinearButton customlinearbutton = (CustomLinearButton)getView().findViewById(j);
            TextView textview = (TextView)customlinearbutton.findViewById(i.power_up_cost_textview);
            ImageView imageview = (ImageView)customlinearbutton.findViewById(i.power_up_image);
            ImageView imageview1 = (ImageView)customlinearbutton.findViewById(i.token);
            customlinearbutton.setIs3D(false);
            textview.setText(String.valueOf(l));
            if (powerup.equals(h))
            {
                imageview.setImageResource(((Integer)((List)i.get(powerup)).get(1)).intValue());
                int i1 = getResources().getIdentifier((new StringBuilder()).append("arrow_start_").append(c).toString(), "id", getApplicationContext().getPackageName());
                ImageView imageview2 = (ImageView)getView().findViewById(i1);
                Matrix matrix = new Matrix();
                matrix.setRotate(-135F, imageview2.getDrawable().getIntrinsicWidth() / 2, imageview2.getDrawable().getIntrinsicHeight() / 2);
                imageview2.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
                imageview2.setImageMatrix(matrix);
                imageview2.setVisibility(0);
            } else
            {
                imageview.setImageResource(((Integer)((List)i.get(powerup)).get(2)).intValue());
                a(imageview, 0.5F);
                a(imageview1, 0.5F);
                a(textview, 0.5F);
            }
        }

    }

    public com.etermax.preguntados.ui.d.b a()
    {
        return new com.etermax.preguntados.ui.d.b() {

            final a a;

            public void a(GameDTO gamedto, PowerUp powerup)
            {
            }

            public void b(GameDTO gamedto, PowerUp powerup)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        ((TextView)getView().findViewById(i.tip_textview)).setText((new StringBuilder()).append(getResources().getString(o.tip)).append(": ").append(getResources().getString(o.powerups_help_title)).toString());
        int j = 1 + (int)(100D * Math.random()) % 3;
        String s = (new StringBuilder()).append(f).append(j).toString();
        int l = getResources().getIdentifier(s, "drawable", getApplicationContext().getPackageName());
        ((ImageView)getView().findViewById(i.category_character_container)).setImageResource(l);
        String s1 = (new StringBuilder()).append("trivia_powerup_0").append(1 + c).toString();
        int i1 = getResources().getIdentifier(s1, "string", getApplicationContext().getPackageName());
        TextView textview = (TextView)getView().findViewById(i.tip_title_textview);
        textview.setTextColor(getResources().getColor(g));
        textview.setText(i1);
        String s2 = (new StringBuilder()).append("trivia_powerup_0").append(1 + c).append("_txt_sm").toString();
        int j1 = getResources().getIdentifier(s2, "string", getApplicationContext().getPackageName());
        ((TextView)getView().findViewById(i.tip_subtitle_textview)).setText(j1);
        h();
    }

    void c()
    {
        switch (a)
        {
        default:
            return;

        case 1: // '\001'
            ((com.etermax.preguntados.ui.d.b)mCallbacks).a(b, h);
            return;

        case 2: // '\002'
            ((com.etermax.preguntados.ui.d.b)mCallbacks).b(b, h);
            break;
        }
    }

    void d()
    {
        c();
    }

    void e()
    {
        c();
    }

    void f()
    {
        c();
    }

    void g()
    {
        c();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.etermax.a.a.c("PREGUNTADOS(onCreateView)", (new StringBuilder()).append("mTipType:").append(c).toString());
        c;
        JVM INSTR tableswitch 0 3: default 64
    //                   0 107
    //                   1 143
    //                   2 179
    //                   3 215;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        f = "power_ups_time_";
        d.a(getApplicationContext(), 1);
        h = PowerUp.EXTRA_TIME;
        g = f.tip_time;
_L7:
        return layoutinflater.inflate(k.tip_fragment_layout, viewgroup, false);
_L2:
        f = "power_ups_bomb_";
        d.a(getApplicationContext(), 0);
        h = PowerUp.BOMB;
        g = f.tip_bomb;
        continue; /* Loop/switch isn't completed */
_L3:
        f = "power_ups_time_";
        d.a(getApplicationContext(), 1);
        h = PowerUp.EXTRA_TIME;
        g = f.tip_time;
        continue; /* Loop/switch isn't completed */
_L4:
        f = "power_ups_double_";
        d.a(getApplicationContext(), 2);
        h = PowerUp.DOUBLE_CHANCE;
        g = f.tip_double;
        continue; /* Loop/switch isn't completed */
_L5:
        f = "power_ups_pass_";
        d.a(getApplicationContext(), 3);
        h = PowerUp.SWAP_QUESTION;
        g = f.tip_pass;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static 
    {
        i = new HashMap();
        Map map = i;
        PowerUp powerup = PowerUp.EXTRA_TIME;
        Integer ainteger[] = new Integer[3];
        ainteger[0] = Integer.valueOf(i.power_up_button_extra_time);
        ainteger[1] = Integer.valueOf(h.pu_clock);
        ainteger[2] = Integer.valueOf(h.pu_clock_gray);
        map.put(powerup, Arrays.asList(ainteger));
        Map map1 = i;
        PowerUp powerup1 = PowerUp.BOMB;
        Integer ainteger1[] = new Integer[4];
        ainteger1[0] = Integer.valueOf(i.power_up_button_bomb);
        ainteger1[1] = Integer.valueOf(h.pu_bomb);
        ainteger1[2] = Integer.valueOf(h.pu_bomb_gray);
        ainteger1[3] = Integer.valueOf(f.red);
        map1.put(powerup1, Arrays.asList(ainteger1));
        Map map2 = i;
        PowerUp powerup2 = PowerUp.DOUBLE_CHANCE;
        Integer ainteger2[] = new Integer[4];
        ainteger2[0] = Integer.valueOf(i.power_up_button_double_chance);
        ainteger2[1] = Integer.valueOf(h.pu_replay);
        ainteger2[2] = Integer.valueOf(h.pu_replay_gray);
        ainteger2[3] = Integer.valueOf(f.aqua);
        map2.put(powerup2, Arrays.asList(ainteger2));
        Map map3 = i;
        PowerUp powerup3 = PowerUp.SWAP_QUESTION;
        Integer ainteger3[] = new Integer[4];
        ainteger3[0] = Integer.valueOf(i.power_up_button_swap_question);
        ainteger3[1] = Integer.valueOf(h.pu_next);
        ainteger3[2] = Integer.valueOf(h.pu_next_gray);
        ainteger3[3] = Integer.valueOf(f.violet);
        map3.put(powerup3, Arrays.asList(ainteger3));
    }
}
