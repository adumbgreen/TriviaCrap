// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.mopub.common:
//            DownloadResponse

public final class HttpResponses
{

    private HttpResponses()
    {
    }

    public static Bitmap asBitmap(DownloadResponse downloadresponse)
    {
        if (downloadresponse == null)
        {
            return null;
        } else
        {
            byte abyte0[] = downloadresponse.getByteArray();
            return BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        }
    }

    public static JSONObject asJsonObject(DownloadResponse downloadresponse)
    {
        if (downloadresponse == null)
        {
            return null;
        }
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject(new JSONTokener(asResponseString(downloadresponse)));
        }
        catch (Exception exception)
        {
            return null;
        }
        return jsonobject;
    }

    public static String asResponseString(DownloadResponse downloadresponse)
    {
        if (downloadresponse == null)
        {
            return null;
        }
        String s;
        try
        {
            s = new String(downloadresponse.getByteArray(), "UTF-8");
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }
}
