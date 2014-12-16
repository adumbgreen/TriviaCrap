// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import android.widget.ToggleButton;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.d:
//            c, e

class d extends BaseAdapter
{

    final c a;
    private Context b;
    private List c;
    private b d;
    private boolean e[];

    public d(c c1, Context context, List list)
    {
        a = c1;
        super();
        b = context;
        c = list;
        d = new b();
        e = new boolean[list.size()];
        int j = 0;
        while (j < list.size()) 
        {
            if (((UserDTO)c.get(j)).getIs_app_user())
            {
                com.etermax.preguntados.d.c.a(c1).add(c.get(j));
            } else
            {
                com.etermax.preguntados.d.c.b(c1).add(c.get(j));
            }
            e[j] = true;
            j++;
        }
    }

    static boolean[] a(d d1)
    {
        return d1.e;
    }

    static List b(d d1)
    {
        return d1.c;
    }

    public UserDTO a(int j)
    {
        return (UserDTO)c.get(j);
    }

    public int getCount()
    {
        return c.size();
    }

    public Object getItem(int j)
    {
        return a(j);
    }

    public long getItemId(int j)
    {
        return ((UserDTO)c.get(j)).getId().longValue();
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        UserDTO userdto = (UserDTO)c.get(j);
        e e1;
        if (view == null)
        {
            view = LayoutInflater.from(b).inflate(k.inactive_friend_item_layout, null);
            e1 = new e(a, null);
            e1.a = (ToggleButton)view.findViewById(i.item_check);
            e1.b = (ViewSwitcher)view.findViewById(i.item_player_image);
            e1.c = (TextView)view.findViewById(i.item_player_name);
            e1.d = (TextView)view.findViewById(i.item_player_time);
            view.setTag(e1);
        } else
        {
            e1 = (e)view.getTag();
        }
        e1.a.setChecked(e[j]);
        e1.a.setOnClickListener(new android.view.View.OnClickListener(j) {

            final int a;
            final d b;

            public void onClick(View view1)
            {
                boolean aflag[] = d.a(b);
                int j1 = a;
                boolean flag;
                if (!d.a(b)[a])
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                aflag[j1] = flag;
                if (d.a(b)[a])
                {
                    if (((UserDTO)com.etermax.preguntados.d.d.b(b).get(a)).getIs_app_user())
                    {
                        com.etermax.preguntados.d.c.c(b.a).add(com.etermax.preguntados.d.d.b(b).get(a));
                        return;
                    } else
                    {
                        com.etermax.preguntados.d.c.d(b.a).add(com.etermax.preguntados.d.d.b(b).get(a));
                        return;
                    }
                }
                if (((UserDTO)com.etermax.preguntados.d.d.b(b).get(a)).getIs_app_user())
                {
                    com.etermax.preguntados.d.c.e(b.a).remove(com.etermax.preguntados.d.d.b(b).get(a));
                    return;
                } else
                {
                    com.etermax.preguntados.d.c.f(b.a).remove(com.etermax.preguntados.d.d.b(b).get(a));
                    return;
                }
            }

            
            {
                b = d.this;
                a = j;
                super();
            }
        });
        e1.c.setText(((UserDTO)c.get(j)).getName());
        d.a(e1.b, (com.etermax.gamescommon.k)c.get(j));
        if (userdto.getIs_app_user())
        {
            int l = (int)Math.rint((float)((new Date()).getTime() - ((UserDTO)c.get(j)).getLastActiveDate().getTime()) / 8.64E+07F);
            TextView textview = e1.d;
            Resources resources = b.getResources();
            int i1 = m.push_gifting_send_01;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(l);
            textview.setText(resources.getQuantityString(i1, l, aobj));
            return view;
        } else
        {
            e1.d.setText(b.getString(o.invite_to_play_app));
            return view;
        }
    }
}
