// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter;

import android.content.Context;
import android.support.v4.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.etermax.chat.a.i;
import com.etermax.chat.a.l;
import com.etermax.chat.ui.adapter.a.c;
import com.etermax.chat.ui.adapter.a.d;
import com.etermax.chat.ui.adapter.a.e;
import com.etermax.chat.ui.adapter.a.f;
import com.etermax.chat.ui.adapter.a.g;
import com.etermax.gamescommon.dashboard.b;
import java.util.ArrayList;

// Referenced classes of package com.etermax.chat.ui.adapter:
//            b

public class a extends BaseAdapter
{

    private static int c = 0;
    private static int d = 1;
    private static int e = 2;
    private static int f = 3;
    private static int g = 4;
    private static int h = 5;
    Context a;
    com.etermax.chat.a.a b;
    private LongSparseArray i;
    private b j;
    private com.etermax.chat.ui.adapter.b k;

    public a()
    {
    }

    private void c()
    {
        i = new LongSparseArray();
        i.put(0L, new f(j, a));
        i.put(1L, new g(a));
        i.put(2L, new c());
        i.put(3L, new com.etermax.chat.ui.adapter.a.a());
        i.put(4L, new e());
        i.put(5L, new d(a));
    }

    public com.etermax.chat.a.f a(int i1)
    {
        com.etermax.chat.a.f f1 = (com.etermax.chat.a.f)b.e().get(i1);
        return f1;
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        notifyDataSetChanged();
_L2:
        return null;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void a()
    {
        j = new b();
        c();
    }

    public void a(com.etermax.chat.ui.adapter.b b1)
    {
        k = b1;
    }

    public void b()
    {
        notifyDataSetChanged();
        if (k != null)
        {
            k.a();
        }
    }

    public int getCount()
    {
        return b.e().size();
    }

    public Object getItem(int i1)
    {
        return a(i1);
    }

    public long getItemId(int i1)
    {
        return (long)i1;
    }

    public int getItemViewType(int i1)
    {
        if (a(i1) == null)
        {
            return g;
        }
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.chat.a.i.values().length];
                try
                {
                    a[i.i.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[i.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[i.h.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[i.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[a(i1).b().ordinal()])
        {
        default:
            return c;

        case 1: // '\001'
            return f;

        case 2: // '\002'
            if (a(i1).a().a())
            {
                return d;
            } else
            {
                return c;
            }

        case 3: // '\003'
            return e;

        case 4: // '\004'
            return h;
        }
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        com.etermax.chat.ui.adapter.a.b b1 = (com.etermax.chat.ui.adapter.a.b)i.get(getItemViewType(i1));
        if (b1 != null)
        {
            LayoutInflater layoutinflater = LayoutInflater.from(a);
            com.etermax.chat.a.f f1 = a(i1);
            view = b1.a(i1, view, viewgroup, layoutinflater, f1);
        }
        return view;
    }

    public int getViewTypeCount()
    {
        return i.size();
    }

}
