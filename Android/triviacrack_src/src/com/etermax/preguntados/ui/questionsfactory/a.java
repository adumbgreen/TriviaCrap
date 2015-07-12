// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory:
//            c, d, b

public class a extends b
{

    public a()
    {
    }

    public static Fragment a()
    {
        return com.etermax.preguntados.ui.questionsfactory.c.g().a();
    }

    public com.etermax.preguntados.ui.questionsfactory.b b()
    {
        return new com.etermax.preguntados.ui.questionsfactory.b() {

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

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void c()
    {
        ((com.etermax.preguntados.ui.questionsfactory.b)mCallbacks).b();
    }

    public void d()
    {
        ((com.etermax.preguntados.ui.questionsfactory.b)mCallbacks).c();
    }

    public void e()
    {
        ((com.etermax.preguntados.ui.questionsfactory.b)mCallbacks).d();
    }

    public void f()
    {
        ((com.etermax.preguntados.ui.questionsfactory.b)mCallbacks).e();
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.questions_factory_panel_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(o.factory));
        return view;
    }
}
