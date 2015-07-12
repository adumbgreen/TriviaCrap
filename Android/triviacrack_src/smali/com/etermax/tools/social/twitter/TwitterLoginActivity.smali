.class public Lcom/etermax/tools/social/twitter/TwitterLoginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field c:Lcom/etermax/tools/social/twitter/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "url"

    sput-object v0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->a:Ljava/lang/String;

    .line 26
    const-string v0, "scheme"

    sput-object v0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->b:Ljava/lang/String;

    .line 28
    const-string v0, "twitter_web_loading"

    sput-object v0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    sget-object v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    sget v0, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/widget/b/f;->a(Ljava/lang/String;)Lcom/etermax/tools/widget/b/f;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/etermax/tools/widget/b/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected b(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "TwitterLoginActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/etermax/k;->twitter_login_activity:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    sget v0, Lcom/etermax/i;->webview:I

    invoke-virtual {p0, v0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 50
    new-instance v3, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$1;-><init>(Lcom/etermax/tools/social/twitter/TwitterLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 58
    new-instance v3, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity$2;-><init>(Lcom/etermax/tools/social/twitter/TwitterLoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    return-void
.end method
