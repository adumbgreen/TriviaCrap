// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.webkit.WebView;

// Referenced classes of package com.smartadserver.android.library.ui:
//            g

class a extends WebView
{

    final g a;

    public void clearView()
    {
        if (!g.a(a))
        {
            super.clearView();
        }
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        if (!g.a(a))
        {
            super.loadDataWithBaseURL(s, s1, s2, s3, s4);
        }
    }

    public void loadUrl(String s)
    {
        if (!g.a(a))
        {
            super.loadUrl(s);
        }
    }

    (g g1, Context context)
    {
        a = g1;
        super(context);
    }
}
