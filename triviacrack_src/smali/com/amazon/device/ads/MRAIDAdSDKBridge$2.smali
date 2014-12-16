.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->storePicture(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->val$url:Ljava/lang/String;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fetchPicture(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V

    .line 898
    return-void
.end method
