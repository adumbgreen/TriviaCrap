// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            c, f, NavigationPanelSectionView, NavigationPanel, 
//            NavigationPanelItemView_, NavigationPanelItemView

class a extends BaseAdapter
{

    final NavigationPanel a;
    private List b;

    private a(NavigationPanel navigationpanel, List list)
    {
        a = navigationpanel;
        super();
        b = list;
    }

    a(NavigationPanel navigationpanel, List list, NavigationPanel._cls1 _pcls1)
    {
        this(navigationpanel, list);
    }

    public c a(int i)
    {
        return (c)b.get(i);
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        return ((c)b.get(i)).c() != f.k ? 1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        c c1 = a(i);
        if (c1.c() == f.k)
        {
            NavigationPanelSectionView navigationpanelsectionview;
            if (view == null)
            {
                navigationpanelsectionview = new NavigationPanelSectionView(a.getContext());
            } else
            {
                navigationpanelsectionview = (NavigationPanelSectionView)view;
            }
            navigationpanelsectionview.setText(c1.a());
            return navigationpanelsectionview;
        }
        NavigationPanelItemView navigationpanelitemview;
        if (view == null)
        {
            navigationpanelitemview = NavigationPanelItemView_.a(a.getContext());
        } else
        {
            navigationpanelitemview = (NavigationPanelItemView)view;
        }
        navigationpanelitemview.a(c1);
        return navigationpanelitemview;
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public boolean isEnabled(int i)
    {
        return a(i).c() != f.k;
    }
}
