// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class o
{

    private static Object a(Object obj)
    {
        if (obj == JSONObject.NULL)
        {
            obj = null;
        } else
        {
            if (obj instanceof JSONObject)
            {
                return a((JSONObject)obj);
            }
            if (obj instanceof JSONArray)
            {
                return a((JSONArray)obj);
            }
        }
        return obj;
    }

    public static List a(JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                return arraylist;
            }
            arraylist.add(a(jsonarray.get(i)));
            i++;
        } while (true);
    }

    public static Map a(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                return hashmap;
            }
            String s = (String)iterator.next();
            hashmap.put(s, a(jsonobject.get(s)));
        } while (true);
    }
}
