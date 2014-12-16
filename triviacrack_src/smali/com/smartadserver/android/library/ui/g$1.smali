.class Lcom/smartadserver/android/library/ui/g$1;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/g;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/g;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/g;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/g$1;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$1;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->a(Lcom/smartadserver/android/library/ui/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 101
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$1;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->a(Lcom/smartadserver/android/library/ui/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/g$1;->a:Lcom/smartadserver/android/library/ui/g;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/g;->a(Lcom/smartadserver/android/library/ui/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
