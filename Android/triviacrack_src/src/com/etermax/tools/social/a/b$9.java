// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.text.TextUtils;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import org.json.JSONObject;

// Referenced classes of package com.etermax.tools.social.a:
//            b, f

class a
    implements com.facebook.est.Callback
{

    final f a;
    final b b;

    public void onCompleted(Response response)
    {
        JSONObject jsonobject = (JSONObject)response.getGraphObject().getProperty("cover");
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        String s1 = jsonobject.getString("source");
        String s = s1;
_L1:
        Exception exception;
        if (!TextUtils.isEmpty(s))
        {
            a.a(s);
            return;
        } else
        {
            a.a();
            return;
        }
        exception;
        a.b("No Cover Photo?");
        s = null;
          goto _L1
    }

    (b b1, f f1)
    {
        b = b1;
        a = f1;
        super();
    }
}
