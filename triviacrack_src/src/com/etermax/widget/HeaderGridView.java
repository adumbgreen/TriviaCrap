// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.ArrayList;

// Referenced classes of package com.etermax.widget:
//            f, d

public class HeaderGridView extends GridView
{

    private d a;
    private ArrayList b;

    public HeaderGridView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new ArrayList();
        a();
    }

    public HeaderGridView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = new ArrayList();
        a();
    }

    private void a()
    {
        super.setClipChildren(false);
    }

    private int getNumColumnsCompat()
    {
        int j;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            j = getNumColumnsCompat11();
        } else
        {
            int i = getChildCount();
            j = 0;
            if (i > 0)
            {
                int k = getChildAt(0).getMeasuredWidth();
                j = 0;
                if (k > 0)
                {
                    j = getWidth() / k;
                }
            }
            if (j <= 0)
            {
                return -1;
            }
        }
        return j;
    }

    private int getNumColumnsCompat11()
    {
        return getNumColumns();
    }

    public int getHeaderViewCount()
    {
        return b.size();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        ListAdapter listadapter = getAdapter();
        if (listadapter != null && (listadapter instanceof f))
        {
            ((f)listadapter).a(getNumColumnsCompat());
        }
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        if (a != null)
        {
            a.a(i, j, k, l);
        }
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (b.size() > 0)
        {
            f f1 = new f(b, listadapter);
            int i = getNumColumnsCompat();
            if (i > 1)
            {
                f1.a(i);
            }
            super.setAdapter(f1);
            return;
        } else
        {
            super.setAdapter(listadapter);
            return;
        }
    }

    public void setCallbacks(d d1)
    {
        a = d1;
    }

    public void setClipChildren(boolean flag)
    {
    }
}
