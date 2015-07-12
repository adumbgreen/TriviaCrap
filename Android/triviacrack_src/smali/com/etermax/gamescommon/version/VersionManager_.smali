.class public final Lcom/etermax/gamescommon/version/VersionManager_;
.super Lcom/etermax/gamescommon/version/VersionManager;
.source "SourceFile"


# static fields
.field private static instance_:Lcom/etermax/gamescommon/version/VersionManager_;


# instance fields
.field private context_:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/version/VersionManager;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/version/VersionManager_;->context_:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/version/VersionManager_;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/gamescommon/version/VersionManager_;->instance_:Lcom/etermax/gamescommon/version/VersionManager_;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/etermax/gamescommon/version/VersionManager_;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/version/VersionManager_;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/version/VersionManager_;->instance_:Lcom/etermax/gamescommon/version/VersionManager_;

    .line 27
    sget-object v1, Lcom/etermax/gamescommon/version/VersionManager_;->instance_:Lcom/etermax/gamescommon/version/VersionManager_;

    invoke-direct {v1}, Lcom/etermax/gamescommon/version/VersionManager_;->init_()V

    .line 28
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/version/VersionManager_;->instance_:Lcom/etermax/gamescommon/version/VersionManager_;

    return-object v0
.end method

.method private init_()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/version/VersionManager_;->context_:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/version/VersionManager_;->mPreferences:Lcom/etermax/gamescommon/e;

    .line 35
    return-void
.end method
