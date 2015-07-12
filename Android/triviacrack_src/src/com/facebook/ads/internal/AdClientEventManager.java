// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

// Referenced classes of package com.facebook.ads.internal:
//            AdClientEvent

public class AdClientEventManager
{

    private static List clientEvents = new ArrayList();

    public AdClientEventManager()
    {
    }

    public static void addClientEvent(AdClientEvent adclientevent)
    {
        synchronized (clientEvents)
        {
            clientEvents.add(adclientevent);
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String dumpClientEventToJson()
    {
label0:
        {
            synchronized (clientEvents)
            {
                if (!clientEvents.isEmpty())
                {
                    break label0;
                }
            }
            return "";
        }
        ArrayList arraylist;
        arraylist = new ArrayList(clientEvents);
        clientEvents.clear();
        list;
        JVM INSTR monitorexit ;
        JSONArray jsonarray;
        jsonarray = new JSONArray();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); jsonarray.put(((AdClientEvent)iterator.next()).getClientEventJson())) { }
        break MISSING_BLOCK_LABEL_95;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        return jsonarray.toString();
    }

}
