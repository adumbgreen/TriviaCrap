.class Lcom/smartadserver/android/library/ui/g$3;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/g;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/g;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/g$3;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$3;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$3;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->b(Lcom/smartadserver/android/library/ui/g;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$3;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$3;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->b(Lcom/smartadserver/android/library/ui/g;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method
