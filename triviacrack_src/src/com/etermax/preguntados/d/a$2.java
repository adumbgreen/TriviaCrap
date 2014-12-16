// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.view.View;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.social.h;
import com.etermax.gamescommon.social.i;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.d:
//            a

class a
    implements android.view..OnClickListener
{

    final com.etermax.preguntados.d.a a;

    public void onClick(View view)
    {
        String s = (new StringBuilder()).append(com.etermax.preguntados.d.a.c(a).k()).append(" ").append(a.getString(o.user_sent_life)).toString();
        com.etermax.preguntados.d.a.d(a).a(a, s, com.etermax.gamescommon.gifting.dto.ActionDTO.Action.SEND, 0, com.etermax.gamescommon.gifting.dto.ItemDTO.GiftType.LIFE, new i() {

            final a._cls2 a;

            public void a()
            {
                com.etermax.preguntados.d.a.a(a.a, "live");
                a.a.dismiss();
            }

            public void a(Exception exception)
            {
                a.a.dismiss();
            }

            
            {
                a = a._cls2.this;
                super();
            }
        });
    }

    _cls1.a(com.etermax.preguntados.d.a a1)
    {
        a = a1;
        super();
    }
}
