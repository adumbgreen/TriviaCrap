// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.a.a.b;
import com.etermax.gamescommon.dashboard.a.a.c;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.o;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.dashboard.a.c:
//            f, e, d, c, 
//            b

public class a
    implements b
{

    protected d a;
    private com.etermax.gamescommon.dashboard.a.c.c b;
    private com.etermax.gamescommon.dashboard.a.c.b c;
    private long d;
    private com.etermax.gamescommon.dashboard.b e;

    public a()
    {
        h();
    }

    public a(com.etermax.gamescommon.dashboard.a.c.c c1, com.etermax.gamescommon.dashboard.a.c.b b1, d d1)
    {
        h();
        b = c1;
        c = b1;
        a = d1;
    }

    private int a(int j)
    {
        switch (j)
        {
        default:
            return 0;

        case 0: // '\0'
            return i.game_1;

        case 1: // '\001'
            return i.game_2;

        case 2: // '\002'
            return i.game_3;

        case 3: // '\003'
            return i.game_4;
        }
    }

    private android.view.View.OnClickListener a(String s)
    {
        return new android.view.View.OnClickListener(s) {

            final String a;
            final a b;

            public void onClick(View view)
            {
                a.a(b).a(a);
            }

            
            {
                b = a.this;
                a = s;
                super();
            }
        };
    }

    static com.etermax.gamescommon.dashboard.a.c.b a(a a1)
    {
        return a1.c;
    }

    static com.etermax.gamescommon.dashboard.a.c.c b(a a1)
    {
        return a1.b;
    }

    private void h()
    {
        e = new com.etermax.gamescommon.dashboard.b();
    }

    protected int a(Language language)
    {
        return LanguageResourceMapper.getByCode(language).getFlagResource();
    }

    public View a(Context context)
    {
        return null;
    }

    public String a(f f1, Context context)
    {
        if (f1 instanceof UserDTO)
        {
            return ((UserDTO)f1).getName();
        }
        if (f1.isRandomOpponent())
        {
            return context.getString(o.button_random_opponent);
        } else
        {
            return f1.getOpponent().getName();
        }
    }

    public void a(long l)
    {
        d = l;
    }

    public void a(View view)
    {
    }

    public void a(View view, h h1)
    {
        h1.b();
        JVM INSTR tableswitch 0 6: default 48
    //                   0 88
    //                   1 74
    //                   2 81
    //                   3 48
    //                   4 67
    //                   5 48
    //                   6 95;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L1 _L6
_L1:
        int j = o.finished_games;
_L8:
        ((TextView)view.findViewById(i.section_text_view)).setText(j);
        return;
_L5:
        j = o.suggested_opponent_plural;
        continue; /* Loop/switch isn't completed */
_L3:
        j = o.pending_approval;
        continue; /* Loop/switch isn't completed */
_L4:
        j = o.their_move;
        continue; /* Loop/switch isn't completed */
_L2:
        j = o.your_move;
        continue; /* Loop/switch isn't completed */
_L6:
        j = o.more_free_games;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void a(View view, Boolean boolean1)
    {
    }

    public void a(BaseAdapter baseadapter, View view, c c1)
    {
        List list = (List)c1.a();
        for (int j = 0; j < list.size() && j < 4; j++)
        {
            View view1 = view.findViewById(a(j));
            ImageView imageview = (ImageView)view1.findViewById(i.image);
            TextView textview = (TextView)view1.findViewById(i.name);
            imageview.setImageResource(((com.etermax.gamescommon.dashboard.a.b)list.get(j)).b());
            if (list.size() >= 4)
            {
                textview.setVisibility(8);
            }
            textview.setText(((com.etermax.gamescommon.dashboard.a.b)list.get(j)).c());
            view1.setVisibility(0);
            view1.setOnClickListener(a(((com.etermax.gamescommon.dashboard.a.b)list.get(j)).a()));
        }

    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        f f1 = (f)g1.c();
        ((TextView)view.findViewById(i.opponent_text_view)).setText(a(f1, view.getContext()));
        View view1 = view.findViewById(i.tile_left_view);
        View view2 = view.findViewById(i.tile_right_view);
        if (f1.isImageTileLeft())
        {
            view1.setVisibility(0);
            view2.setVisibility(8);
        } else
        {
            view1.setVisibility(8);
            view2.setVisibility(0);
            view1 = view2;
        }
        view1.setOnClickListener(new e(this, f1.getOpponent().getId()));
        e.a((ViewSwitcher)view1, f1.getOpponent());
        ((ImageView)view.findViewById(i.dashboard_item_flag_image)).setImageResource(a(f1.getLanguageCode()));
    }

    public void a(BaseAdapter baseadapter, View view, com.etermax.tools.widget.a.i j)
    {
        f f1 = (f)j.a();
        ((TextView)view.findViewById(i.opponent_text_view)).setText(a(f1, view.getContext()));
        ((TextView)view.findViewById(i.dashboard_item_text)).setText(((UserDTO)f1).getVisibleUsername());
        View view1 = view.findViewById(i.tile_left_view);
        View view2 = view.findViewById(i.tile_right_view);
        if (f1.isImageTileLeft())
        {
            view1.setVisibility(0);
            view2.setVisibility(8);
        } else
        {
            view1.setVisibility(8);
            view2.setVisibility(0);
            view1 = view2;
        }
        view1.setOnClickListener(new e(this, ((UserDTO)f1).getId()));
        e.a((ViewSwitcher)view1, (k)f1);
    }

    public boolean a()
    {
        return false;
    }

    public View b(Context context)
    {
        return LayoutInflater.from(context).inflate(com.etermax.k.suggested_item_layout, null);
    }

    public void b(View view)
    {
    }

    public boolean b()
    {
        return false;
    }

    public View c(Context context)
    {
        return LayoutInflater.from(context).inflate(com.etermax.k.facebook_simple_item_layout, null);
    }

    public void c(View view)
    {
    }

    public boolean c()
    {
        return false;
    }

    public View d(Context context)
    {
        return LayoutInflater.from(context).inflate(com.etermax.k.dashboard_free_game_item_layout, null);
    }

    public void d(View view)
    {
        view.findViewById(i.divider).setVisibility(0);
    }

    public boolean d()
    {
        return false;
    }

    public View e(Context context)
    {
        return null;
    }

    public void e(View view)
    {
        view.findViewById(i.divider).setVisibility(4);
    }

    public boolean e()
    {
        return a.k();
    }

    public View f(Context context)
    {
        return null;
    }

    protected com.etermax.gamescommon.dashboard.b f()
    {
        return e;
    }

    public void f(View view)
    {
        view.findViewById(i.divider).setVisibility(4);
    }

    protected long g()
    {
        if (d != 0L)
        {
            return d;
        } else
        {
            return System.currentTimeMillis();
        }
    }

    public View g(Context context)
    {
        return LayoutInflater.from(context).inflate(com.etermax.k.dashboard_section_layout, null);
    }

    public void g(View view)
    {
        view.findViewById(i.divider).setVisibility(0);
    }

    public View h(Context context)
    {
        return LayoutInflater.from(context).inflate(com.etermax.k.dashboard_item_layout, null);
    }
}
