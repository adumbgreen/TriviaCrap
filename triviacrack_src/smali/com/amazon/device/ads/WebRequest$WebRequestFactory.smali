.class public Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 2

    .prologue
    .line 1023
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1025
    new-instance v0, Lcom/amazon/device/ads/HttpClientWebRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/HttpClientWebRequest;-><init>()V

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;-><init>()V

    goto :goto_0
.end method
