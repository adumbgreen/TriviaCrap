// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.a.a;
import com.etermax.gamescommon.menu.a.a.g;
import java.util.Collection;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            k, o

public class l extends BaseAdapter
{

    k a;
    Context b;

    public l(Context context)
    {
        b = context;
        a = new k();
    }

    public void a()
    {
        a.b();
        notifyDataSetInvalidated();
    }

    public void a(o o)
    {
        a.a(o);
        notifyDataSetChanged();
    }

    public void a(o o, Collection collection)
    {
        a.a(o, collection);
        notifyDataSetChanged();
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public void b(o o, Collection collection)
    {
        a.b(o, collection);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return a.a();
    }

    public Object getItem(int i)
    {
        return a.a(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        return a.a(i).a().ordinal();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return a.a(i).a(b, view, this);
    }

    public int getViewTypeCount()
    {
        return g.values().length;
    }

    public boolean isEnabled(int i)
    {
        return a.a(i).a().a();
    }
}
