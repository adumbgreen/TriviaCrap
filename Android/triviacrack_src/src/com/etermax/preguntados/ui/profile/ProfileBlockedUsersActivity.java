// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.profile.ui.d;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileBlockedUsersActivity_, a

public class ProfileBlockedUsersActivity extends BaseFragmentActivity
    implements d
{

    protected a a;

    public ProfileBlockedUsersActivity()
    {
    }

    public static Intent a(Context context, long l)
    {
        Intent intent = new Intent(context, com/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity_);
        intent.putExtra("FRIENDS_ACTIVITY_INTENT_USER_ID", l);
        return intent;
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.profile.a.a(getIntent().getLongExtra("FRIENDS_ACTIVITY_INTENT_USER_ID", -1L));
    }

    public void a(j j, BaseAdapter baseadapter)
    {
    }

    public void onBackPressed()
    {
        int i = ((com.etermax.preguntados.ui.profile.a)v()).d();
        Intent intent = new Intent();
        intent.putExtra("RESULT_INTENT_BLOCKED_USERS_REMAINING", i);
        setResult(-1, intent);
        finish();
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
