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
    implements i
{

    final iss a;

    public void a()
    {
        com.etermax.preguntados.d.a.a(a.a, "extra_shot");
        a.a.dismiss();
    }

    public void a(Exception exception)
    {
        a.a.dismiss();
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/etermax/preguntados/d/a$1

/* anonymous class */
    class a._cls1
        implements android.view.View.OnClickListener
    {

        final com.etermax.preguntados.d.a a;

        public void onClick(View view)
        {
            String s = (new StringBuilder()).append(com.etermax.preguntados.d.a.a(a).k()).append(" ").append(a.getString(o.user_sent_spin)).toString();
            com.etermax.preguntados.d.a.b(a).a(a, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.EXTRA_SHOT, new a._cls1._cls1(this));
        }

            
            {
                a = a1;
                super();
            }
    }

}
