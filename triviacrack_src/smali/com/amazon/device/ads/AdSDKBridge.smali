.class interface abstract Lcom/amazon/device/ads/AdSDKBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getJavascript()Ljava/lang/String;
.end method

.method public abstract getJavascriptInterfaces()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/AdSDKBridge$AdSDKBridgeJavascriptInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
.end method
