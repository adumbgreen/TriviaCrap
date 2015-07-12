// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.b.e;
import com.etermax.gamescommon.menu.a.b.f;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class d extends a
{

    private String c;
    private int d;

    public d(o o)
    {
        super(com.etermax.gamescommon.menu.a.a.g.f, o);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        e e1;
        if (view == null)
        {
            e1 = f.a(context);
        } else
        {
            e1 = (e)view;
        }
        if (!TextUtils.isEmpty(c))
        {
            e1.setMessage(c);
        } else
        if (d > 0)
        {
            e1.setMessage(d);
            return e1;
        }
        return e1;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!super.equals(obj))
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            d d1 = (d)obj;
            if (c == null)
            {
                if (d1.c != null)
                {
                    return false;
                }
            } else
            if (!c.equals(d1.c))
            {
                return false;
            }
            if (d != d1.d)
            {
                return false;
            }
        }
        return true;
    }
}
