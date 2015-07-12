// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.amazon.device.ads:
//            Configuration, SISRequest, WebRequest, ResponseReader, 
//            JSONUtils, Log, InternalAdRegistration, IInternalAdRegistration, 
//            RegistrationInfo, Version, Metrics, SISRequestorCallback

class SISRequestor
{

    protected static final String API_LEVEL_ENDPOINT = "/api3";
    private final SISRequestorCallback sisRequestorCallback;
    private final SISRequest sisRequests[];

    public transient SISRequestor(SISRequestorCallback sisrequestorcallback, SISRequest asisrequest[])
    {
        sisRequestorCallback = sisrequestorcallback;
        sisRequests = asisrequest;
    }

    public transient SISRequestor(SISRequest asisrequest[])
    {
        this(null, asisrequest);
    }

    protected static String getEndpoint(SISRequest sisrequest)
    {
        String s = Configuration.getInstance().getString(Configuration.ConfigOption.SIS_URL);
        if (s != null)
        {
            int i = s.indexOf("/");
            if (i > -1)
            {
                s = s.substring(i);
            } else
            {
                s = "";
            }
        }
        return (new StringBuilder()).append(s).append("/api3").append(sisrequest.getPath()).toString();
    }

    protected static String getHostname()
    {
        String s = Configuration.getInstance().getString(Configuration.ConfigOption.SIS_URL);
        if (s != null)
        {
            int i = s.indexOf("/");
            if (i > -1)
            {
                s = s.substring(0, i);
            }
        }
        return s;
    }

    protected void callSIS()
    {
        SISRequest asisrequest[] = sisRequests;
        int i = asisrequest.length;
        for (int j = 0; j < i; j++)
        {
            callSIS(asisrequest[j]);
        }

    }

    protected void callSIS(SISRequest sisrequest)
    {
        WebRequest webrequest = getWebRequest(sisrequest);
        WebRequest.WebResponse webresponse;
        org.json.JSONObject jsonobject;
        int i;
        String s;
        try
        {
            webresponse = webrequest.makeCall();
        }
        catch (WebRequest.WebRequestException webrequestexception)
        {
            return;
        }
        jsonobject = webresponse.getResponseReader().readAsJSON();
        if (jsonobject == null)
        {
            return;
        }
        i = JSONUtils.getIntegerFromJSON(jsonobject, "rcode", 0);
        s = JSONUtils.getStringFromJSON(jsonobject, "msg", "");
        if (i == 1)
        {
            String s2 = sisrequest.getLogTag();
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(i);
            aobj1[1] = s;
            Log.i(s2, "Result - code: %d, msg: %s", aobj1);
            sisrequest.onResponseReceived(jsonobject);
            return;
        } else
        {
            String s1 = sisrequest.getLogTag();
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = s;
            Log.w(s1, "Result - code: %d, msg: %s", aobj);
            return;
        }
    }

    protected SISRequestorCallback getSisRequestorCallback()
    {
        return sisRequestorCallback;
    }

    protected WebRequest getWebRequest(SISRequest sisrequest)
    {
        WebRequest webrequest = WebRequest.createNewWebRequest();
        webrequest.setExternalLogTag(sisrequest.getLogTag());
        webrequest.setHttpMethod(WebRequest.HttpMethod.POST);
        webrequest.setHost(getHostname());
        webrequest.setPath(getEndpoint(sisrequest));
        webrequest.enableLog(true);
        if (sisrequest.getPostParameters() != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = sisrequest.getPostParameters().entrySet().iterator(); iterator.hasNext(); webrequest.putPostParameter((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        WebRequest.QueryStringParameters querystringparameters = sisrequest.getQueryParameters();
        querystringparameters.putUrlEncoded("appId", InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey());
        querystringparameters.putUrlEncoded("sdkVer", Version.getSDKVersion());
        webrequest.setQueryStringParameters(querystringparameters);
        webrequest.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        webrequest.setServiceCallLatencyMetric(sisrequest.getCallMetricType());
        return webrequest;
    }

    public void startCallSIS()
    {
        callSIS();
        SISRequestorCallback sisrequestorcallback = getSisRequestorCallback();
        if (sisrequestorcallback != null)
        {
            sisrequestorcallback.onSISCallComplete();
        }
    }
}
