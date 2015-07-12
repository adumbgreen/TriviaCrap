.class Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/ViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/ViewManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;-><init>(Lcom/amazon/device/ads/ViewManager;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-static {}, Lcom/amazon/device/ads/ViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    return v0
.end method
