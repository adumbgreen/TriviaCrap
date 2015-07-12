// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.ViewGroup;

// Referenced classes of package com.google.android.gms.internal:
//            fz, by

final class ca
{

    public final int a;
    public final android.view.ViewGroup.LayoutParams b;
    public final ViewGroup c;

    public ca(fz fz1)
    {
        b = fz1.getLayoutParams();
        android.view.ViewParent viewparent = fz1.getParent();
        if (viewparent instanceof ViewGroup)
        {
            c = (ViewGroup)viewparent;
            a = c.indexOfChild(fz1);
            c.removeView(fz1);
            fz1.a(true);
            return;
        } else
        {
            throw new by("Could not get the parent of the WebView for an overlay.");
        }
    }
}
