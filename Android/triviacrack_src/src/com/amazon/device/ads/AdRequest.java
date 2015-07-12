// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            AAXParameter, InternalAdRegistration, IInternalAdRegistration, DeviceInfo, 
//            AdTargetingOptions, WebRequest, Configuration, AdSlot, 
//            MetricsCollector, DebugProperties, StringUtils

class AdRequest
{

    private static final String AAX_ENDPOINT = "/e/msdk/ads";
    private static final String LOG_TAG = com/amazon/device/ads/AdRequest.getSimpleName();
    private static final AAXParameter PARAMETERS[];
    private AdvertisingIdentifier.Info advertisingIdentifierInfo;
    private final String connectionType;
    private String instrPixelUrl;
    private final JSONObjectBuilder jsonObjectBuilder;
    private final AdTargetingOptions opt;
    private final String orientation;
    protected final Map slots = new HashMap();

    AdRequest(AdTargetingOptions adtargetingoptions)
    {
        opt = adtargetingoptions;
        DeviceInfo deviceinfo = InternalAdRegistration.getInstance().getDeviceInfo();
        orientation = deviceinfo.getOrientation();
        connectionType = deviceinfo.getConnectionType();
        HashMap hashmap = opt.getCopyOfAdvancedOptions();
        AAXParameter.ParameterData parameterdata = (new AAXParameter.ParameterData()).setAdvancedOptions(hashmap).setAdRequest(this);
        jsonObjectBuilder = (new JSONObjectBuilder()).setAAXParameters(PARAMETERS).setAdvancedOptions(hashmap).setParameterData(parameterdata);
    }

    AdTargetingOptions getAdTargetingOptions()
    {
        return opt;
    }

    AdvertisingIdentifier.Info getAdvertisingIdentifierInfo()
    {
        return advertisingIdentifierInfo;
    }

    public String getInstrumentationPixelURL()
    {
        return instrPixelUrl;
    }

    String getOrientation()
    {
        return orientation;
    }

    protected JSONArray getSlots()
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = slots.values().iterator(); iterator.hasNext(); jsonarray.put(((LOISlot)iterator.next()).getJSON())) { }
        return jsonarray;
    }

    public WebRequest getWebRequest()
    {
        WebRequest webrequest = WebRequest.createNewWebRequest();
        webrequest.setExternalLogTag(LOG_TAG);
        webrequest.setHttpMethod(WebRequest.HttpMethod.POST);
        webrequest.setHost(Configuration.getInstance().getString(Configuration.ConfigOption.AAX_HOSTNAME));
        webrequest.setPath("/e/msdk/ads");
        webrequest.enableLog(true);
        webrequest.setContentType("application/json");
        webrequest.setDisconnectEnabled(false);
        setParametersInWebRequest(webrequest);
        return webrequest;
    }

    public void putSlot(AdSlot adslot)
    {
        if (getAdvertisingIdentifierInfo().hasSISDeviceIdentifier())
        {
            adslot.getMetricsCollector().incrementMetric(Metrics.MetricType.AD_COUNTER_IDENTIFIED_DEVICE);
        }
        adslot.setConnectionType(connectionType);
        LOISlot loislot = new LOISlot(adslot, this);
        slots.put(Integer.valueOf(adslot.getSlotNumber()), loislot);
    }

    AdRequest setAdvertisingIdentifierInfo(AdvertisingIdentifier.Info info)
    {
        advertisingIdentifierInfo = info;
        return this;
    }

    public void setInstrumentationPixelURL(String s)
    {
        instrPixelUrl = s;
    }

    protected void setParametersInWebRequest(WebRequest webrequest)
    {
        jsonObjectBuilder.build();
        Object obj = AAXParameter.SLOTS.getValue(jsonObjectBuilder.getParameterData());
        if (obj == null)
        {
            obj = getSlots();
        }
        jsonObjectBuilder.putIntoJSON(AAXParameter.SLOTS, obj);
        JSONObject jsonobject = jsonObjectBuilder.getJSON();
        String s = DebugProperties.getDebugPropertyAsString("debug.aaxAdParams", null);
        if (!StringUtils.isNullOrEmpty(s))
        {
            webrequest.setAdditionalQueryParamsString(s);
        }
        setRequestBodyString(webrequest, jsonobject);
    }

    protected void setRequestBodyString(WebRequest webrequest, JSONObject jsonobject)
    {
        webrequest.setRequestBodyString(jsonobject.toString());
    }

    static 
    {
        AAXParameter aaaxparameter[] = new AAXParameter[15];
        aaaxparameter[0] = AAXParameter.APP_KEY;
        aaaxparameter[1] = AAXParameter.CHANNEL;
        aaaxparameter[2] = AAXParameter.PUBLISHER_KEYWORDS;
        aaaxparameter[3] = AAXParameter.PUBLISHER_ASINS;
        aaaxparameter[4] = AAXParameter.USER_AGENT;
        aaaxparameter[5] = AAXParameter.SDK_VERSION;
        aaaxparameter[6] = AAXParameter.GEOLOCATION;
        aaaxparameter[7] = AAXParameter.DEVICE_INFO;
        aaaxparameter[8] = AAXParameter.PACKAGE_INFO;
        aaaxparameter[9] = AAXParameter.TEST;
        aaaxparameter[10] = AAXParameter.SIS_DEVICE_IDENTIFIER;
        aaaxparameter[11] = AAXParameter.SHA1_UDID;
        aaaxparameter[12] = AAXParameter.MD5_UDID;
        aaaxparameter[13] = AAXParameter.ADVERTISING_IDENTIFIER;
        aaaxparameter[14] = AAXParameter.OPT_OUT;
        PARAMETERS = aaaxparameter;
    }


    private class JSONObjectBuilder
    {

        private AAXParameter aaxParameters[];
        private Map advancedOptions;
        private final JSONObject json = new JSONObject();
        private AAXParameter.ParameterData parameterData;

        void build()
        {
            AAXParameter aaaxparameter[] = aaxParameters;
            int i = aaaxparameter.length;
            for (int j = 0; j < i; j++)
            {
                AAXParameter aaxparameter = aaaxparameter[j];
                putIntoJSON(aaxparameter, aaxparameter.getValue(parameterData));
            }

            if (advancedOptions != null)
            {
                Iterator iterator = advancedOptions.entrySet().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    if (!StringUtils.isNullOrWhiteSpace((String)entry.getValue()))
                    {
                        putIntoJSON((String)entry.getKey(), entry.getValue());
                    }
                } while (true);
            }
        }

        JSONObject getJSON()
        {
            return json;
        }

        AAXParameter.ParameterData getParameterData()
        {
            return parameterData;
        }

        void putIntoJSON(AAXParameter aaxparameter, Object obj)
        {
            putIntoJSON(aaxparameter.getName(), obj);
        }

        void putIntoJSON(String s, Object obj)
        {
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_14;
            }
            json.put(s, obj);
            return;
            JSONException jsonexception;
            jsonexception;
            Log.d(AdRequest.LOG_TAG, "Could not add parameter to JSON %s: %s", new Object[] {
                s, obj
            });
            return;
        }

        JSONObjectBuilder setAAXParameters(AAXParameter aaaxparameter[])
        {
            aaxParameters = aaaxparameter;
            return this;
        }

        JSONObjectBuilder setAdvancedOptions(Map map)
        {
            advancedOptions = map;
            return this;
        }

        JSONObjectBuilder setParameterData(AAXParameter.ParameterData parameterdata)
        {
            parameterData = parameterdata;
            return this;
        }

        JSONObjectBuilder()
        {
        }
    }


    private class LOISlot
    {

        static final AAXParameter PARAMETERS[];
        private final AdSlot adSlot;
        private final JSONObjectBuilder jsonObjectBuilder;
        private final AdTargetingOptions opt;

        AdSlot getAdSlot()
        {
            return adSlot;
        }

        AdTargetingOptions getAdTargetingOptions()
        {
            return opt;
        }

        JSONObject getJSON()
        {
            jsonObjectBuilder.build();
            return jsonObjectBuilder.getJSON();
        }

        static 
        {
            AAXParameter aaaxparameter[] = new AAXParameter[7];
            aaaxparameter[0] = AAXParameter.SIZE;
            aaaxparameter[1] = AAXParameter.PAGE_TYPE;
            aaaxparameter[2] = AAXParameter.SLOT;
            aaaxparameter[3] = AAXParameter.SLOT_POSITION;
            aaaxparameter[4] = AAXParameter.MAX_SIZE;
            aaaxparameter[5] = AAXParameter.SLOT_ID;
            aaaxparameter[6] = AAXParameter.FLOOR_PRICE;
            PARAMETERS = aaaxparameter;
        }

        LOISlot(AdSlot adslot, AdRequest adrequest)
        {
            opt = adslot.getAdTargetingOptions();
            adSlot = adslot;
            HashMap hashmap = opt.getCopyOfAdvancedOptions();
            AAXParameter.ParameterData parameterdata = (new AAXParameter.ParameterData()).setAdvancedOptions(hashmap).setLOISlot(this).setAdRequest(adrequest);
            jsonObjectBuilder = (new JSONObjectBuilder()).setAAXParameters(PARAMETERS).setAdvancedOptions(hashmap).setParameterData(parameterdata);
        }
    }

}
