// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.b:
//            a, d

public final class c extends com.etermax.preguntados.ui.b.a
    implements a, b
{

    private final org.a.a.b.c h = new org.a.a.b.c();
    private View i;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        f();
    }

    public static d e()
    {
        return new d();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("levelDTO"))
        {
            a = (UserLevelDataDTO)bundle.getSerializable("levelDTO");
        }
    }

    public void a(a a1)
    {
        g = (TextView)a1.findViewById(0x7f0a0363);
        b = (ImageView)a1.findViewById(0x7f0a0364);
        c = (TextView)a1.findViewById(0x7f0a0367);
        f = (TextView)a1.findViewById(0x7f0a0362);
        e = (LinearLayout)a1.findViewById(0x7f0a0365);
        d = (ImageView)a1.findViewById(0x7f0a0366);
        View view = a1.findViewById(0x7f0a0360);
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
        View view1 = a1.findViewById(0x7f0a035f);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view2)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int j)
    {
        if (i == null)
        {
            return null;
        } else
        {
            return i.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(h);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (i == null)
        {
            i = layoutinflater.inflate(0x7f0300ea, viewgroup, false);
        }
        return i;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
