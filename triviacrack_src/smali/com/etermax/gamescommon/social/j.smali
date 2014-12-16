.class public final Lcom/etermax/gamescommon/social/j;
.super Lcom/etermax/gamescommon/social/h;
.source "SourceFile"


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/h;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/j;->a()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/gamescommon/social/j;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/social/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/social/j;->e:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/j;->a:Lcom/etermax/tools/social/a/b;

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/j;->d:Lcom/etermax/gamescommon/social/a;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/j;->c:Lcom/etermax/tools/f/a;

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/social/j;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/j;->b:Lcom/etermax/gamescommon/datasource/e;

    .line 34
    return-void
.end method
