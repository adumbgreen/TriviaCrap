.class public Lcom/etermax/gamescommon/dashboard/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Lcom/etermax/gamescommon/dashboard/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/gamescommon/dashboard/a/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.triviafans.realmadrid."

    sget v4, Lcom/etermax/h;->dashboard_games_realmadrid:I

    sget v5, Lcom/etermax/o;->realmadrid_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.triviafans.fcb."

    sget v4, Lcom/etermax/h;->dashboard_games_fcbarcelona:I

    sget v5, Lcom/etermax/o;->fcbarcelona_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.preguntados."

    sget v4, Lcom/etermax/h;->dashboard_games_preguntados:I

    sget v5, Lcom/etermax/o;->preguntados_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.apalabrados."

    sget v4, Lcom/etermax/h;->dashboard_games_apalabrados:I

    sget v5, Lcom/etermax/o;->apalabrados_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.wordcrack."

    sget v4, Lcom/etermax/h;->dashboard_games_mezcladitos:I

    sget v5, Lcom/etermax/o;->wordcrack_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/b;

    const-string v3, "com.etermax.bingocrack."

    sget v4, Lcom/etermax/h;->dashboard_games_bingocrack:I

    sget v5, Lcom/etermax/o;->bingocrack_app_name:I

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/a/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/dashboard/a/c;->a:[Lcom/etermax/gamescommon/dashboard/a/b;

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/dashboard/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/b;

    .line 32
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/a;

    .line 34
    sget-object v4, Lcom/etermax/gamescommon/dashboard/a/c;->a:[Lcom/etermax/gamescommon/dashboard/a/b;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 35
    invoke-virtual {v6}, Lcom/etermax/gamescommon/dashboard/a/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/etermax/tools/j/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/etermax/gamescommon/dashboard/a/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/etermax/tools/j/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcom/etermax/tools/j/e;->a(Lcom/etermax/tools/b;Lcom/etermax/tools/a;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/etermax/gamescommon/dashboard/a/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/etermax/gamescommon/dashboard/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 38
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-object v3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "triviafans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "triviafans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
