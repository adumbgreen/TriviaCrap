// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.g;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.a.e;
import com.etermax.tools.widget.a.h;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode.a:
//            d, a

public class c
    implements e
{

    private Context a;
    private a b;

    public c(Context context, a a1)
    {
        a = context;
        b = a1;
    }

    static a a(c c1)
    {
        return c1.b;
    }

    public View a(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_item_button_continue_view, null);
    }

    public void a(View view)
    {
        int j = (int)a.getResources().getDimension(g.topbottom_padding);
        view.setPadding(view.getPaddingLeft(), j, view.getPaddingRight(), view.getPaddingBottom());
        view.findViewById(i.item_button).setOnClickListener(new android.view.View.OnClickListener() {

            final c a;

            public void onClick(View view1)
            {
                c.a(a).d();
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    public void a(View view, int j, int l)
    {
        ((TextView)view.findViewById(i.players_count)).setText((new StringBuilder()).append(j).append("/").append(l).toString());
    }

    public void a(View view, h h1)
    {
        TextView textview;
        view.setClickable(false);
        textview = (TextView)view.findViewById(i.section_text_view);
        h1.b();
        JVM INSTR tableswitch 0 0: default 40
    //                   0 56;
           goto _L1 _L2
_L1:
        int l = 0;
_L4:
        view.findViewById(i.section_container).setBackgroundColor(l);
        return;
_L2:
        int j = a.getResources().getColor(f.new_duel_list_section);
        textview.setText(a.getResources().getString(o.challenger_plural));
        l = j;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(BaseAdapter baseadapter, View view, com.etermax.tools.widget.a.g g1)
    {
        b b1 = new b();
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.item_image);
        TextView textview = (TextView)view.findViewById(i.item_name);
        TextView textview1 = (TextView)view.findViewById(i.item_name_small);
        ImageButton imagebutton = (ImageButton)view.findViewById(i.item_button_remove);
        if (g1.c() instanceof UserDTO)
        {
            UserDTO userdto = (UserDTO)g1.c();
            b1.a(viewswitcher, userdto);
            if (TextUtils.isEmpty(userdto.getFacebook_name()) || !userdto.getFb_show_name())
            {
                textview.setText(userdto.getVisibleUsername());
                textview1.setVisibility(8);
            } else
            {
                textview.setText(userdto.getFacebook_name());
                textview1.setText(userdto.getVisibleUsername());
                textview1.setVisibility(0);
            }
        }
        if (g1 instanceof d)
        {
            if (((d)g1).b())
            {
                imagebutton.setVisibility(8);
            } else
            {
                imagebutton.setVisibility(0);
            }
        }
        imagebutton.setOnClickListener(new android.view.View.OnClickListener(g1) {

            final com.etermax.tools.widget.a.g a;
            final c b;

            public void onClick(View view1)
            {
                c.a(b).a(a);
            }

            
            {
                b = c.this;
                a = g1;
                super();
            }
        });
    }

    public void d(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public void e(View view)
    {
        view.findViewById(i.item_divider).setVisibility(8);
    }

    public void f(View view)
    {
        view.findViewById(i.item_divider).setVisibility(8);
    }

    public View g(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_section_view, null);
    }

    public void g(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public View h(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_item_opponent_view, null);
    }
}
