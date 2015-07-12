.class public final Lcom/etermax/preguntados/g/b;
.super Lcom/etermax/preguntados/g/a;
.source "SourceFile"


# static fields
.field private static H:Lcom/etermax/preguntados/g/b;


# instance fields
.field private G:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/g/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/preguntados/g/b;->G:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/preguntados/g/b;->H:Lcom/etermax/preguntados/g/b;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/etermax/preguntados/g/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/g/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/g/b;->H:Lcom/etermax/preguntados/g/b;

    .line 27
    sget-object v1, Lcom/etermax/preguntados/g/b;->H:Lcom/etermax/preguntados/g/b;

    invoke-direct {v1}, Lcom/etermax/preguntados/g/b;->c()V

    .line 28
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/g/b;->H:Lcom/etermax/preguntados/g/b;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/g/b;->G:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/g/b;->b:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/g/b;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/g/b;->a:Lcom/etermax/gamescommon/e;

    .line 36
    return-void
.end method
