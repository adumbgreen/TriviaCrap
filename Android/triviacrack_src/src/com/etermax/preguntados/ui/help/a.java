// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.help;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.k;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.help:
//            c, b

public class a extends b
{

    public a()
    {
    }

    public static Fragment a()
    {
        return new c();
    }

    public com.etermax.preguntados.ui.help.b b()
    {
        return new com.etermax.preguntados.ui.help.b() {

            final a a;

            public void b()
            {
            }

            public void c()
            {
            }

            public void d()
            {
            }

            public void e()
            {
            }

            public void f()
            {
            }

            public void h()
            {
            }

            public void i()
            {
            }

            public void j()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void c()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).b();
    }

    public void d()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).c();
    }

    public void e()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).d();
    }

    public void f()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).e();
    }

    public void g()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).f();
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void h()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).h();
    }

    public void i()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).i();
    }

    public void j()
    {
        ((com.etermax.preguntados.ui.help.b)mCallbacks).j();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.help_fragment, viewgroup, false);
    }
}
