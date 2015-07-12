// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.graphics.drawable.AnimationDrawable;

// Referenced classes of package com.etermax.preguntados.ui.widget:
//            PreguntadosLoading

class a
    implements Runnable
{

    final PreguntadosLoading a;

    public void run()
    {
        PreguntadosLoading.a(a).start();
    }

    (PreguntadosLoading preguntadosloading)
    {
        a = preguntadosloading;
        super();
    }
}
