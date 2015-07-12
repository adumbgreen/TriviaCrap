// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.chat.a.g;
import com.etermax.chat.a.l;
import com.etermax.gamescommon.d.a.c;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import java.text.SimpleDateFormat;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class f
    implements com.etermax.chat.ui.adapter.a.b
{

    private b a;
    private Context b;

    public f(b b1, Context context)
    {
        a = b1;
        b = context;
    }

    private void a(View view, int j)
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            view.setBackgroundDrawable(b.getResources().getDrawable(j));
            return;
        } else
        {
            view.setBackground(b.getResources().getDrawable(j));
            return;
        }
    }

    public View a(int j, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, com.etermax.chat.ui.f f1)
    {
        ViewGroup viewgroup1;
        if (view == null)
        {
            viewgroup1 = (ViewGroup)layoutinflater.inflate(k.list_item_simple_text_in, viewgroup, false);
        } else
        {
            viewgroup1 = (ViewGroup)view;
        }
        if (f1 instanceof com.etermax.chat.a.f)
        {
            com.etermax.chat.a.f f2 = (com.etermax.chat.a.f)f1;
            View view1 = viewgroup1.findViewById(i.user_avatar);
            ViewSwitcher viewswitcher = (ViewSwitcher)viewgroup1.findViewById(i.user_avatar);
            String s = f2.a().c();
            String s1;
            TextView textview;
            String s2;
            if (f2.a().b() == null)
            {
                s1 = "";
            } else
            {
                s1 = f2.a().b();
            }
            if (s != null && s.length() > 2)
            {
                a.a(viewswitcher, f2.a().c(), s1);
            } else
            {
                a.a(viewswitcher, s1);
            }
            textview = (TextView)viewgroup1.findViewById(i.tv_message);
            if (f2.g() == g.c || f2.g() == g.d)
            {
                view1.setVisibility(0);
                a(((View) (textview)), h.msg_in);
            } else
            {
                view1.setVisibility(8);
                a(((View) (textview)), h.msg_in_2);
            }
            if (f2.g() == g.a)
            {
                viewgroup1.setPadding((int)com.etermax.a.b.b(b, 5), (int)com.etermax.a.b.b(b, 10), (int)com.etermax.a.b.b(b, 5), 0);
            } else
            {
                viewgroup1.setPadding((int)com.etermax.a.b.b(b, 5), 0, (int)com.etermax.a.b.b(b, 5), 0);
            }
            textview.setText(c.a(viewgroup1.getContext(), f2.c()));
            s2 = (new SimpleDateFormat("HH:mm")).format(f2.f());
            ((TextView)viewgroup1.findViewById(i.hour_message)).setText((new StringBuilder()).append("").append(s2).toString());
        }
        return viewgroup1;
    }
}
