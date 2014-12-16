// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.a;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.c;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import java.util.Iterator;
import java.util.List;

public class n extends c
{

    private Context c;
    private List d;

    public n(Context context, List list, a a1)
    {
        super(a1);
        c = context;
        d = list;
    }

    static a a(n n1)
    {
        return n1.a;
    }

    private boolean a(UserDTO userdto)
    {
        for (Iterator iterator = d.iterator(); iterator.hasNext();)
        {
            if (((UserDTO)iterator.next()).getId().equals(userdto.getId()))
            {
                return true;
            }
        }

        return false;
    }

    static a b(n n1)
    {
        return n1.a;
    }

    protected void a(View view, UserDTO userdto)
    {
        ((CheckBox)view.findViewById(i.item_checkbox)).setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final n b;

            public void onClick(View view1)
            {
                com.etermax.preguntados.ui.newgame.duelmode.n.a(b).a(a);
            }

            
            {
                b = n.this;
                a = userdto;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener(userdto) {

            final UserDTO a;
            final n b;

            public void onClick(View view1)
            {
                n.b(b).a(a);
            }

            
            {
                b = n.this;
                a = userdto;
                super();
            }
        });
    }

    public void a(View view, h h1)
    {
        TextView textview = (TextView)view.findViewById(i.section_text_view);
        switch (h1.b())
        {
        default:
            return;

        case 0: // '\0'
            textview.setText(c.getResources().getString(o.player_plural));
            break;
        }
        int j = c.getResources().getColor(f.new_duel_list_section);
        view.findViewById(i.section_container).setBackgroundColor(j);
    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        super.a(baseadapter, view, g1);
        CheckBox checkbox = (CheckBox)view.findViewById(i.item_checkbox);
        if (a((UserDTO)g1.c()))
        {
            checkbox.setChecked(true);
            return;
        } else
        {
            checkbox.setChecked(false);
            return;
        }
    }

    public View g(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_section_view, null);
    }

    public View h(Context context)
    {
        return LayoutInflater.from(context).inflate(k.new_duel_mode_search_player_view, null);
    }
}
