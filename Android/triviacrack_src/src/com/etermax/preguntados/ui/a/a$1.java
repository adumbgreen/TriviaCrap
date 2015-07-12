// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.a;

import android.view.View;
import android.view.animation.AnimationUtils;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.a:
//            a

class c
    implements Runnable
{

    final List a;
    final int b;
    final int c;
    final a d;

    public void run()
    {
        ((View)a.get(b)).startAnimation(AnimationUtils.loadAnimation(d.a, c));
    }

    tils(a a1, List list, int i, int j)
    {
        d = a1;
        a = list;
        b = i;
        c = j;
        super();
    }
}
