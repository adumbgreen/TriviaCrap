// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.coupon;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.gamescommon.coupon:
//            a

public final class c extends com.etermax.gamescommon.coupon.a
    implements a, b
{

    private final org.a.a.b.c b = new org.a.a.b.c();
    private View c;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
    }

    public void a(a a1)
    {
        a = (EditText)a1.findViewById(0x7f0a0116);
        View view = a1.findViewById(0x7f0a0119);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0117);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view2)
                {
                    a.b();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        a();
    }

    public View findViewById(int i)
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(b);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (c == null)
        {
            c = layoutinflater.inflate(0x7f030056, viewgroup, false);
        }
        return c;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        b.a(this);
    }
}
