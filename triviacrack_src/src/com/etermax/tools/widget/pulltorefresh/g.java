// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            a, PullToRefreshListView

class g extends ListView
    implements a
{

    final PullToRefreshListView a;

    public g(PullToRefreshListView pulltorefreshlistview, Context context, AttributeSet attributeset)
    {
        a = pulltorefreshlistview;
        super(context, attributeset);
    }

    public void a(View view)
    {
        super.setEmptyView(view);
    }

    public android.view.ContextMenu.ContextMenuInfo getContextMenuInfo()
    {
        return super.getContextMenuInfo();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = a.b(motionevent);
        if (!a.b && flag)
        {
            a.b = true;
            a.a = motionevent.getY();
        }
        if (a.b)
        {
            for (int i = 0; i < getChildCount(); i++)
            {
                getChildAt(i).setPressed(false);
            }

            PullToRefreshListView.a(a).requestFocusFromTouch();
            if (a.a(motionevent))
            {
                return false;
            }
        }
        return super.onTouchEvent(motionevent);
    }

    public void setEmptyView(View view)
    {
        a.setEmptyView(view);
    }
}
