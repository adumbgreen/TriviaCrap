.class public Lcom/etermax/preguntados/ui/help/HelpActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/help/b;


# instance fields
.field a:Lcom/etermax/gamescommon/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/help/HelpActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/etermax/preguntados/ui/help/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/etermax/o;->rules_url:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/etermax/o;->learn_url:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/etermax/preguntados/ui/shop/ShopInfoActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/HelpActivity;->a:Lcom/etermax/gamescommon/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/etermax/preguntados/ui/settings/AccountActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/etermax/o;->terms_url:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/etermax/o;->privacy_url:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/etermax/o;->about_info_url:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Ljava/lang/String;)V

    .line 73
    return-void
.end method
