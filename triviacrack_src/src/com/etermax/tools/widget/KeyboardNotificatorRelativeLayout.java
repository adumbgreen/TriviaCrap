// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.etermax.tools.widget:
//            a

public class KeyboardNotificatorRelativeLayout extends RelativeLayout
{

    private ArrayList a;

    public KeyboardNotificatorRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
    }

    public KeyboardNotificatorRelativeLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new ArrayList();
    }

    private void a()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).b()) { }
    }

    private void b()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).a()) { }
    }

    protected void onMeasure(int i, int j)
    {
        int k;
        int l;
        super.onMeasure(i, j);
        k = android.view.View.MeasureSpec.getSize(j);
        l = getHeight();
        if (l <= k) goto _L2; else goto _L1
_L1:
        b();
_L4:
        super.onMeasure(i, j);
        return;
_L2:
        if (l < k)
        {
            a();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
