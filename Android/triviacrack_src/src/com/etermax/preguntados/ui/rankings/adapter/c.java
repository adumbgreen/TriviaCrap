// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.f;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.ui.rankings.adapter.view.RankingsPlayerItemView;
import com.etermax.preguntados.ui.rankings.adapter.view.RankingsPlayerItemView_;
import com.etermax.preguntados.ui.rankings.adapter.view.d;
import com.etermax.preguntados.ui.rankings.b;
import com.etermax.tools.widget.a.e;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;

public class c
    implements e
{

    protected Context a;
    protected b b;

    public c(Context context, b b1)
    {
        a = context;
        b = b1;
    }

    public View a(Context context)
    {
        return com.etermax.preguntados.ui.rankings.adapter.view.d.a(context);
    }

    public void a(View view, h h1)
    {
    }

    public void a(BaseAdapter baseadapter, View view, g g1)
    {
        if (view instanceof RankingsPlayerItemView)
        {
            RankingsPlayerItemView rankingsplayeritemview = (RankingsPlayerItemView)view;
            rankingsplayeritemview.a((UserRankDTO)g1.c());
            rankingsplayeritemview.a(((UserRankDTO)g1.c()).getUser().getId().longValue(), b);
        }
    }

    public void a(com.etermax.preguntados.ui.rankings.adapter.view.e e1, int j)
    {
        e1.setHeaderColor(a.getResources().getColor(f.rankings_section));
        e1.setLeftTitle(a.getString(o.friend_plural));
        e1.setRightTitle(a.getString(o.level));
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
        return com.etermax.preguntados.ui.rankings.adapter.view.f.a(context);
    }

    public void g(View view)
    {
        view.findViewById(i.item_divider).setVisibility(0);
    }

    public View h(Context context)
    {
        return RankingsPlayerItemView_.a(context);
    }
}
