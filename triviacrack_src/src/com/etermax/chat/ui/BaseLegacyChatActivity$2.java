// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.widget.Toast;
import com.etermax.chat.a.f;
import com.etermax.chat.a.h;
import com.etermax.gamescommon.menu.a.d;
import com.etermax.o;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.chat.ui:
//            BaseLegacyChatActivity

class a extends a
{

    final f a;
    final BaseLegacyChatActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(BaseLegacyChatActivity baselegacychatactivity, Void void1)
    {
        a.a(h.c);
        b.n.a(BaseLegacyChatActivity.p, a.c());
        b.h.c();
    }

    protected void a(Exception exception, String s)
    {
        a.a(h.b);
        b.h.c();
        Toast.makeText(j(), b.getString(o.error_chat_message), 1).show();
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((BaseLegacyChatActivity)obj, (Void)obj1);
    }

    public Void b()
    {
        b.i.a(BaseLegacyChatActivity.p, a.c());
        return null;
    }

    (BaseLegacyChatActivity baselegacychatactivity, f f1)
    {
        b = baselegacychatactivity;
        a = f1;
        super();
    }
}
