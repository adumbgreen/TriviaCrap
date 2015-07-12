// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            MetricsCollector, ThreadUtils, Log, AdMetrics, 
//            AdController, WebRequest

class Metrics
{

    private static final String LOG_TAG = com/amazon/device/ads/Metrics.getSimpleName();
    private static Metrics instance = new Metrics();
    private MetricsCollector metricsCollector;

    Metrics()
    {
        metricsCollector = new MetricsCollector();
    }

    public static Metrics getInstance()
    {
        return instance;
    }

    private void sendMetrics(final WebRequest webRequest)
    {
        ThreadUtils.executeRunnable(new Runnable() {

            final Metrics this$0;
            final WebRequest val$webRequest;

            public void run()
            {
                webRequest.enableLog(true);
                try
                {
                    webRequest.makeCall();
                    return;
                }
                catch (WebRequest.WebRequestException webrequestexception)
                {
                    class _cls2
                    {

                        static final int $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus[];

                        static 
                        {
                            $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus = new int[WebRequest.WebRequestStatus.values().length];
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus[WebRequest.WebRequestStatus.INVALID_CLIENT_PROTOCOL.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus[WebRequest.WebRequestStatus.NETWORK_FAILURE.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus[WebRequest.WebRequestStatus.MALFORMED_URL.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            try
                            {
                                $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus[WebRequest.WebRequestStatus.UNSUPPORTED_ENCODING.ordinal()] = 4;
                            }
                            catch (NoSuchFieldError nosuchfielderror3)
                            {
                                return;
                            }
                        }
                    }

                    String s;
                    switch (_cls2..SwitchMap.com.amazon.device.ads.WebRequest.WebRequestStatus[webrequestexception.getStatus().ordinal()])
                    {
                    default:
                        return;

                    case 1: // '\001'
                        String s3 = Metrics.LOG_TAG;
                        Object aobj3[] = new Object[1];
                        aobj3[0] = webrequestexception.getMessage();
                        Log.e(s3, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s", aobj3);
                        return;

                    case 2: // '\002'
                        String s2 = Metrics.LOG_TAG;
                        Object aobj2[] = new Object[1];
                        aobj2[0] = webrequestexception.getMessage();
                        Log.e(s2, "Unable to submit metrics for ad due to Network Failure, msg: %s", aobj2);
                        return;

                    case 3: // '\003'
                        String s1 = Metrics.LOG_TAG;
                        Object aobj1[] = new Object[1];
                        aobj1[0] = webrequestexception.getMessage();
                        Log.e(s1, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s", aobj1);
                        // fall through

                    case 4: // '\004'
                        s = Metrics.LOG_TAG;
                        break;
                    }
                    Object aobj[] = new Object[1];
                    aobj[0] = webrequestexception.getMessage();
                    Log.e(s, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s", aobj);
                    return;
                }
            }

            
            {
                this$0 = Metrics.this;
                webRequest = webrequest;
                super();
            }
        });
    }

    public MetricsCollector getMetricsCollector()
    {
        return metricsCollector;
    }

    public void submitAndResetMetrics(AdController adcontroller)
    {
        Log.d(LOG_TAG, "METRIC Submit and Reset");
        AdMetrics admetrics = new AdMetrics(adcontroller);
        if (admetrics.canSubmit())
        {
            MetricsCollector metricscollector = metricsCollector;
            metricsCollector = new MetricsCollector();
            admetrics.addGlobalMetrics(metricscollector);
            sendMetrics(admetrics.getAaxWebRequestAndResetAdMetrics());
            return;
        } else
        {
            adcontroller.resetMetricsCollector();
            return;
        }
    }


}
