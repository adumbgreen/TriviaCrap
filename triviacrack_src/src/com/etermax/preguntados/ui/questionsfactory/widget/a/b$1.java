// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import java.util.Comparator;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            b, d

class a
    implements Comparator
{

    final FragmentActivity a;
    final b b;

    public int a(d d1, d d2)
    {
        Resources resources = a.getResources();
        return resources.getString(d1.a()).compareToIgnoreCase(resources.getString(d2.a()));
    }

    public int compare(Object obj, Object obj1)
    {
        return a((d)obj, (d)obj1);
    }

    (b b1, FragmentActivity fragmentactivity)
    {
        b = b1;
        a = fragmentactivity;
        super();
    }
}
