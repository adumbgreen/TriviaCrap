// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            Metrics, WebRequest, Log

class 
    implements Runnable
{

    final Metrics this$0;
    final WebRequest val$webRequest;

    public void run()
    {
        val$webRequest.enableLog(true);
        try
        {
            val$webRequest.makeCall();
            return;
        }
        catch (.WebRequestException webrequestexception)
        {
            String s;
            switch (.SwitchMap.com.amazon.device.ads.WebRequest.WebRequestStatus[webrequestexception.getStatus().ordinal()])
            {
            default:
                return;

            case 1: // '\001'
                String s3 = Metrics.access$000();
                Object aobj3[] = new Object[1];
                aobj3[0] = webrequestexception.getMessage();
                Log.e(s3, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s", aobj3);
                return;

            case 2: // '\002'
                String s2 = Metrics.access$000();
                Object aobj2[] = new Object[1];
                aobj2[0] = webrequestexception.getMessage();
                Log.e(s2, "Unable to submit metrics for ad due to Network Failure, msg: %s", aobj2);
                return;

            case 3: // '\003'
                String s1 = Metrics.access$000();
                Object aobj1[] = new Object[1];
                aobj1[0] = webrequestexception.getMessage();
                Log.e(s1, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s", aobj1);
                // fall through

            case 4: // '\004'
                s = Metrics.access$000();
                break;
            }
            Object aobj[] = new Object[1];
            aobj[0] = webrequestexception.getMessage();
            Log.e(s, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s", aobj);
            return;
        }
    }

    ()
    {
        this$0 = final_metrics;
        val$webRequest = WebRequest.this;
        super();
    }
}
