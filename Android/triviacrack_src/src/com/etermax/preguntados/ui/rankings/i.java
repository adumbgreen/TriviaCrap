// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.support.v4.app.Fragment;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import com.etermax.preguntados.datasource.dto.RanksDTO;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.ui.rankings.adapter.a;
import com.etermax.preguntados.ui.rankings.adapter.c;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            a, b, k, l, 
//            j

public class i extends b
    implements com.etermax.preguntados.ui.rankings.a, com.etermax.preguntados.ui.rankings.b
{

    RanksDTO a;
    int b;
    ListView c;
    protected com.etermax.preguntados.ui.rankings.adapter.b d;
    protected c e;

    public i()
    {
    }

    public static Fragment a(int i1, RanksDTO ranksdto)
    {
        return k.e().a(i1).a(ranksdto).a();
    }

    private void e()
    {
        List list = a.getUserRanks();
        if (list != null && list.size() > 0)
        {
            int i1 = 0;
            int j1 = -1;
            for (; i1 < list.size(); i1++)
            {
                if (((UserRankDTO)list.get(i1)).isMe())
                {
                    j1 = i1;
                }
            }

            if (j1 != -1)
            {
                ViewTreeObserver viewtreeobserver = c.getViewTreeObserver();
                viewtreeobserver.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(j1, viewtreeobserver) {

                    final int a;
                    final ViewTreeObserver b;
                    final i c;

                    public void onGlobalLayout()
                    {
                        ViewTreeObserver viewtreeobserver1;
label0:
                        {
                            if (a != -1)
                            {
                                c.c.setSelection(2 + a);
                                if (!b.isAlive())
                                {
                                    viewtreeobserver1 = c.c.getViewTreeObserver();
                                } else
                                {
                                    viewtreeobserver1 = b;
                                }
                                if (android.os.Build.VERSION.SDK_INT < 16)
                                {
                                    break label0;
                                }
                                viewtreeobserver1.removeOnGlobalLayoutListener(this);
                            }
                            return;
                        }
                        viewtreeobserver1.removeGlobalOnLayoutListener(this);
                    }

            
            {
                c = i.this;
                a = j1;
                b = viewtreeobserver;
                super();
            }
                });
            }
        }
    }

    public void a()
    {
        ((j)mCallbacks).b();
    }

    public void a(Long long1)
    {
        ((j)mCallbacks).a(long1);
    }

    public j b()
    {
        return new j() {

            final i a;

            public void a(Long long1)
            {
            }

            public void b()
            {
            }

            
            {
                a = i.this;
                super();
            }
        };
    }

    protected void c()
    {
        ArrayList arraylist;
        if (b == 1)
        {
            e = new c(getApplicationContext(), this);
        } else
        {
            e = new a(getApplicationContext(), this, a.getRemainingTime());
        }
        arraylist = new ArrayList();
        if (a.getUserRanks() != null && a.getUserRanks().size() > 0)
        {
            for (Iterator iterator = a.getUserRanks().iterator(); iterator.hasNext(); arraylist.add(new g((UserRankDTO)iterator.next(), 0))) { }
        }
        h h1 = new h(arraylist, 0, true);
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(h1);
        d = new com.etermax.preguntados.ui.rankings.adapter.b(getApplicationContext(), arraylist1, e, a.getRemainingTime());
    }

    protected void d()
    {
        c.setAdapter(d);
        e();
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onDestroy()
    {
        if (e instanceof a)
        {
            ((a)e).a();
        }
        super.onDestroy();
    }
}
