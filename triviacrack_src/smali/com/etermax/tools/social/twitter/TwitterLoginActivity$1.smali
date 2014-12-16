.class Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/twitter/TwitterLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;->a:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;->a:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;->a:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    invoke-virtual {v1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 55
    :cond_0
    return-void
.end method
