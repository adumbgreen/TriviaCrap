.class Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->c:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 715
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->c:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->a(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Z)V

    .line 716
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 717
    return-void
.end method
