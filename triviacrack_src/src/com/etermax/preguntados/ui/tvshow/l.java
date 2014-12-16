// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.view.View;
import com.etermax.preguntados.ui.widget.PreguntadosLoading;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            n, o, m

public class l extends b
{

    View a;
    PreguntadosLoading b;

    public l()
    {
    }

    public static l b()
    {
        return n.d().a();
    }

    public m a()
    {
        return new m() {

            final l a;

            
            {
                a = l.this;
                super();
            }
        };
    }

    protected void c()
    {
        a.setVisibility(4);
        b.a();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
