// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.os.Bundle;
import android.view.View;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.a.b.b;

// Referenced classes of package com.etermax.preguntados.d:
//            b

public class a extends com.etermax.gamescommon.gifting.a
{

    protected View f;
    private android.view.View.OnClickListener g;
    private android.view.View.OnClickListener h;

    public a()
    {
        g = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                String s = (new StringBuilder()).append(a.a(a).k()).append(" ").append(a.getString(o.user_sent_spin)).toString();
                com.etermax.preguntados.d.a.b(a).a(a, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.EXTRA_SHOT, new com.etermax.gamescommon.social.i(this) {

                    final _cls1 a;

                    public void a()
                    {
                        a.a(a.a, "extra_shot");
                        a.a.dismiss();
                    }

                    public void a(Exception exception)
                    {
                        a.a.dismiss();
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                a = a.this;
                super();
            }
        };
        h = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                String s = (new StringBuilder()).append(a.c(a).k()).append(" ").append(a.getString(o.user_sent_life)).toString();
                a.d(a).a(a, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.LIFE, new com.etermax.gamescommon.social.i(this) {

                    final _cls2 a;

                    public void a()
                    {
                        a.a(a.a, "live");
                        a.a.dismiss();
                    }

                    public void a(Exception exception)
                    {
                        a.a.dismiss();
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    static com.etermax.gamescommon.login.datasource.a a(a a1)
    {
        return a1.b;
    }

    public static a a()
    {
        return new com.etermax.preguntados.d.b();
    }

    static void a(a a1, String s)
    {
        a1.a(s);
    }

    private void a(String s)
    {
        b b1 = new b();
        b1.a(s);
        d.a(b1);
    }

    static h b(a a1)
    {
        return a1.a;
    }

    static com.etermax.gamescommon.login.datasource.a c(a a1)
    {
        return a1.b;
    }

    static h d(a a1)
    {
        return a1.a;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f = view.findViewById(i.empty_inbox_dialog_accept_button_2);
        e.setOnClickListener(h);
        f.setOnClickListener(g);
    }
}
