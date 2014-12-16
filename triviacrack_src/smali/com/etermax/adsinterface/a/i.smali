.class public Lcom/etermax/adsinterface/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/etermax/adsinterface/a/a;

.field private c:Lcom/etermax/adsinterface/a/m;

.field private d:Lcom/etermax/adsinterface/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/etermax/adsinterface/a/a;Lcom/etermax/adsinterface/a/m;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    .line 38
    iput-object p3, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    .line 40
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const-string v0, "Custom"

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/m;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etermax/adsinterface/a/i$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/adsinterface/a/i$2;-><init>(Lcom/etermax/adsinterface/a/i;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method static synthetic b(Lcom/etermax/adsinterface/a/i;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/a;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onFailedToReceiveAd()V

    .line 103
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onFailedToReceiveAd()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onFailedToReceiveAd()V

    .line 57
    const-string v0, "Admob ads"

    const-string v1, "CustomBannerContainer Custom banner can only be called from a FragmentActivity!"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    :try_start_0
    new-instance v1, Lcom/etermax/adsinterface/a/f;

    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-direct {v1, v0, v2}, Lcom/etermax/adsinterface/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/adsinterface/a/a;)V

    iput-object v1, p0, Lcom/etermax/adsinterface/a/i;->d:Lcom/etermax/adsinterface/a/f;

    .line 62
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->d:Lcom/etermax/adsinterface/a/f;

    new-instance v1, Lcom/etermax/adsinterface/a/i$1;

    invoke-direct {v1, p0}, Lcom/etermax/adsinterface/a/i$1;-><init>(Lcom/etermax/adsinterface/a/i;)V

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/f;->a(Lcom/etermax/adsinterface/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->d:Lcom/etermax/adsinterface/a/f;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->d:Lcom/etermax/adsinterface/a/f;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/f;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string v0, "admob ads"

    const-string v1, "CustomBannerContainer - onClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "com.etermax.gamescommon.from"

    iget-object v1, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v1}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :cond_0
    :goto_0
    const/high16 v0, 0x1400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/adsinterface/a/i;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->c:Lcom/etermax/adsinterface/a/m;

    invoke-interface {v0}, Lcom/etermax/adsinterface/a/m;->onClick()V

    .line 148
    :goto_1
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->b:Lcom/etermax/adsinterface/a/a;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/etermax/adsinterface/a/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a/l;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "ActivityNotFoundException"

    const-string v2, "CustomBannerContainer error while trying to open link"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    const-string v1, "NullPointerException"

    const-string v2, "CustomBannerContainer error while trying to click link more than once"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    :catch_2
    move-exception v0

    .line 144
    const-string v1, "UnsupportedEncodingException"

    const-string v2, "error while trying to add session GET parameter in link"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
