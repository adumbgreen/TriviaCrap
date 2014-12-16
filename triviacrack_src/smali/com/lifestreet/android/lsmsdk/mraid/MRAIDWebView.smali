.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    const-string v0, "MRAIDNativeInterface"

    invoke-virtual {p0, p3, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$1;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$1;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setVerticalScrollBarEnabled(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 68
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$2;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$2;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    return-void
.end method
