// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.internal;

import com.inmobi.commons.metric.Logger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.inmobi.commons.internal:
//            c, Log

public class ApiStatCollector
{

    private static Logger a = new Logger(3, "apiStats", new c());

    public ApiStatCollector()
    {
    }

    public static Logger getLogger()
    {
        return a;
    }


    // Unreferenced inner class com/inmobi/commons/internal/c
    final class c
        implements com.inmobi.commons.metric.Storage.PreProcessor
    {

        public JSONObject process(JSONObject jsonobject)
        {
            HashMap hashmap;
            int i;
            hashmap = new HashMap();
            JSONArray jsonarray;
            int j;
            Integer integer;
            try
            {
                jsonarray = jsonobject.getJSONArray("payload");
            }
            catch (JSONException jsonexception)
            {
                Log.internal("[InMobi]-4.3.0", "Unable to aggregate data. Sending data as-is.");
                return jsonobject;
            }
            i = 0;
_L2:
            if (i >= jsonarray.length())
            {
                break MISSING_BLOCK_LABEL_118;
            }
            j = jsonarray.getJSONObject(i).getInt("t");
            integer = (Integer)hashmap.get(Integer.valueOf(j));
            if (integer != null)
            {
                break MISSING_BLOCK_LABEL_83;
            }
            hashmap.put(Integer.valueOf(j), Integer.valueOf(1));
            break MISSING_BLOCK_LABEL_223;
            hashmap.put(Integer.valueOf(j), Integer.valueOf(1 + integer.intValue()));
            break MISSING_BLOCK_LABEL_223;
            JSONArray jsonarray1;
            jsonarray1 = new JSONArray();
            JSONObject jsonobject1;
            for (Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); jsonarray1.put(jsonobject1))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                jsonobject1 = new JSONObject();
                jsonobject1.put("t", entry.getKey());
                jsonobject1.put("v", entry.getValue());
            }

            jsonobject.put("payload", jsonarray1);
            return jsonobject;
            i++;
            if (true) goto _L2; else goto _L1
_L1:
        }

            c()
            {
            }
    }

}
