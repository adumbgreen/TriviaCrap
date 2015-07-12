// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.etermax.gamescommon.user.a.b;
import com.etermax.q;

// Referenced classes of package com.etermax.gamescommon.user:
//            a

public class UserGridView extends GridView
    implements android.widget.AdapterView.OnItemClickListener
{

    private b a;
    private a b;
    private boolean c;

    public UserGridView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = true;
        a(attributeset);
    }

    public UserGridView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = true;
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        setOnItemClickListener(this);
        if (attributeset != null)
        {
            TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, q.NonScrollableGrid);
            c = typedarray.getBoolean(0, true);
            typedarray.recycle();
        }
        if (a == null)
        {
            a = new b(getContext());
            setAdapter(a);
        }
    }

    public boolean a()
    {
        return c;
    }

    public volatile Adapter getAdapter()
    {
        return getAdapter();
    }

    public volatile ListAdapter getAdapter()
    {
        return getAdapter();
    }

    public b getAdapter()
    {
        return a;
    }

    protected void onDetachedFromWindow()
    {
        b = null;
        super.onDetachedFromWindow();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (b != null)
        {
            b.a(Long.valueOf(l));
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (!a())
        {
            super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(0x1fffffff, 0x80000000));
            getLayoutParams().height = getMeasuredHeight();
            return;
        } else
        {
            super.onMeasure(i, j);
            return;
        }
    }

    public void setListener(a a1)
    {
        b = a1;
    }

    public void setScrollable(boolean flag)
    {
        c = flag;
    }
}
