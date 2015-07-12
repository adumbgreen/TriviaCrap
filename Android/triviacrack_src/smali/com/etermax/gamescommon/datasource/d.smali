.class public final Lcom/etermax/gamescommon/datasource/d;
.super Lcom/etermax/gamescommon/datasource/a;
.source "SourceFile"


# static fields
.field private static g:Lcom/etermax/gamescommon/datasource/d;


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/gamescommon/datasource/a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;
    .locals 3
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/etermax/gamescommon/datasource/d;->g:Lcom/etermax/gamescommon/datasource/d;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/etermax/gamescommon/datasource/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/datasource/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/datasource/d;->g:Lcom/etermax/gamescommon/datasource/d;

    .line 36
    sget-object v1, Lcom/etermax/gamescommon/datasource/d;->g:Lcom/etermax/gamescommon/datasource/d;

    invoke-direct {v1}, Lcom/etermax/gamescommon/datasource/d;->f()V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/datasource/d;->g:Lcom/etermax/gamescommon/datasource/d;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/datasource/d;Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/datasource/a;->a(Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/etermax/gamescommon/datasource/a/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/a/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->c:Lcom/etermax/gamescommon/datasource/a/a;

    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->s:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->t:Lcom/etermax/tools/j/a;

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/i;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->u:Lcom/etermax/tools/a/a/g;

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->e:Lcom/etermax/gamescommon/notification/d;

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/k;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/d;->d:Lcom/etermax/tools/a/a/j;

    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/d;->c()V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/etermax/gamescommon/datasource/d$1;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/datasource/d$1;-><init>(Lcom/etermax/gamescommon/datasource/d;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 70
    return-void
.end method
