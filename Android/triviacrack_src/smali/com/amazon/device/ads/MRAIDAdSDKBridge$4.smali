.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 947
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    const-string v2, "AdImage"

    const-string v3, "Image created by rich media ad."

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/device/ads/ImageUtils;->insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "Picture could not be stored to device."

    const-string v2, "storePicture"

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
