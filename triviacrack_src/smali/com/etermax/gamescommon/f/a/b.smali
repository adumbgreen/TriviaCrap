.class public Lcom/etermax/gamescommon/f/a/b;
.super Lcom/etermax/gamescommon/f/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/f/a/a",
        "<",
        "Lcom/etermax/gamescommon/f/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/f/a/a;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/f/a/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/f/a;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Lcom/etermax/gamescommon/f/a;
    .locals 1
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/etermax/gamescommon/f/a;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/f/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
