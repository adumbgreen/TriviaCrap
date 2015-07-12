// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom;

import android.content.Context;
import com.etermax.a.b;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.etermax.mopubads.custom:
//            b

public class a
{

    private static com.etermax.mopubads.custom.b a;

    public static JSONObject a(Context context, Map map)
    {
        if (a == null)
        {
            a = new com.etermax.mopubads.custom.b(b.e(context));
        }
        com.etermax.mopubads.custom.b b1 = new com.etermax.mopubads.custom.b((String)map.get("v"));
        if (a.a(b1) < 0)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        JSONObject jsonobject = new JSONObject((String)map.get("d"));
        return jsonobject;
        Exception exception;
        exception;
        com.etermax.a.a.a("mopub ads", "CustomEventHelper Exception", exception);
        return null;
    }
}
