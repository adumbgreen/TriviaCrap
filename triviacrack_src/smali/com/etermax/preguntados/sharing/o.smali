.class public final Lcom/etermax/preguntados/sharing/o;
.super Lcom/etermax/preguntados/sharing/m;
.source "SourceFile"


# static fields
.field private static c:Lcom/etermax/preguntados/sharing/o;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/m;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/preguntados/sharing/o;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/preguntados/sharing/o;->c:Lcom/etermax/preguntados/sharing/o;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/etermax/preguntados/sharing/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/sharing/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/sharing/o;->c:Lcom/etermax/preguntados/sharing/o;

    .line 27
    sget-object v1, Lcom/etermax/preguntados/sharing/o;->c:Lcom/etermax/preguntados/sharing/o;

    invoke-direct {v1}, Lcom/etermax/preguntados/sharing/o;->a()V

    .line 28
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/sharing/o;->c:Lcom/etermax/preguntados/sharing/o;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/o;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/o;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/sharing/o;Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/etermax/preguntados/sharing/m;->b(Lcom/etermax/preguntados/sharing/ShareView;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 6
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/etermax/preguntados/sharing/o$1;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/sharing/o$1;-><init>(Lcom/etermax/preguntados/sharing/o;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/preguntados/sharing/ShareView;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 53
    return-void
.end method
