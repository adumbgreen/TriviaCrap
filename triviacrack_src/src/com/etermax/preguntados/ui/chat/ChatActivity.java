// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.chat;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.etermax.a.a;
import com.etermax.chat.ui.BaseLegacyChatActivity;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.b.g;
import com.etermax.gamescommon.datasource.l;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.preguntados.notification.b;
import com.etermax.preguntados.ui.profile.ProfileActivity;

// Referenced classes of package com.etermax.preguntados.ui.chat:
//            ChatActivity_, b

public class ChatActivity extends BaseLegacyChatActivity
{

    com.etermax.preguntados.g.a u;
    protected l v;

    public ChatActivity()
    {
    }

    public static Intent a(Context context, long l1, String s, boolean flag, g g)
    {
        Intent intent = new Intent(context, com/etermax/preguntados/ui/chat/ChatActivity_);
        BaseLegacyChatActivity.p = l1;
        BaseLegacyChatActivity.t = flag;
        BaseLegacyChatActivity.s = s;
        return intent;
    }

    private void j()
    {
        v.a(b.b.a(), p);
    }

    public boolean a_(Bundle bundle)
    {
        if (bundle.containsKey("data.TYPE") && bundle.getString("data.TYPE").equals("NEW_MESSAGE"))
        {
            com.etermax.a.a.c("PLAYCHAT", "onNewNotification");
            a(1, false);
            return true;
        } else
        {
            return false;
        }
    }

    public void c(UserDTO userdto)
    {
        startActivity(ProfileActivity.a(this, userdto.getId().longValue(), an.c.toString()));
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle == null)
        {
            getSupportFragmentManager().beginTransaction().add(i.container, new com.etermax.preguntados.ui.chat.b()).commit();
        }
    }

    protected void onResume()
    {
        j();
        super.onResume();
    }
}
