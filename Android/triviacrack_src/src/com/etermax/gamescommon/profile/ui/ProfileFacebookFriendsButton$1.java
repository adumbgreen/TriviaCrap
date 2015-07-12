// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.graphics.Bitmap;
import com.b.a.ar;
import com.etermax.tools.j.f;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileFacebookFriendsButton

class a
    implements ar
{

    final ProfileFacebookFriendsButton a;

    public Bitmap a(Bitmap bitmap)
    {
        Bitmap bitmap1 = f.b(bitmap, 12F);
        if (bitmap1 != bitmap)
        {
            bitmap.recycle();
        }
        return bitmap1;
    }

    public String a()
    {
        return "rounded()";
    }

    (ProfileFacebookFriendsButton profilefacebookfriendsbutton)
    {
        a = profilefacebookfriendsbutton;
        super();
    }
}
