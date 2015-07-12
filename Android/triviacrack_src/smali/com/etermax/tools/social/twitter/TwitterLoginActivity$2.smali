.class Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/twitter/TwitterLoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    iput-object p2, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    invoke-virtual {v1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->finish()V

    .line 78
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    iget-object v1, v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->c:Lcom/etermax/tools/social/twitter/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/social/twitter/a;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;->b:Lcom/etermax/tools/social/twitter/TwitterLoginActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->finish()V

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
