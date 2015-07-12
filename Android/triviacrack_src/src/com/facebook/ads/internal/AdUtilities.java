// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.AdSettings;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class AdUtilities
{

    private static final String ADVERTISING_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";

    public AdUtilities()
    {
    }

    public static void closeQuietly(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public static void displayDebugMessage(Context context, String s)
    {
        if (AdSettings.isTestMode(context))
        {
            Log.d("FBAudienceNetworkLog", (new StringBuilder()).append(s).append(" (displayed for test ads only)").toString());
        }
    }

    public static Fb4aData getFb4aData(ContentResolver contentresolver)
    {
        Cursor cursor1;
        String as[] = {
            "aid", "androidid", "limit_tracking"
        };
        cursor1 = contentresolver.query(ATTRIBUTION_ID_CONTENT_URI, as, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (cursor.moveToFirst()) goto _L3; else goto _L2
_L2:
        Fb4aData fb4adata = new Fb4aData(null, null, false);
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        return fb4adata;
_L3:
        fb4adata = new Fb4aData(cursor.getString(cursor.getColumnIndex("aid")), cursor.getString(cursor.getColumnIndex("androidid")), Boolean.valueOf(cursor.getString(cursor.getColumnIndex("limit_tracking"))).booleanValue());
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return fb4adata;
        Exception exception1;
        exception1;
        cursor = null;
_L9:
        fb4adata = new Fb4aData(null, null, false);
        if (cursor == null) goto _L5; else goto _L6
_L6:
        cursor.close();
        return fb4adata;
        Exception exception;
        exception;
        cursor = null;
_L8:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception2;
        exception2;
          goto _L9
    }

    public static transient Method getMethod(Class class1, String s, Class aclass[])
    {
        Method method;
        try
        {
            method = class1.getMethod(s, aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return method;
    }

    public static transient Method getMethod(String s, String s1, Class aclass[])
    {
        Method method;
        try
        {
            method = getMethod(Class.forName(s), s1, aclass);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return null;
        }
        return method;
    }

    public static Object getStringPropertyAsJSON(JSONObject jsonobject, String s)
    {
        Object obj = jsonobject.opt(s);
        if (obj != null && (obj instanceof String))
        {
            obj = (new JSONTokener((String)obj)).nextValue();
        }
        if (obj != null && !(obj instanceof JSONObject) && !(obj instanceof JSONArray))
        {
            throw new IllegalArgumentException(s);
        } else
        {
            return obj;
        }
    }

    public static transient Object invokeMethod(Object obj, Method method, Object aobj[])
    {
        Object obj1;
        try
        {
            obj1 = method.invoke(obj, aobj);
        }
        catch (Exception exception)
        {
            return null;
        }
        return obj1;
    }

    public static String jsonEncode(Map map)
    {
        JSONObject jsonobject = new JSONObject();
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            try
            {
                jsonobject.put((String)entry.getKey(), entry.getValue());
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
        }

        return jsonobject.toString();
    }

    public static String readStreamToString(InputStream inputstream)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        InputStreamReader inputstreamreader = new InputStreamReader(bufferedinputstream);
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[2048];
_L3:
        int i = inputstreamreader.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append(ac, 0, i);
          goto _L3
        Exception exception;
        exception;
        Object obj = bufferedinputstream;
_L5:
        closeQuietly(((Closeable) (obj)));
        closeQuietly(inputstreamreader);
        throw exception;
_L2:
        String s = stringbuilder.toString();
        closeQuietly(bufferedinputstream);
        closeQuietly(inputstreamreader);
        return s;
        exception;
        inputstreamreader = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = bufferedinputstream;
        inputstreamreader = null;
        if (true) goto _L5; else goto _L4
_L4:
    }


    private class Fb4aData
    {

        protected String advertisingId;
        protected String attributionId;
        protected boolean limitTrackingEnabled;

        public Fb4aData(String s, String s1, boolean flag)
        {
            attributionId = s;
            advertisingId = s1;
            limitTrackingEnabled = flag;
        }
    }

}
