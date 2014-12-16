.class Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdContainer;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/AdContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/AdContainer;Lcom/amazon/device/ads/AdContainer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;-><init>(Lcom/amazon/device/ads/AdContainer;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 674
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$AdContainerAdWebViewClientListener;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdContainer;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 670
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    return-void
.end method
