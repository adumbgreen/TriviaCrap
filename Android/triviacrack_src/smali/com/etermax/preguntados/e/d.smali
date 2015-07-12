.class public final Lcom/etermax/preguntados/e/d;
.super Lcom/etermax/preguntados/e/c;
.source "SourceFile"


# static fields
.field private static f:Lcom/etermax/preguntados/e/d;


# instance fields
.field private e:Landroid/content/Context;

.field private g:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/e/c;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/e/d;->g:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/etermax/preguntados/e/d;->e:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;
    .locals 3
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/etermax/preguntados/e/d;->f:Lcom/etermax/preguntados/e/d;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/etermax/preguntados/e/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/e/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/e/d;->f:Lcom/etermax/preguntados/e/d;

    .line 32
    sget-object v1, Lcom/etermax/preguntados/e/d;->f:Lcom/etermax/preguntados/e/d;

    invoke-direct {v1}, Lcom/etermax/preguntados/e/d;->d()V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/e/d;->f:Lcom/etermax/preguntados/e/d;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/e/d;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/e/d;Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/e/c;->a(Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/e/d;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/e/d;->a:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/e/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/e/d;->b:Lcom/etermax/tools/j/a;

    .line 41
    invoke-virtual {p0}, Lcom/etermax/preguntados/e/d;->a()V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/etermax/preguntados/e/d$2;

    const-string v2, "image_task_id"

    const/4 v3, 0x0

    const-string v4, "md_serial_task"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/e/d$2;-><init>(Lcom/etermax/preguntados/e/d;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/e/d;->g:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/e/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/preguntados/e/d$1;-><init>(Lcom/etermax/preguntados/e/d;Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
