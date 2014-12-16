// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.sdk:
//            eg

public class ef
    implements LayeredSocketFactory, SocketFactory
{

    private SSLContext a;

    public ef()
    {
        a = null;
    }

    private static SSLContext a()
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = SSLContext.getInstance("TLS");
            TrustManager atrustmanager[] = new TrustManager[1];
            atrustmanager[0] = new eg(null);
            sslcontext.init(null, atrustmanager, null);
        }
        catch (Exception exception)
        {
            throw new IOException(exception.getMessage());
        }
        return sslcontext;
    }

    private SSLContext b()
    {
        if (a == null)
        {
            a = a();
        }
        return a;
    }

    public Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
    {
        int k = HttpConnectionParams.getConnectionTimeout(httpparams);
        int l = HttpConnectionParams.getSoTimeout(httpparams);
        InetSocketAddress inetsocketaddress = new InetSocketAddress(s, i);
        Socket socket1;
        SSLSocket sslsocket;
        if (socket != null)
        {
            socket1 = socket;
        } else
        {
            socket1 = createSocket();
        }
        sslsocket = (SSLSocket)socket1;
        if (inetaddress != null || j > 0)
        {
            if (j < 0)
            {
                j = 0;
            }
            sslsocket.bind(new InetSocketAddress(inetaddress, j));
        }
        sslsocket.connect(inetsocketaddress, k);
        sslsocket.setSoTimeout(l);
        return sslsocket;
    }

    public Socket createSocket()
    {
        return b().getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return b().getSocketFactory().createSocket(socket, s, i, flag);
    }

    public boolean equals(Object obj)
    {
        return obj != null && obj.getClass().equals(com/flurry/sdk/ef);
    }

    public int hashCode()
    {
        return com/flurry/sdk/ef.hashCode();
    }

    public boolean isSecure(Socket socket)
    {
        return true;
    }
}
