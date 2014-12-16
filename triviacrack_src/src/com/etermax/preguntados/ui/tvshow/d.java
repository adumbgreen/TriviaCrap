// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            a, e

public final class d extends com.etermax.preguntados.ui.tvshow.a
    implements a, b
{

    private final c j = new c();
    private View k;

    public d()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        e();
    }

    public static e d()
    {
        return new e();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mBackgroundColor"))
            {
                g = bundle.getInt("mBackgroundColor");
            }
            if (bundle.containsKey("mSubtitleResource"))
            {
                f = bundle.getInt("mSubtitleResource");
            }
            if (bundle.containsKey("mTextColor"))
            {
                h = bundle.getInt("mTextColor");
            }
            if (bundle.containsKey("mTitleResource"))
            {
                e = bundle.getInt("mTitleResource");
            }
        }
    }

    public void a(a a1)
    {
        a = (LinearLayout)a1.findViewById(0x7f0a0547);
        b = (TextView)a1.findViewById(0x7f0a0549);
        d = a1.findViewById(0x7f0a0548);
        c = (TextView)a1.findViewById(0x7f0a054a);
        View view = a1.findViewById(0x7f0a0547);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int i)
    {
        if (k == null)
        {
            return null;
        } else
        {
            return k.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(j);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (k == null)
        {
            k = layoutinflater.inflate(0x7f030141, viewgroup, false);
        }
        return k;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        j.a(this);
    }
}
