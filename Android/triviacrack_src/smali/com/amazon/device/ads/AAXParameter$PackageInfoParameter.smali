.class Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "pkg"

    const-string v1, "debug.pkg"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 359
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
