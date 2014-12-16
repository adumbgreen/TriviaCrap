// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

// Referenced classes of package com.etermax.widget:
//            g

public class ObservableScrollView extends ScrollView
{

    private g a;

    public ObservableScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        if (a != null)
        {
            a.a(i, j, k, l);
        }
    }

    public void setCallbacks(g g1)
    {
        a = g1;
    }
}
