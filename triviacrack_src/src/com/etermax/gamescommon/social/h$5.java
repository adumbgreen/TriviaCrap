// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.support.v4.app.Fragment;
import com.etermax.a.a;
import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.o;
import com.etermax.tools.social.a.e;

// Referenced classes of package com.etermax.gamescommon.social:
//            h, i

class c
    implements e
{

    final Fragment a;
    final Long b;
    final i c;
    final h d;

    public void a()
    {
        com.etermax.a.a.c("FACEBOOK", "cancel");
    }

    public void a(String s)
    {
        com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("on error ").append(s).toString());
    }

    public void a(String as[])
    {
        com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("regalos enviados via Facebook a ").append(as.length).append(" amigo/s").toString());
        (new com.etermax.tools.i.a(a.getString(o.loading), as) {

            final String a[];
            final h._cls5 b;

            public Object a()
            {
                return b();
            }

            protected void a(Fragment fragment, Exception exception)
            {
                super.a(fragment, exception);
                com.etermax.a.a.c("FACEBOOK", "Fallo al enviar regalos via api ");
                if (b.c != null)
                {
                    b.c.a(exception);
                }
            }

            protected void a(Fragment fragment, Void void1)
            {
                super.a(fragment, void1);
                if (b.c != null)
                {
                    h.b(b.d, a.length);
                    b.c.a();
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((Fragment)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((Fragment)obj, (Void)obj1);
            }

            public Void b()
            {
                GiftActionDTO giftactiondto = new GiftActionDTO();
                giftactiondto.setAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ACCEPT);
                if (b.b != null)
                {
                    b.d.b.a(b.b.longValue(), giftactiondto);
                } else
                {
                    giftactiondto.setAcceptAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK);
                    b.d.b.a(giftactiondto);
                }
                return null;
            }

            
            {
                b = h._cls5.this;
                a = as;
                super(s);
            }
        }).a(a);
    }

    _cls1.a(h h1, Fragment fragment, Long long1, i i)
    {
        d = h1;
        a = fragment;
        b = long1;
        c = i;
        super();
    }
}
