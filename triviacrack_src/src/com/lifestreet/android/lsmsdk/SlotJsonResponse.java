// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.exceptions.InvalidNetworkParameterException;
import com.lifestreet.android.lsmsdk.exceptions.SlotResponseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AbstractSlotResponse, ErrorCode, AdsParams, SlotContext, 
//            AdNetwork

public final class SlotJsonResponse extends AbstractSlotResponse
{

    private final String mResponseBody;

    public SlotJsonResponse(SlotContext slotcontext, String s)
    {
        super(slotcontext);
        mResponseBody = s;
    }

    private Map JSONObjectToMap(JSONObject jsonobject, boolean flag)
    {
        HashMap hashmap = new HashMap();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (flag)
            {
                hashmap.put(s.toUpperCase(Locale.US), jsonobject.optString(s));
            } else
            {
                hashmap.put(s, jsonobject.optString(s));
            }
        }

        return hashmap;
    }

    private boolean advertisementIsNotAvailable(JSONObject jsonobject)
    {
        return !jsonobject.optBoolean("advertisementAvailable", true);
    }

    private AdNetwork createNetworkInstance(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            throw new InvalidNetworkParameterException(ErrorCode.EMPTY_NETWORKS_ARRAY, "Empty network array", getSlotContext());
        } else
        {
            return createNetworkInstanceFromMap(JSONObjectToMap(jsonobject, false), getNetworkType(jsonobject), getNetworkParameters(jsonobject));
        }
    }

    private Map getNetworkParameters(JSONObject jsonobject)
    {
        JSONObject jsonobject1 = jsonobject.optJSONObject("Parameters");
        if (jsonobject1 == null)
        {
            return new HashMap();
        } else
        {
            return JSONObjectToMap(jsonobject1, true);
        }
    }

    private String getNetworkType(JSONObject jsonobject)
    {
        String s = jsonobject.optString("NetworkType").toUpperCase(Locale.US);
        if (s.length() == 0)
        {
            throw new InvalidNetworkParameterException(ErrorCode.MISSING_NETWORK_TYPE, "NetworkType is missing", getSlotContext());
        } else
        {
            return s;
        }
    }

    private void makeNobidObject(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        jsonobject.remove("advertisementAvailable");
        JSONObject jsonobject1 = (new JSONObject()).put("HTML", "nobid");
        JSONObject jsonobject2 = (new JSONObject()).put("NetworkType", "LSM").put("Parameters", jsonobject1);
        jsonobject.put("networks", (new JSONArray()).put(jsonobject2));
        return;
        JSONException jsonexception;
        jsonexception;
        throw new SlotResponseException((new StringBuilder()).append("Error parsing JSON: ").append(jsonexception.getMessage()).toString(), getSlotContext());
    }

    private AdsParams parseAdsParams(JSONObject jsonobject)
    {
        AdsParams adsparams = null;
        if (jsonobject != null)
        {
            String s = jsonobject.optString("requestId");
            int i = s.length();
            adsparams = null;
            if (i > 0)
            {
                adsparams = new AdsParams(s);
            }
        }
        return adsparams;
    }

    private List parseNetworks(JSONObject jsonobject, JSONArray jsonarray)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        if (jsonarray == null)
        {
            arraylist.add(createNetworkInstance(jsonobject));
            return arraylist;
        }
        if (jsonarray.length() == 0)
        {
            throw new SlotResponseException(ErrorCode.EMPTY_NETWORKS_ARRAY, "Empty networks array", getSlotContext());
        }
        i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        AdNetwork adnetwork = createNetworkInstance(jsonarray.getJSONObject(i));
        arraylist.add(adnetwork);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
        InvalidNetworkParameterException invalidnetworkparameterexception;
        invalidnetworkparameterexception;
        LSMLogger.LOGGER.log(Level.WARNING, (new StringBuilder()).append("Invalid network parameter: ").append(invalidnetworkparameterexception.getMessage()).toString());
          goto _L3
        JSONException jsonexception;
        jsonexception;
        throw new SlotResponseException((new StringBuilder()).append("Error parsing JSON: ").append(jsonexception.getMessage()).toString(), getSlotContext());
_L1:
        return arraylist;
    }

    public void parse()
    {
        Object obj = (new JSONTokener(mResponseBody)).nextValue();
        if (!(obj instanceof JSONObject)) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = (JSONObject)obj;
_L4:
        if (jsonobject == null)
        {
            throw new SlotResponseException("Invalid JSON response", getSlotContext());
        }
        break MISSING_BLOCK_LABEL_80;
        JSONException jsonexception;
        jsonexception;
        throw new SlotResponseException((new StringBuilder()).append("Error parsing JSON: ").append(jsonexception.getMessage()).toString(), getSlotContext());
        if (advertisementIsNotAvailable(jsonobject))
        {
            makeNobidObject(jsonobject);
        }
        JSONArray jsonarray = jsonobject.optJSONArray("networks");
        JSONObject jsonobject1 = jsonobject.optJSONObject("adsParams");
        List list = parseNetworks(jsonobject, jsonarray);
        if (list.size() == 0)
        {
            throw new SlotResponseException(ErrorCode.EMPTY_NETWORKS_ARRAY, "Empty/Invalid networks array", getSlotContext());
        } else
        {
            setNetworks(list);
            setAdsParams(parseAdsParams(jsonobject1));
            return;
        }
_L2:
        jsonobject = null;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
