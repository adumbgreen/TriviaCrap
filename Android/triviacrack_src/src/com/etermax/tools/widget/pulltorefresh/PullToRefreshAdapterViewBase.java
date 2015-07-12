// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            PullToRefreshBase, d, a

public abstract class PullToRefreshAdapterViewBase extends PullToRefreshBase
    implements android.widget.AbsListView.OnScrollListener
{

    private int g;
    private android.widget.AbsListView.OnScrollListener h;
    private d i;
    private View j;
    private FrameLayout k;

    public PullToRefreshAdapterViewBase(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = -1;
        ((AbsListView)e).setOnScrollListener(this);
    }

    private boolean g()
    {
        if (((AbsListView)e).getCount() == 0)
        {
            return true;
        }
        if (((AbsListView)e).getFirstVisiblePosition() == 0)
        {
            View view = ((AbsListView)e).getChildAt(0);
            if (view != null)
            {
                boolean flag;
                if (view.getTop() >= ((AbsListView)e).getTop())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    private boolean h()
    {
        int l = ((AbsListView)e).getCount();
        int i1 = ((AbsListView)e).getLastVisiblePosition();
        if (l == 0)
        {
            return true;
        }
        if (i1 == l - 1)
        {
            int j1 = i1 - ((AbsListView)e).getFirstVisiblePosition();
            View view = ((AbsListView)e).getChildAt(j1);
            if (view != null)
            {
                boolean flag;
                if (view.getBottom() <= ((AbsListView)e).getBottom())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    protected volatile void a(Context context, View view)
    {
        a(context, (AbsListView)view);
    }

    protected void a(Context context, AbsListView abslistview)
    {
        k = new FrameLayout(context);
        k.addView(abslistview, -1, -1);
        addView(k, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F));
    }

    protected boolean a()
    {
        return g();
    }

    protected boolean b()
    {
        return h();
    }

    public abstract android.view.ContextMenu.ContextMenuInfo getContextMenuInfo();

    public final void onScroll(AbsListView abslistview, int l, int i1, int j1)
    {
        if (i != null && i1 > 0 && l + i1 == j1 && l != g)
        {
            g = l;
            i.a();
        }
        if (h != null)
        {
            h.onScroll(abslistview, l, i1, j1);
        }
    }

    public final void onScrollStateChanged(AbsListView abslistview, int l)
    {
        if (h != null)
        {
            h.onScrollStateChanged(abslistview, l);
        }
    }

    public final void setEmptyView(View view)
    {
        if (j != null)
        {
            k.removeView(j);
        }
        if (view != null)
        {
            android.view.ViewParent viewparent = view.getParent();
            if (viewparent != null && (viewparent instanceof ViewGroup))
            {
                ((ViewGroup)viewparent).removeView(view);
            }
            k.addView(view, -1, -1);
        }
        if (e instanceof a)
        {
            ((a)e).a(view);
            return;
        } else
        {
            ((AbsListView)e).setEmptyView(view);
            return;
        }
    }

    public final void setOnLastItemVisibleListener(d d1)
    {
        i = d1;
    }

    public final void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        h = onscrolllistener;
    }
}
