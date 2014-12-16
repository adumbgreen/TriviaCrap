.class public final Lcom/etermax/gamescommon/animations/c;
.super Lcom/etermax/gamescommon/animations/a;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/c;->c:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/c;->b()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/animations/c;
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/etermax/gamescommon/animations/c;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/animations/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/c;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/c;->a:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/resources/c;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/resources/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/c;->b:Lcom/etermax/gamescommon/resources/a;

    .line 29
    return-void
.end method
