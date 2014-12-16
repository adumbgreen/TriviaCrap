// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.chat;

import android.widget.Toast;
import com.etermax.gamescommon.datasource.e;
import com.etermax.o;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.chat:
//            a, ChatActivity

class a extends a
{

    final com.etermax.preguntados.ui.chat.a a;

    public Object a()
    {
        return b();
    }

    protected void a(com.etermax.preguntados.ui.chat.a a1, Exception exception)
    {
        super.a(a1, exception);
    }

    protected void a(com.etermax.preguntados.ui.chat.a a1, Void void1)
    {
        super.a(a1, void1);
        ChatActivity.b(false);
        a.k.b(false, Long.valueOf(ChatActivity.b()));
    }

    protected void a(Exception exception, String s)
    {
        Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((com.etermax.preguntados.ui.chat.a)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((com.etermax.preguntados.ui.chat.a)obj, (Void)obj1);
    }

    public Void b()
    {
        a.m.d(ChatActivity.b());
        return null;
    }

    (com.etermax.preguntados.ui.chat.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
