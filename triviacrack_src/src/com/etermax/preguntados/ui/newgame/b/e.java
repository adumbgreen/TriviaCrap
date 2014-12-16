// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.b:
//            f

public class e extends BaseAdapter
{

    List a;
    LayoutInflater b;

    e(Context context, List list)
    {
        b = (LayoutInflater)context.getSystemService("layout_inflater");
        a = list;
    }

    public int getCount()
    {
        return a.size();
    }

    public Object getItem(int j)
    {
        return a.get(j);
    }

    public long getItemId(int j)
    {
        return ((DuelPlayerDTO)a.get(j)).getId().longValue();
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        ViewSwitcher viewswitcher;
        TextView textview;
        DuelPlayerDTO duelplayerdto;
        if (view == null)
        {
            view = b.inflate(k.player_grid_adapter, viewgroup, false);
            ViewSwitcher viewswitcher1 = (ViewSwitcher)view.findViewById(i.player_image);
            textview = (TextView)view.findViewById(i.player_name);
            view.setTag(new f(viewswitcher1, textview));
            viewswitcher = viewswitcher1;
        } else
        {
            f f1 = (f)view.getTag();
            viewswitcher = f1.a();
            textview = f1.b();
        }
        duelplayerdto = (DuelPlayerDTO)a.get(j);
        (new b()).a(viewswitcher, duelplayerdto);
        textview.setText(duelplayerdto.getName().split(" ")[0]);
        return view;
    }
}
