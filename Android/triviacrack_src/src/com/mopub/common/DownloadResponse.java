// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class DownloadResponse
{

    private byte a[];
    private final int b;
    private final long c;
    private final Header d[];

    public DownloadResponse(HttpResponse httpresponse)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        a = new byte[0];
        bytearrayoutputstream = new ByteArrayOutputStream();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(httpresponse.getEntity().getContent());
        Streams.copyContent(bufferedinputstream, bytearrayoutputstream);
        a = bytearrayoutputstream.toByteArray();
        Streams.closeStream(bufferedinputstream);
        Streams.closeStream(bytearrayoutputstream);
        b = httpresponse.getStatusLine().getStatusCode();
        c = a.length;
        d = httpresponse.getAllHeaders();
        return;
        Exception exception;
        exception;
        bufferedinputstream = null;
_L2:
        Streams.closeStream(bufferedinputstream);
        Streams.closeStream(bytearrayoutputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public byte[] getByteArray()
    {
        return a;
    }

    public long getContentLength()
    {
        return c;
    }

    public String getFirstHeader(ResponseHeader responseheader)
    {
        Header aheader[] = d;
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            Header header = aheader[j];
            if (header.getName().equalsIgnoreCase(responseheader.getKey()))
            {
                return header.getValue();
            }
        }

        return null;
    }

    public int getStatusCode()
    {
        return b;
    }
}
