.class public Lcom/etermax/preguntados/f/a;
.super Lcom/etermax/gamescommon/social/a;
.source "SourceFile"


# static fields
.field static h:Lcom/etermax/tools/f/a;

.field private static j:Ljava/lang/String;


# instance fields
.field i:Landroid/content/Context;

.field private k:Lcom/etermax/preguntados/f/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/a;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/etermax/preguntados/f/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/etermax/preguntados/f/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/gamescommon/b/j;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/j;-><init>()V

    .line 59
    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/b/j;->a(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/etermax/preguntados/f/a;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 61
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/etermax/preguntados/f/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/etermax/gamescommon/b/k;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/k;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/b/k;->a(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/etermax/preguntados/f/a;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->login_with:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->facebook:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->link_facebook_description_02:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/etermax/o;->connect_facebook:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/etermax/preguntados/f/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/preguntados/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/a;->k:Lcom/etermax/preguntados/f/b;

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/f/a;->k:Lcom/etermax/preguntados/f/b;

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "facebook_ask_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/f/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    sput-object p1, Lcom/etermax/preguntados/f/a;->j:Ljava/lang/String;

    .line 76
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/etermax/o;->link_your_account:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/etermax/o;->link_facebook_description:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/etermax/o;->connect_facebook:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/etermax/preguntados/f/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/preguntados/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/a;->k:Lcom/etermax/preguntados/f/b;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/f/a;->k:Lcom/etermax/preguntados/f/b;

    sget-object v1, Lcom/etermax/preguntados/f/a;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "facebook_ask_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/f/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
