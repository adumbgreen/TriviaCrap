.class public final Lcom/etermax/tools/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/tools/d/a;

.field private final b:Lcom/etermax/tools/d/d;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/etermax/tools/d/b;->b:Lcom/etermax/tools/d/d;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/d;Lcom/etermax/tools/d/a$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/d/b;-><init>(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/d;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/d/b;)Lcom/etermax/tools/d/d;
    .locals 1
    .parameter

    .prologue
    .line 774
    iget-object v0, p0, Lcom/etermax/tools/d/b;->b:Lcom/etermax/tools/d/d;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/tools/d/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/etermax/tools/d/b;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .parameter

    .prologue
    .line 815
    iget-object v1, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/d/b;->b:Lcom/etermax/tools/d/d;

    invoke-static {v0}, Lcom/etermax/tools/d/d;->a(Lcom/etermax/tools/d/d;)Lcom/etermax/tools/d/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 819
    :cond_0
    :try_start_1
    new-instance v0, Lcom/etermax/tools/d/c;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/etermax/tools/d/b;->b:Lcom/etermax/tools/d/d;

    invoke-virtual {v3, p1}, Lcom/etermax/tools/d/d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/etermax/tools/d/c;-><init>(Lcom/etermax/tools/d/b;Ljava/io/OutputStream;Lcom/etermax/tools/d/a$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/etermax/tools/d/b;->c:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/etermax/tools/d/a;->a(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/b;Z)V

    .line 843
    iget-object v0, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    iget-object v1, p0, Lcom/etermax/tools/d/b;->b:Lcom/etermax/tools/d/d;

    invoke-static {v1}, Lcom/etermax/tools/d/d;->c(Lcom/etermax/tools/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/d/a;->c(Ljava/lang/String;)Z

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/etermax/tools/d/a;->a(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/b;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/etermax/tools/d/b;->a:Lcom/etermax/tools/d/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/etermax/tools/d/a;->a(Lcom/etermax/tools/d/a;Lcom/etermax/tools/d/b;Z)V

    .line 855
    return-void
.end method
