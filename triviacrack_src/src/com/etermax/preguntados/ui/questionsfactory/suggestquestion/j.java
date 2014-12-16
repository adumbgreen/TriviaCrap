// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.k;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            l, m, k

public class j extends b
{

    public j()
    {
    }

    public static Fragment b()
    {
        return l.e().a();
    }

    public com.etermax.preguntados.ui.questionsfactory.suggestquestion.k a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.suggestquestion.k() {

            final j a;

            public void f()
            {
            }

            public void h()
            {
            }

            
            {
                a = j.this;
                super();
            }
        };
    }

    public void c()
    {
        ((com.etermax.preguntados.ui.questionsfactory.suggestquestion.k)mCallbacks).f();
    }

    public void d()
    {
        ((com.etermax.preguntados.ui.questionsfactory.suggestquestion.k)mCallbacks).h();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.suggest_question_warning, null, false);
    }
}
