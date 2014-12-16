// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            j, m

public final class l extends j
    implements a, b
{

    private final c a = new c();
    private View b;

    public l()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
    }

    public static m e()
    {
        return new m();
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0500);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a04fb);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
    }

    public View findViewById(int i)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(a);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = super.onCreateView(layoutinflater, viewgroup, bundle);
        return b;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        a.a(this);
    }
}
