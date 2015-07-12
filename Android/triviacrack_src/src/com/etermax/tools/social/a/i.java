// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.app.Activity;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.SessionState;
import java.util.Arrays;

// Referenced classes of package com.etermax.tools.social.a:
//            g, b

class i
    implements com.facebook.Session.StatusCallback
{

    g a;
    Activity b;
    int c;
    final b d;

    public i(b b1, Activity activity, int j, g g1)
    {
        d = b1;
        super();
        a = g1;
        c = j;
        b = activity;
    }

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        switch (b._cls2.a[sessionstate.ordinal()])
        {
        case 1: // '\001'
        case 3: // '\003'
        case 4: // '\004'
        default:
            return;

        case 2: // '\002'
            if (!(exception instanceof FacebookOperationCanceledException))
            {
                a.a(exception.getMessage());
                return;
            } else
            {
                a.b();
                return;
            }

        case 5: // '\005'
            d.c();
            if (exception != null)
            {
                if (!(exception instanceof FacebookOperationCanceledException))
                {
                    a.a(exception.getMessage());
                    return;
                } else
                {
                    a.b();
                    return;
                }
            }
            if (c == 1 && !d.b())
            {
                session.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(b, Arrays.asList(new String[] {
                    "publish_actions"
                })));
            } else
            {
                a.a();
            }
            session.removeCallback(this);
            return;

        case 6: // '\006'
            d.c();
            break;
        }
        if (c == 1 && !d.b())
        {
            a.b();
        } else
        {
            a.a();
        }
        session.removeCallback(this);
    }
}
