// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Map;

// Referenced classes of package com.amazon.device.ads:
//            StringUtils, DebugProperties

abstract class AAXParameter
{

    static final AAXParameter ADVERTISING_IDENTIFIER = new AdvertisingIdentifierParameter();
    static final AAXParameter APP_KEY = new AppKeyParameter();
    static final AAXParameter CHANNEL = new StringParameter("c", "debug.channel");
    static final AAXParameter DEVICE_INFO = new DeviceInfoParameter();
    static final AAXParameter FLOOR_PRICE = new FloorPriceParameter();
    static final AAXParameter GEOLOCATION = new GeoLocationParameter();
    private static final String LOG_TAG = com/amazon/device/ads/AAXParameter.getSimpleName();
    static final AAXParameter MAX_SIZE = new MaxSizeParameter();
    static final AAXParameter MD5_UDID = new MD5UDIDParameter();
    static final AAXParameter OPT_OUT = new OptOutParameter();
    static final AAXParameter PACKAGE_INFO = new PackageInfoParameter();
    static final AAXParameter PAGE_TYPE = new StringParameter("pt", "debug.pt");
    static final AAXParameter PUBLISHER_ASINS = new JSONArrayParameter("pa", "debug.pa");
    static final AAXParameter PUBLISHER_KEYWORDS = new JSONArrayParameter("pk", "debug.pk");
    static final AAXParameter SDK_VERSION = new SDKVersionParameter();
    static final AAXParameter SHA1_UDID = new SHA1UDIDParameter();
    static final AAXParameter SIS_DEVICE_IDENTIFIER = new SISDeviceIdentifierParameter();
    static final AAXParameter SIZE = new SizeParameter();
    static final AAXParameter SLOT = new SlotParameter();
    static final AAXParameter SLOTS = new JSONArrayParameter("slots", "debug.slots");
    static final AAXParameter SLOT_ID = new SlotIdParameter();
    static final AAXParameter SLOT_POSITION = new StringParameter("sp", "debug.sp");
    static final AAXParameter TEST = new TestParameter();
    static final AAXParameter USER_AGENT = new UserAgentParameter();
    private final String debugName;
    private final String name;

    AAXParameter(String s, String s1)
    {
        name = s;
        debugName = s1;
    }

    protected String getDebugName()
    {
        return debugName;
    }

    protected Object getDerivedValue(ParameterData parameterdata)
    {
        return null;
    }

    protected abstract Object getFromDebugProperties();

    String getName()
    {
        return name;
    }

    Object getValue(ParameterData parameterdata)
    {
        Object obj;
        if (hasDebugPropertiesValue())
        {
            obj = getFromDebugProperties();
        } else
        if (parameterdata.advancedOptions.containsKey(name))
        {
            obj = parseFromString((String)parameterdata.advancedOptions.remove(name));
        } else
        {
            obj = getDerivedValue(parameterdata);
        }
        if ((obj instanceof String) && StringUtils.isNullOrWhiteSpace((String)obj))
        {
            obj = null;
        }
        return obj;
    }

    protected boolean hasDebugPropertiesValue()
    {
        return DebugProperties.containsDebugProperty(debugName);
    }

    protected abstract Object parseFromString(String s);



    private class ParameterData
    {

        private AdRequest adRequest;
        private Map advancedOptions;
        private AdRequest.LOISlot loiSlot;

        ParameterData setAdRequest(AdRequest adrequest)
        {
            adRequest = adrequest;
            return this;
        }

        ParameterData setAdvancedOptions(Map map)
        {
            advancedOptions = map;
            return this;
        }

        ParameterData setLOISlot(AdRequest.LOISlot loislot)
        {
            loiSlot = loislot;
            return this;
        }




        ParameterData()
        {
        }
    }


    private class AppKeyParameter extends StringParameter
    {
        private class StringParameter extends AAXParameter
        {

            protected volatile Object getFromDebugProperties()
            {
                return getFromDebugProperties();
            }

            protected String getFromDebugProperties()
            {
                return DebugProperties.getDebugPropertyAsString(getDebugName(), null);
            }

            protected volatile Object parseFromString(String s)
            {
                return parseFromString(s);
            }

            protected String parseFromString(String s)
            {
                return s;
            }

            StringParameter(String s, String s1)
            {
                super(s, s1);
            }
        }


        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey();
        }

        AppKeyParameter()
        {
            super("appId", "debug.appid");
        }
    }


    private class JSONArrayParameter extends AAXParameter
    {

        protected volatile Object getFromDebugProperties()
        {
            return getFromDebugProperties();
        }

        protected JSONArray getFromDebugProperties()
        {
            return parseFromString(DebugProperties.getDebugPropertyAsString(getDebugName(), null));
        }

        protected volatile Object parseFromString(String s)
        {
            return parseFromString(s);
        }

        protected JSONArray parseFromString(String s)
        {
            JSONArray jsonarray;
            try
            {
                jsonarray = new JSONArray(s);
            }
            catch (JSONException jsonexception)
            {
                String s1 = AAXParameter.LOG_TAG;
                Object aobj[] = new Object[1];
                aobj[0] = getName();
                Log.e(s1, "Unable to parse the following value into a JSONArray: %s", aobj);
                return null;
            }
            return jsonarray;
        }

        JSONArrayParameter(String s, String s1)
        {
            super(s, s1);
        }
    }


    private class UserAgentParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString();
        }

        UserAgentParameter()
        {
            super("ua", "debug.ua");
        }
    }


    private class SDKVersionParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return Version.getSDKVersion();
        }

        SDKVersionParameter()
        {
            super("adsdk", "debug.ver");
        }
    }


    private class GeoLocationParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            Location location;
label0:
            {
                if (Configuration.getInstance().getBoolean(Configuration.ConfigOption.SEND_GEO) && parameterdata.adRequest.getAdTargetingOptions().isGeoLocationEnabled())
                {
                    location = (new AdLocation()).getLocation();
                    if (location != null)
                    {
                        break label0;
                    }
                }
                return null;
            }
            return (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).toString();
        }

        GeoLocationParameter()
        {
            super("geoloc", "debug.geoloc");
        }
    }


    private class DeviceInfoParameter extends JSONObjectParameter
    {
        private class JSONObjectParameter extends AAXParameter
        {

            protected volatile Object getFromDebugProperties()
            {
                return getFromDebugProperties();
            }

            protected JSONObject getFromDebugProperties()
            {
                return parseFromString(DebugProperties.getDebugPropertyAsString(getDebugName(), null));
            }

            protected volatile Object parseFromString(String s)
            {
                return parseFromString(s);
            }

            protected JSONObject parseFromString(String s)
            {
                JSONObject jsonobject;
                try
                {
                    jsonobject = new JSONObject(s);
                }
                catch (JSONException jsonexception)
                {
                    String s1 = AAXParameter.LOG_TAG;
                    Object aobj[] = new Object[1];
                    aobj[0] = getName();
                    Log.e(s1, "Unable to parse the following value into a JSONObject: %s", aobj);
                    return null;
                }
                return jsonobject;
            }

            JSONObjectParameter(String s, String s1)
            {
                super(s, s1);
            }
        }


        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected JSONObject getDerivedValue(ParameterData parameterdata)
        {
            return InternalAdRegistration.getInstance().getDeviceInfo().toJsonObject(parameterdata.adRequest.getOrientation());
        }

        DeviceInfoParameter()
        {
            super("dinfo", "debug.dinfo");
        }
    }


    private class PackageInfoParameter extends JSONObjectParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected JSONObject getDerivedValue(ParameterData parameterdata)
        {
            return InternalAdRegistration.getInstance().getAppInfo().getPackageInfoJSON();
        }

        PackageInfoParameter()
        {
            super("pkg", "debug.pkg");
        }
    }


    private class TestParameter extends BooleanParameter
    {
        private class BooleanParameter extends AAXParameter
        {

            protected Boolean getFromDebugProperties()
            {
                return DebugProperties.getDebugPropertyAsBoolean(getDebugName(), null);
            }

            protected volatile Object getFromDebugProperties()
            {
                return getFromDebugProperties();
            }

            protected Boolean parseFromString(String s)
            {
                return Boolean.valueOf(Boolean.parseBoolean(s));
            }

            protected volatile Object parseFromString(String s)
            {
                return parseFromString(s);
            }

            BooleanParameter(String s, String s1)
            {
                super(s, s1);
            }
        }


        protected Boolean getDerivedValue(ParameterData parameterdata)
        {
            return Settings.getInstance().getBoolean("testingEnabled", null);
        }

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        TestParameter()
        {
            super("isTest", "debug.test");
        }
    }


    private class SISDeviceIdentifierParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return parameterdata.adRequest.getAdvertisingIdentifierInfo().getSISDeviceIdentifier();
        }

        SISDeviceIdentifierParameter()
        {
            super("ad-id", "debug.adid");
        }
    }


    private class SHA1UDIDParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            if (!parameterdata.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier())
            {
                return InternalAdRegistration.getInstance().getDeviceInfo().getUdidSha1();
            } else
            {
                return null;
            }
        }

        SHA1UDIDParameter()
        {
            super("sha1_udid", "debug.sha1udid");
        }
    }


    private class MD5UDIDParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            if (!parameterdata.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier())
            {
                return InternalAdRegistration.getInstance().getDeviceInfo().getUdidMd5();
            } else
            {
                return null;
            }
        }

        MD5UDIDParameter()
        {
            super("md5_udid", "debug.md5udid");
        }
    }


    private class AdvertisingIdentifierParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            if (parameterdata.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier())
            {
                return parameterdata.adRequest.getAdvertisingIdentifierInfo().getAdvertisingIdentifier();
            } else
            {
                return null;
            }
        }

        AdvertisingIdentifierParameter()
        {
            super("idfa", "debug.idfa");
        }
    }


    private class OptOutParameter extends BooleanParameter
    {

        protected Boolean getDerivedValue(ParameterData parameterdata)
        {
            if (parameterdata.adRequest.getAdvertisingIdentifierInfo().hasAdvertisingIdentifier())
            {
                return Boolean.valueOf(parameterdata.adRequest.getAdvertisingIdentifierInfo().isLimitAdTrackingEnabled());
            } else
            {
                return null;
            }
        }

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        OptOutParameter()
        {
            super("oo", "debug.optOut");
        }
    }


    private class SizeParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return parameterdata.loiSlot.getAdSlot().getRequestedAdSize().toString();
        }

        SizeParameter()
        {
            super("sz", "debug.size");
        }
    }


    private class SlotParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return parameterdata.adRequest.getOrientation();
        }

        SlotParameter()
        {
            super("slot", "debug.slot");
        }
    }


    private class MaxSizeParameter extends StringParameter
    {

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        protected String getDerivedValue(ParameterData parameterdata)
        {
            return parameterdata.loiSlot.getAdSlot().getMaxSize();
        }

        MaxSizeParameter()
        {
            super("mxsz", "debug.mxsz");
        }
    }


    private class SlotIdParameter extends IntegerParameter
    {
        private class IntegerParameter extends AAXParameter
        {

            protected Integer getFromDebugProperties()
            {
                return DebugProperties.getDebugPropertyAsInteger(getDebugName(), null);
            }

            protected volatile Object getFromDebugProperties()
            {
                return getFromDebugProperties();
            }

            protected Integer parseFromString(String s)
            {
                return Integer.valueOf(Integer.parseInt(s));
            }

            protected volatile Object parseFromString(String s)
            {
                return parseFromString(s);
            }

            IntegerParameter(String s, String s1)
            {
                super(s, s1);
            }
        }


        protected Integer getDerivedValue(ParameterData parameterdata)
        {
            return Integer.valueOf(parameterdata.loiSlot.getAdSlot().getSlotNumber());
        }

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        SlotIdParameter()
        {
            super("slotId", "debug.slotId");
        }
    }


    private class FloorPriceParameter extends LongParameter
    {
        private class LongParameter extends AAXParameter
        {

            protected Long getFromDebugProperties()
            {
                return DebugProperties.getDebugPropertyAsLong(getDebugName(), null);
            }

            protected volatile Object getFromDebugProperties()
            {
                return getFromDebugProperties();
            }

            protected Long parseFromString(String s)
            {
                return Long.valueOf(Long.parseLong(s));
            }

            protected volatile Object parseFromString(String s)
            {
                return parseFromString(s);
            }

            LongParameter(String s, String s1)
            {
                super(s, s1);
            }
        }


        protected Long getDerivedValue(ParameterData parameterdata)
        {
            if (parameterdata.loiSlot.getAdTargetingOptions().hasFloorPrice())
            {
                return Long.valueOf(parameterdata.loiSlot.getAdTargetingOptions().getFloorPrice());
            } else
            {
                return null;
            }
        }

        protected volatile Object getDerivedValue(ParameterData parameterdata)
        {
            return getDerivedValue(parameterdata);
        }

        FloorPriceParameter()
        {
            super("ec", "debug.ec");
        }
    }

}
