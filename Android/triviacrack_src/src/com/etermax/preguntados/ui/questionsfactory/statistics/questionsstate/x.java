// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            v, y

public final class x extends v
    implements a, b
{

    private final c c = new c();
    private View d;

    public x()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        f();
    }

    public static y e()
    {
        return new y();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mQuestionsStats"))
            {
                b = (UserFactoryStatsCountDTO)bundle.getSerializable("mQuestionsStats");
            }
            if (bundle.containsKey("mTitleResourceId"))
            {
                a = bundle.getInt("mTitleResourceId");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a04e9);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final x a;

                public void onClick(View view3)
                {
                    a.c();
                }

            
            {
                a = x.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a04eb);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final x a;

                public void onClick(View view3)
                {
                    a.b();
                }

            
            {
                a = x.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a04ed);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final x a;

                public void onClick(View view3)
                {
                    a.d();
                }

            
            {
                a = x.this;
                super();
            }
            });
        }
    }

    public View findViewById(int i)
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(c);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        d = super.onCreateView(layoutinflater, viewgroup, bundle);
        return d;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        c.a(this);
    }
}
