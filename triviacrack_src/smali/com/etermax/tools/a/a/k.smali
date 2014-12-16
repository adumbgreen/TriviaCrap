.class public final Lcom/etermax/tools/a/a/k;
.super Lcom/etermax/tools/a/a/j;
.source "SourceFile"


# static fields
.field private static c:Lcom/etermax/tools/a/a/k;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/tools/a/a/k;->b:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;
    .locals 3
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/etermax/tools/a/a/k;->c:Lcom/etermax/tools/a/a/k;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/etermax/tools/a/a/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/a/a/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/a/a/k;->c:Lcom/etermax/tools/a/a/k;

    .line 26
    sget-object v1, Lcom/etermax/tools/a/a/k;->c:Lcom/etermax/tools/a/a/k;

    invoke-direct {v1}, Lcom/etermax/tools/a/a/k;->d()V

    .line 27
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/etermax/tools/a/a/k;->c:Lcom/etermax/tools/a/a/k;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/tools/a/a/k;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/tools/a/a/k;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/k;->a()V

    .line 35
    return-void
.end method
