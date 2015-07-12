// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.view.ViewTreeObserver;
import android.widget.ListView;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            i

class b
    implements android.view.TreeObserver.OnGlobalLayoutListener
{

    final int a;
    final ViewTreeObserver b;
    final i c;

    public void onGlobalLayout()
    {
        ViewTreeObserver viewtreeobserver;
label0:
        {
            if (a != -1)
            {
                c.c.setSelection(2 + a);
                if (!b.isAlive())
                {
                    viewtreeobserver = c.c.getViewTreeObserver();
                } else
                {
                    viewtreeobserver = b;
                }
                if (android.os.d.VERSION.SDK_INT < 16)
                {
                    break label0;
                }
                viewtreeobserver.removeOnGlobalLayoutListener(this);
            }
            return;
        }
        viewtreeobserver.removeGlobalOnLayoutListener(this);
    }

    youtListener(i j, int k, ViewTreeObserver viewtreeobserver)
    {
        c = j;
        a = k;
        b = viewtreeobserver;
        super();
    }
}
