// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.support.v7.app.ActionBar;
import android.text.SpannableString;
import android.text.style.TypefaceSpan;
import com.etermax.chat.a.j;
import com.etermax.gamescommon.datasource.dto.MessageListDTO;
import com.etermax.gamescommon.menu.a.d;
import com.etermax.tools.i.a;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.chat.ui:
//            BaseLegacyChatActivity

class a extends a
{

    final int a;
    final BaseLegacyChatActivity b;

    public Object a()
    {
        return b();
    }

    protected void a(BaseLegacyChatActivity baselegacychatactivity, MessageListDTO messagelistdto)
    {
        ArrayList arraylist;
        b.i.b(messagelistdto, Long.valueOf(BaseLegacyChatActivity.p), com.etermax.chat.ui.BaseLegacyChatActivity.a(b));
        arraylist = new ArrayList();
        ArrayList arraylist2 = b.h.a(messagelistdto, BaseLegacyChatActivity.p);
        arraylist = arraylist2;
_L2:
        BaseLegacyChatActivity.q = messagelistdto.isBlocked();
        BaseLegacyChatActivity.r = messagelistdto.isFriend();
        String s = com.etermax.chat.ui.BaseLegacyChatActivity.a(baselegacychatactivity, messagelistdto.getLastSeen());
        ArrayList arraylist1;
        if (s != null && s.length() > 0)
        {
            SpannableString spannablestring = new SpannableString(s);
            spannablestring.setSpan(new TypefaceSpan("BrandonText-Regular.otf"), 0, spannablestring.length(), 33);
            BaseLegacyChatActivity.b(b).setSubtitle(spannablestring);
        } else
        {
            BaseLegacyChatActivity.b(b).setSubtitle("");
        }
        arraylist1 = com.etermax.chat.ui.BaseLegacyChatActivity.a(b, arraylist, String.valueOf(messagelistdto.getOpponentFacebookId()));
        b.a(j.a(arraylist1));
        if (messagelistdto.isMore() && !BaseLegacyChatActivity.c(b) && messagelistdto.getList().size() > 0)
        {
            b.a(1 + a, true);
        }
        b.n.a(BaseLegacyChatActivity.p);
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((BaseLegacyChatActivity)obj, (MessageListDTO)obj1);
    }

    public MessageListDTO b()
    {
        return b.i.a(BaseLegacyChatActivity.p, a, 0L);
    }

    eListDTO(BaseLegacyChatActivity baselegacychatactivity, int i)
    {
        b = baselegacychatactivity;
        a = i;
        super();
    }
}
