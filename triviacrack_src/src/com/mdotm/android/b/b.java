// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mdotm.android.e.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class b
{

    public b()
    {
    }

    private boolean a(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnected();
    }

    public InputStream a(Context context, String s)
    {
        d.b(this, (new StringBuilder("resource url = ")).append(s).toString());
        if (!a(context))
        {
            break MISSING_BLOCK_LABEL_169;
        }
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 5000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 10000);
        HttpResponse httpresponse = (new DefaultHttpClient(basichttpparams)).execute(new HttpGet(s));
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            return httpresponse.getEntity().getContent();
        }
        d.a(this, (new StringBuilder("Failed to download file. response code ")).append(httpresponse.getStatusLine().getStatusCode()).toString());
        MalformedURLException malformedurlexception;
        return null;
        try
        {
            d.a(this, "n/w not available to download file");
        }
        // Misplaced declaration of an exception variable
        catch (MalformedURLException malformedurlexception)
        {
            d.a(this, (new StringBuilder("MalformedURLException exception while downloading file ")).append(malformedurlexception.getMessage()).toString());
            return null;
        }
        catch (IOException ioexception)
        {
            d.a(this, (new StringBuilder("IOException exception while downloading file ")).append(ioexception.getMessage()).toString());
            ioexception.printStackTrace();
            return null;
        }
        return null;
    }

    public boolean a(InputStream inputstream, File file)
    {
        d.b(this, "writing stream to file");
        FileOutputStream fileoutputstream;
        byte abyte0[];
        fileoutputstream = new FileOutputStream(file);
        abyte0 = new byte[3072];
_L1:
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            try
            {
                inputstream.close();
                fileoutputstream.flush();
                fileoutputstream.close();
                d.b(this, "successfully finished writing");
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                d.a(this, (new StringBuilder("FileNotfound exception while writting file ")).append(filenotfoundexception.getMessage()).toString());
                file.delete();
                return false;
            }
            catch (IOException ioexception)
            {
                file.delete();
                d.a(this, (new StringBuilder("IOException exception while writting file ")).append(ioexception.getMessage()).toString());
                return false;
            }
            return true;
        }
        fileoutputstream.write(abyte0, 0, i);
          goto _L1
    }
}
