.class public final Lcom/etermax/preguntados/ui/d/j;
.super Lcom/etermax/preguntados/ui/d/i;
.source "SourceFile"


# static fields
.field private static b:Lcom/etermax/preguntados/ui/d/j;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/i;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/preguntados/ui/d/j;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;
    .locals 3
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/etermax/preguntados/ui/d/j;->b:Lcom/etermax/preguntados/ui/d/j;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/etermax/preguntados/ui/d/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/ui/d/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/ui/d/j;->b:Lcom/etermax/preguntados/ui/d/j;

    .line 26
    sget-object v1, Lcom/etermax/preguntados/ui/d/j;->b:Lcom/etermax/preguntados/ui/d/j;

    invoke-direct {v1}, Lcom/etermax/preguntados/ui/d/j;->a()V

    .line 27
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/d/j;->b:Lcom/etermax/preguntados/ui/d/j;

    return-object v0
.end method
