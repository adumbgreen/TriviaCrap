.class public final Lcom/etermax/gamescommon/menu/d;
.super Lcom/etermax/gamescommon/menu/a;
.source "SourceFile"


# instance fields
.field private j:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/d;->f()V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/d;
    .locals 1
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/gamescommon/menu/d;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/d;->a:Landroid/support/v4/app/FragmentActivity;

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/n;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/d;->b:Lcom/etermax/gamescommon/menu/a/m;

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/d;->e:Lcom/etermax/tools/f/a;

    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/d;->d:Lcom/etermax/gamescommon/menu/a/d;

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/d;->c:Lcom/etermax/gamescommon/datasource/e;

    .line 41
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/d;->a()V

    .line 42
    return-void

    .line 35
    :cond_0
    const-string v0, "SlidingMenusHelper_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Due to Context class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/d;->j:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the @RootContext FragmentActivity won\'t be populated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
