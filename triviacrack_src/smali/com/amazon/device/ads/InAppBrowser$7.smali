.class Lcom/amazon/device/ads/InAppBrowser$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;

.field final synthetic val$originalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    #getter for: Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    .line 254
    const-string v0, "The current URL is null. Reverting to the original URL for external browser."

    .line 255
    sget-object v0, Lcom/amazon/device/ads/InAppBrowser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The current URL is null. Reverting to the original URL for external browser."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    #getter for: Lcom/amazon/device/ads/InAppBrowser;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    .line 260
    return-void
.end method
