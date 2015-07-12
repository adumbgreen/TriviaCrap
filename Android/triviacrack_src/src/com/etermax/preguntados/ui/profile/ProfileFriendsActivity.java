// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileFriendsActivity_, i

public class ProfileFriendsActivity extends BaseFragmentActivity
{

    protected a a;

    public ProfileFriendsActivity()
    {
    }

    public static Intent a(Context context, long l, String s)
    {
        Intent intent = new Intent(context, com/etermax/preguntados/ui/profile/ProfileFriendsActivity_);
        intent.putExtra("FRIENDS_ACTIVITY_INTENT_USER_ID", l);
        intent.putExtra("FRIENDS_ACTIVITY_INTENT_USERNAME", s);
        return intent;
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.profile.i.a(getIntent().getLongExtra("FRIENDS_ACTIVITY_INTENT_USER_ID", -1L), getIntent().getStringExtra("FRIENDS_ACTIVITY_INTENT_USERNAME"));
    }

    protected void onStart()
    {
        super.onStart();
        a.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        a.b(this);
    }
}
