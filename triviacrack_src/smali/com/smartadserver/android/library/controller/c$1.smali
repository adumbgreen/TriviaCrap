.class Lcom/smartadserver/android/library/controller/c$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/c;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/c;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/c$1;->a:Lcom/smartadserver/android/library/controller/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {}, Lcom/smartadserver/android/library/controller/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading from iframe interceptor"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c$1;->a:Lcom/smartadserver/android/library/controller/c;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/c;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method
