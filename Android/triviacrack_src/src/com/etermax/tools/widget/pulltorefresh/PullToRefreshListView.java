// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.o;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            PullToRefreshAdapterViewBase, g, b

public class PullToRefreshListView extends PullToRefreshAdapterViewBase
{

    private View g;

    public PullToRefreshListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setDisableScrollingWhileRefreshing(false);
    }

    static View a(PullToRefreshListView pulltorefreshlistview)
    {
        return pulltorefreshlistview.g;
    }

    protected View a(Context context, AttributeSet attributeset)
    {
        return c(context, attributeset);
    }

    protected volatile void a(Context context, View view)
    {
        a(context, (ListView)view);
    }

    protected volatile void a(Context context, AbsListView abslistview)
    {
        a(context, (ListView)abslistview);
    }

    protected void a(Context context, ListView listview)
    {
        super.a(context, listview);
        g = new View(context);
        g.setFocusableInTouchMode(true);
        listview.addHeaderView(g);
    }

    protected final ListView c(Context context, AttributeSet attributeset)
    {
        g g1 = new g(this, context, attributeset);
        g1.setId(0x102000a);
        return g1;
    }

    public void d()
    {
        if (getHeaderLayout() != null)
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("dd/MM/yyyy hh:mm");
            Resources resources = getResources();
            int j = o.last_updated;
            Object aobj[] = new Object[1];
            aobj[0] = simpledateformat.format(new Date());
            String s = resources.getString(j, aobj);
            ((TextView)getHeaderLayout().findViewById(i.pull_to_refresh_last_updated_text)).setText(s);
        }
        super.d();
    }

    public android.view.ContextMenu.ContextMenuInfo getContextMenuInfo()
    {
        return ((g)getRefreshableView()).getContextMenuInfo();
    }
}
