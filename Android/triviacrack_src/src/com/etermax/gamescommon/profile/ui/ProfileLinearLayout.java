// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            i

public class ProfileLinearLayout extends LinearLayout
{

    private i a;

    public ProfileLinearLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfileLinearLayout(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
    }

    protected void onMeasure(int j, int k)
    {
        int l = android.view.View.MeasureSpec.getSize(k);
        if (getHeight() <= l) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.a(true);
        }
_L4:
        super.onMeasure(j, k);
        return;
_L2:
        if (a != null)
        {
            a.a(false);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setKeyboardListener(i j)
    {
        a = j;
    }
}
