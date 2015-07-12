.class public final Lcom/etermax/gamescommon/achievements/ui/m;
.super Lcom/etermax/gamescommon/achievements/ui/k;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/k;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/m;->c:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/m;->c()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/m;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/m;->c:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/m;->c:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/m;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/m;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/m;->b:Lcom/etermax/gamescommon/datasource/e;

    .line 35
    return-void

    .line 32
    :cond_0
    const-string v0, "AchievementsManager_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Due to Context class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/achievements/ui/m;->c:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the @RootContext BaseFragmentActivity won\'t be populated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
