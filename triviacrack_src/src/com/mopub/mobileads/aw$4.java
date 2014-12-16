// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.os.Handler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import com.mopub.mobileads.factories.HttpClientFactory;
import com.mopub.mobileads.util.HttpResponses;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.mopub.mobileads:
//            aw, ax, ak, MraidView

class b
    implements Runnable
{

    final String a;
    final File b;
    final aw c;
    private URI d;
    private InputStream e;
    private OutputStream f;
    private MediaScannerConnection g;

    private void a(String s)
    {
        ax ax1 = new ax(c, s, null, null);
        g = new MediaScannerConnection(aw.a(c).getApplicationContext(), ax1);
        ax.a(ax1, g);
        g.connect();
    }

    public void run()
    {
        HttpResponse httpresponse;
        String s;
        d = URI.create(a);
        httpresponse = HttpClientFactory.create().execute(new HttpGet(d));
        e = httpresponse.getEntity().getContent();
        s = HttpResponses.extractHeader(httpresponse, ResponseHeader.LOCATION);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        d = URI.create(s);
        String s1 = aw.a(c, d, httpresponse);
        File file = new File(b, s1);
        String s2 = file.toString();
        f = new FileOutputStream(file);
        Streams.copyContent(e, f);
        a(s2);
        Streams.closeStream(e);
        Streams.closeStream(f);
        return;
        Exception exception1;
        exception1;
        aw.b(c).post(new Runnable() {

            final aw._cls4 a;

            public void run()
            {
                aw.a(a.c, "Image failed to download.");
                a.c.getMraidView().a(ak.STORE_PICTURE, "Error downloading and saving image file.");
                MoPubLog.d("Error downloading and saving image file.");
            }

            
            {
                a = aw._cls4.this;
                super();
            }
        });
        Streams.closeStream(e);
        Streams.closeStream(f);
        return;
        Exception exception;
        exception;
        Streams.closeStream(e);
        Streams.closeStream(f);
        throw exception;
    }

    _cls1.a(aw aw1, String s, File file)
    {
        c = aw1;
        a = s;
        b = file;
        super();
    }
}
