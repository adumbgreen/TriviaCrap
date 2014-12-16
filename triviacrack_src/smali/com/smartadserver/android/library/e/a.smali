.class public Lcom/smartadserver/android/library/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/smartadserver/android/library/e/a;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ".ready"

    sput-object v0, Lcom/smartadserver/android/library/e/a;->a:Ljava/lang/String;

    .line 36
    const-string v0, ".temp"

    sput-object v0, Lcom/smartadserver/android/library/e/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->d:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SmartAdServerCache"

    const-string v2, "placementToCurrentInsertionID.bin"

    invoke-static {v0, v1, v2}, Lcom/smartadserver/android/library/h/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SmartAdServerCache"

    const-string v2, "insertionIdToPlacements.bin"

    invoke-static {v0, v1, v2}, Lcom/smartadserver/android/library/h/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    .line 84
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    .line 88
    :cond_1
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;
    .locals 4
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SmartAdServerCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SasAdElement.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/smartadserver/android/library/h/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/d/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/smartadserver/android/library/e/a;
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/smartadserver/android/library/e/a;->c:Lcom/smartadserver/android/library/e/a;

    if-nez v0, :cond_2

    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    const-string v1, "Can not get cache manager instance: associated context is null"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lcom/smartadserver/android/library/e/a;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartadserver/android/library/e/a;->c:Lcom/smartadserver/android/library/e/a;

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartadserver/android/library/e/a;->c:Lcom/smartadserver/android/library/e/a;

    return-object v0

    .line 50
    :cond_2
    sget-object v0, Lcom/smartadserver/android/library/e/a;->c:Lcom/smartadserver/android/library/e/a;

    invoke-direct {v0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/smartadserver/android/library/e/a;->c:Lcom/smartadserver/android/library/e/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/smartadserver/android/library/e/a;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private a(Lcom/smartadserver/android/library/d/a;Lcom/smartadserver/android/library/d/a;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    .line 326
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 327
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 328
    :goto_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/smartadserver/android/library/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 329
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->j()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p2}, Lcom/smartadserver/android/library/d/a;->j()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 332
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    move v1, v2

    .line 335
    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 327
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 352
    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SmartAdServerCache"

    invoke-static {v0, p1, v1, p2}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    .line 282
    if-eqz p2, :cond_0

    if-ne p2, p3, :cond_0

    .line 287
    :cond_0
    if-ne p2, p3, :cond_1

    if-nez p3, :cond_6

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 291
    if-eqz p2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 294
    :cond_2
    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    if-eqz p3, :cond_7

    .line 300
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 301
    if-nez v0, :cond_4

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v3, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 306
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :goto_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    const-string v4, "SmartAdServerCache"

    const-string v5, "insertionIdToPlacements.bin"

    invoke-static {v0, v3, v4, v5}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 316
    :goto_1
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    const-string v4, "SmartAdServerCache"

    const-string v5, "placementToCurrentInsertionID.bin"

    invoke-static {v0, v3, v4, v5}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    move v1, v0

    .line 320
    :cond_6
    return v1

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    move v0, v2

    .line 315
    goto :goto_1

    :cond_9
    move v0, v2

    .line 316
    goto :goto_2
.end method

.method private c(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/e/a;->a(ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/d/a;)V

    .line 105
    return-void
.end method

.method public declared-synchronized a(ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/d/a;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    monitor-enter p0

    const/4 v1, 0x0

    .line 120
    if-eqz p5, :cond_11

    .line 121
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v1

    .line 127
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/e/a;->a(Z)V

    .line 129
    const/4 v3, 0x0

    .line 131
    invoke-direct/range {p0 .. p4}, Lcom/smartadserver/android/library/e/a;->c(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    if-eqz v1, :cond_3

    .line 139
    invoke-direct {p0, v1}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;

    move-result-object v2

    .line 140
    if-nez v2, :cond_0

    .line 142
    const-string v2, ".ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;

    move-result-object v2

    .line 150
    :cond_0
    :goto_1
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/smartadserver/android/library/e/a;->a(Lcom/smartadserver/android/library/d/a;Lcom/smartadserver/android/library/d/a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 151
    const/4 v2, 0x0

    .line 155
    if-eqz v4, :cond_c

    .line 156
    const/4 v4, 0x1

    .line 160
    if-eqz p5, :cond_10

    .line 166
    :try_start_3
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v3

    const-string v7, "SmartAdServerCache"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 169
    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->c()Ljava/lang/String;

    move-result-object v8

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/smartadserver/android/library/d/a;->b(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 180
    if-nez v3, :cond_4

    .line 181
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not get html contents from script URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-static {v2}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 263
    :cond_1
    if-eqz p5, :cond_2

    .line 264
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    :try_start_5
    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_2
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 119
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 144
    :cond_3
    if-eqz p5, :cond_0

    .line 146
    invoke-direct {p0, v5}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v2

    .line 147
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 184
    :cond_4
    :try_start_9
    invoke-static {v3}, Lcom/smartadserver/android/library/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 185
    if-nez v9, :cond_5

    .line 186
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not determine cache manifest filename from html contents from script URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_5
    invoke-static {v3}, Lcom/smartadserver/android/library/e/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/smartadserver/android/library/d/a;->a(Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/e/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v11, Lcom/smartadserver/android/library/e/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 200
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 202
    const/4 v2, 0x0

    :goto_3
    :try_start_a
    array-length v12, v9

    if-ge v2, v12, :cond_7

    .line 205
    aget-object v12, v9, v2

    const-string v13, " "

    const-string v14, "%20F"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v9, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 210
    if-nez v12, :cond_6

    .line 211
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not download file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v9, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :catchall_3
    move-exception v1

    move-object v2, v3

    goto/16 :goto_2

    .line 202
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 216
    :cond_7
    const-string v2, "\"mraid.js\""

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 217
    sget-object v2, Lcom/smartadserver/android/library/controller/mraid/a;->a:Ljava/lang/String;

    .line 218
    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 221
    if-nez v8, :cond_8

    .line 222
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not download mraid bridge at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_8
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v8, "SmartAdServerCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "SasAdElement.bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-static {v2, v0, v8, v9}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 229
    if-nez v2, :cond_9

    .line 230
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    const-string v2, "Can not write ad element in cache"

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_9
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/smartadserver/android/library/e/a;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 238
    invoke-static {v2}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 241
    :cond_a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 242
    if-nez v2, :cond_b

    .line 243
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    const-string v2, "Can not rename temporary insertion folder in cache"

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_b
    move-object v2, v3

    move v3, v4

    .line 249
    :cond_c
    :goto_4
    if-eqz v3, :cond_d

    .line 251
    :try_start_b
    invoke-direct {p0, v6, v1, v5}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 252
    if-nez v1, :cond_d

    .line 253
    new-instance v1, Lcom/smartadserver/android/library/a/a;

    const-string v3, "Can not save insertion tables in cache"

    invoke-direct {v1, v3}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 259
    :cond_d
    if-eqz v2, :cond_e

    :try_start_c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    invoke-static {v2}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 263
    :cond_e
    if-eqz p5, :cond_f

    .line 264
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 265
    :try_start_d
    iget-object v1, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    invoke-virtual/range {p5 .. p5}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 271
    :cond_f
    monitor-exit p0

    return-void

    .line 266
    :catchall_4
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_5
    move-exception v1

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_10
    move v3, v4

    goto :goto_4

    :cond_11
    move-object v5, v1

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 448
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SmartAdServerCache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 451
    new-instance v2, Lcom/smartadserver/android/library/e/a$1;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/e/a$1;-><init>(Lcom/smartadserver/android/library/e/a;)V

    .line 456
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    move v1, v0

    .line 457
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 458
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 460
    sget-object v0, Lcom/smartadserver/android/library/e/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 464
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_5

    .line 466
    :cond_1
    const/4 v0, 0x1

    .line 468
    iget-object v4, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :goto_1
    if-eqz v0, :cond_2

    .line 472
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 476
    :cond_2
    if-eqz p1, :cond_3

    .line 477
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 480
    :cond_4
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, p1

    goto :goto_1
.end method

.method public b(ILjava/lang/String;ILjava/lang/String;)Lcom/smartadserver/android/library/d/a;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 385
    .line 386
    iget-object v0, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartadserver/android/library/e/a;->c(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    if-eqz v0, :cond_5

    .line 389
    iget-object v3, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    monitor-enter v3

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/e/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "SmartAdServerCache"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 394
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/smartadserver/android/library/e/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-static {v5}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 408
    :cond_0
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 409
    if-nez v2, :cond_1

    .line 410
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    const-string v1, "could not rename a folder in cache"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 418
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/e/a;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;

    move-result-object v2

    .line 419
    if-nez v2, :cond_2

    .line 420
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    const-string v1, "could not read SASAdElement from cache"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    invoke-virtual {v2}, Lcom/smartadserver/android/library/d/a;->j()Ljava/util/Date;

    move-result-object v4

    .line 426
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 427
    invoke-virtual {v4, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gtz v4, :cond_4

    .line 429
    invoke-static {v5}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 430
    iget-object v2, p0, Lcom/smartadserver/android/library/e/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 431
    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    iget-object v4, p0, Lcom/smartadserver/android/library/e/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 438
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :goto_2
    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
