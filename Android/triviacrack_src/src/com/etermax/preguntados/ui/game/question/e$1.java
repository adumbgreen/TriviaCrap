// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.view.View;
import com.etermax.preguntados.ui.a.c;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            e

class a
    implements Runnable
{

    final int a;
    final e b;

    public void run()
    {
        android.view.animation.Animation animation = c.a(500L);
        ((View)e.a(b).get(a)).startAnimation(animation);
    }

    (e e1, int i)
    {
        b = e1;
        a = i;
        super();
    }
}
