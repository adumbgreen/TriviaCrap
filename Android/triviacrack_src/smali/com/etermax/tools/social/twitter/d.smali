.class public final Lcom/etermax/tools/social/twitter/d;
.super Lcom/etermax/tools/social/twitter/a;
.source "SourceFile"


# static fields
.field private static d:Lcom/etermax/tools/social/twitter/d;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/d;->c:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/tools/social/twitter/d;
    .locals 3
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/etermax/tools/social/twitter/d;->d:Lcom/etermax/tools/social/twitter/d;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/etermax/tools/social/twitter/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/social/twitter/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/social/twitter/d;->d:Lcom/etermax/tools/social/twitter/d;

    .line 26
    sget-object v1, Lcom/etermax/tools/social/twitter/d;->d:Lcom/etermax/tools/social/twitter/d;

    invoke-direct {v1}, Lcom/etermax/tools/social/twitter/d;->c()V

    .line 27
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/etermax/tools/social/twitter/d;->d:Lcom/etermax/tools/social/twitter/d;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/d;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/d;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/d;->a()V

    .line 35
    return-void
.end method
