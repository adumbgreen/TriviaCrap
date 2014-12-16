.class public final Lcom/etermax/tools/b/c;
.super Lcom/etermax/tools/b/a;
.source "SourceFile"


# static fields
.field private static d:Lcom/etermax/tools/b/c;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/tools/b/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/tools/b/c;->c:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/tools/b/c;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/tools/b/c;->d:Lcom/etermax/tools/b/c;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/etermax/tools/b/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/b/c;->d:Lcom/etermax/tools/b/c;

    .line 27
    sget-object v1, Lcom/etermax/tools/b/c;->d:Lcom/etermax/tools/b/c;

    invoke-direct {v1}, Lcom/etermax/tools/b/c;->b()V

    .line 28
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/tools/b/c;->d:Lcom/etermax/tools/b/c;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/tools/b/c;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/tools/b/c;->a:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/etermax/tools/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/b/c;->b:Lcom/etermax/tools/f/a;

    .line 36
    invoke-virtual {p0}, Lcom/etermax/tools/b/c;->a()V

    .line 37
    return-void
.end method
