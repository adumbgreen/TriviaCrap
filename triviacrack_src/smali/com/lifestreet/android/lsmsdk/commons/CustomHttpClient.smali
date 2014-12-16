.class public final Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 22
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 23
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 24
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 25
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 27
    return-void
.end method
