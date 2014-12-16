.class Lcom/amazon/device/ads/UserAgentManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/UserAgentManager;->populateUserAgentString(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/UserAgentManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/UserAgentManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    iput-object p2, p0, Lcom/amazon/device/ads/UserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/UserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazon/device/ads/UserAgentManager;->access$002(Lcom/amazon/device/ads/UserAgentManager;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    #getter for: Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithoutSDKVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/amazon/device/ads/UserAgentManager;->access$000(Lcom/amazon/device/ads/UserAgentManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amazon/device/ads/Version;->getUserAgentSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/amazon/device/ads/UserAgentManager;->userAgentStringWithSDKVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazon/device/ads/UserAgentManager;->access$102(Lcom/amazon/device/ads/UserAgentManager;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    return-void
.end method
