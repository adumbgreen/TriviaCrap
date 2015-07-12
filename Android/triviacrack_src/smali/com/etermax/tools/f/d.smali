.class public final Lcom/etermax/tools/f/d;
.super Lcom/etermax/tools/f/a;
.source "SourceFile"


# static fields
.field private static c:Lcom/etermax/tools/f/d;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/tools/f/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/tools/f/d;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/tools/f/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/b/c;->c(Landroid/content/Context;)Lcom/etermax/tools/f/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/f/d;->a:Lcom/etermax/tools/f/b/a;

    .line 35
    invoke-virtual {p0}, Lcom/etermax/tools/f/d;->a()V

    .line 36
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/etermax/tools/f/d;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/tools/f/d;->c:Lcom/etermax/tools/f/d;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/etermax/tools/f/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/f/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/f/d;->c:Lcom/etermax/tools/f/d;

    .line 27
    sget-object v1, Lcom/etermax/tools/f/d;->c:Lcom/etermax/tools/f/d;

    invoke-direct {v1}, Lcom/etermax/tools/f/d;->b()V

    .line 28
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/tools/f/d;->c:Lcom/etermax/tools/f/d;

    return-object v0
.end method
