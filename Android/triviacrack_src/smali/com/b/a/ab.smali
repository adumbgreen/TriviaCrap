.class public Lcom/b/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/b/a/o;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/b/a/e;

.field private e:Lcom/b/a/ad;

.field private f:Lcom/b/a/af;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    if-nez p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ab;->a:Landroid/content/Context;

    .line 499
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/aa;
    .locals 17

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/ab;->a:Landroid/content/Context;

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/ab;->b:Lcom/b/a/o;

    if-nez v1, :cond_0

    .line 596
    invoke-static {v2}, Lcom/b/a/au;->a(Landroid/content/Context;)Lcom/b/a/o;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/b/a/ab;->b:Lcom/b/a/o;

    .line 598
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/ab;->d:Lcom/b/a/e;

    if-nez v1, :cond_1

    .line 599
    new-instance v1, Lcom/b/a/u;

    invoke-direct {v1, v2}, Lcom/b/a/u;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/b/a/ab;->d:Lcom/b/a/e;

    .line 601
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/ab;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 602
    new-instance v1, Lcom/b/a/ah;

    invoke-direct {v1}, Lcom/b/a/ah;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/b/a/ab;->c:Ljava/util/concurrent/ExecutorService;

    .line 604
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/ab;->f:Lcom/b/a/af;

    if-nez v1, :cond_3

    .line 605
    sget-object v1, Lcom/b/a/af;->a:Lcom/b/a/af;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/b/a/ab;->f:Lcom/b/a/af;

    .line 608
    :cond_3
    new-instance v7, Lcom/b/a/am;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/ab;->d:Lcom/b/a/e;

    invoke-direct {v7, v1}, Lcom/b/a/am;-><init>(Lcom/b/a/e;)V

    .line 610
    new-instance v1, Lcom/b/a/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/ab;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/b/a/aa;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/ab;->b:Lcom/b/a/o;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/b/a/ab;->d:Lcom/b/a/e;

    invoke-direct/range {v1 .. v7}, Lcom/b/a/k;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/b/a/o;Lcom/b/a/e;Lcom/b/a/am;)V

    .line 612
    new-instance v8, Lcom/b/a/aa;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/b/a/ab;->d:Lcom/b/a/e;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/ab;->e:Lcom/b/a/ad;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/b/a/ab;->f:Lcom/b/a/af;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/b/a/ab;->g:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/b/a/ab;->h:Z

    move/from16 v16, v0

    move-object v9, v2

    move-object v10, v1

    move-object v14, v7

    invoke-direct/range {v8 .. v16}, Lcom/b/a/aa;-><init>(Landroid/content/Context;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/ad;Lcom/b/a/af;Lcom/b/a/am;ZZ)V

    return-object v8
.end method
