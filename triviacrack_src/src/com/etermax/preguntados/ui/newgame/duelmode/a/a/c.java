// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.widget.a.e;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode.a.a:
//            a

public class c
    implements e
{

    protected a a;
    protected boolean b;

    public c(a a1)
    {
        a = a1;
    }

    public View a(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_search_all_item_view, null);
    }

    public void a()
    {
        b = false;
    }

    public void a(View view)
    {
        View view1 = view.findViewById(i.item_loading);
        if (b)
        {
            view1.setVisibility(0);
            b = false;
        } else
        {
            view1.setVisibility(8);
        }
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final c a;

            public void onClick(View view2)
            {
                a.a.a(true);
                a.b = true;
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    protected void a(View view, UserDTO userdto)
    {
        ImageButton imagebutton = (ImageButton)view.findViewById(i.item_button_add);
        view.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final c b;

            public void onClick(View view1)
            {
                b.a.a(a);
            }

            
            {
                b = c.this;
                a = userdto;
                super();
            }
        });
        imagebutton.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final c b;

            public void onClick(View view1)
            {
                b.a.a(a);
            }

            
            {
                b = c.this;
                a = userdto;
                super();
            }
        });
    }

    public void a(View view, h h1)
    {
    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        b b1 = new b();
        ViewSwitcher viewswitcher = (ViewSwitcher)view.findViewById(i.item_image);
        TextView textview = (TextView)view.findViewById(i.item_name);
        TextView textview1 = (TextView)view.findViewById(i.item_name_small);
        View view1 = view.findViewById(i.item_divider);
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
        view1.setVisibility(8);
        a(view, (UserDTO)g1.c());
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
        return null;
    }

    public void g(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public View h(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_search_opponent_view, null);
    }
}
