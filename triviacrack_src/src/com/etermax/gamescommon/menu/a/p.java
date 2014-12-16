// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.etermax.gamescommon.datasource.i;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            a, j, n

public final class p extends com.etermax.gamescommon.menu.a.a
    implements a, b
{

    private boolean l;
    private final c m = new c();

    public p(Context context)
    {
        super(context);
        l = false;
        k();
    }

    public static com.etermax.gamescommon.menu.a.a a(Context context)
    {
        p p1 = new p(context);
        p1.onFinishInflate();
        return p1;
    }

    private void k()
    {
        c c1 = c.a(m);
        c.a(this);
        g = com.etermax.gamescommon.menu.a.j.a(getContext());
        h = d.c(getContext());
        f = i.a(getContext());
        i = com.etermax.gamescommon.menu.a.n.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        b = (LinearLayout)a1.findViewById(0x7f0a00bd);
        c = (EditText)a1.findViewById(0x7f0a00bf);
        d = (ImageButton)a1.findViewById(0x7f0a00be);
        e = (ImageButton)a1.findViewById(0x7f0a00c0);
        a = (ListView)a1.findViewById(0x7f0a00c2);
        View view = a1.findViewById(0x7f0a00be);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final p a;

                public void onClick(View view2)
                {
                    a.e();
                }

            
            {
                a = p.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a00c0);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final p a;

                public void onClick(View view2)
                {
                    a.f();
                }

            
            {
                a = p.this;
                super();
            }
            });
        }
    }

    public void onFinishInflate()
    {
        if (!l)
        {
            l = true;
            inflate(getContext(), 0x7f03008c, this);
            m.a(this);
        }
        super.onFinishInflate();
    }
}
