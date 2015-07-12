// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.k;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            h, i, g

public class f extends b
{

    public f()
    {
    }

    public static Fragment b()
    {
        return h.f().a();
    }

    public g a()
    {
        return new g() {

            final f a;

            public void i()
            {
            }

            public void j()
            {
            }

            
            {
                a = f.this;
                super();
            }
        };
    }

    public void c()
    {
        ((g)mCallbacks).j();
    }

    public void d()
    {
        ((g)mCallbacks).j();
    }

    public void e()
    {
        ((g)mCallbacks).i();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.rate_question_warning, null, false);
    }
}
