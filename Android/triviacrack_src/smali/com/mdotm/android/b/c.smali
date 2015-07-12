.class public Lcom/mdotm/android/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field private static j:Z

.field private static k:Lcom/mdotm/android/b/c;

.field private static p:I

.field private static q:Z


# instance fields
.field a:Lcom/mdotm/android/c/e;

.field private l:I

.field private m:J

.field private n:I

.field private o:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final w:I

.field private x:Landroid/content/Context;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "MdotMTempCache"

    sput-object v0, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    .line 50
    const-string v0, "PermanentCache"

    sput-object v0, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    .line 51
    const-string v0, "BannerTemp"

    sput-object v0, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    .line 52
    const-string v0, "InterstitialTemp"

    sput-object v0, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/mdotm/android/b/c;->j:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/b/c;->k:Lcom/mdotm/android/b/c;

    .line 87
    sput-boolean v1, Lcom/mdotm/android/b/c;->q:Z

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/mdotm/android/b/c;->f:I

    .line 91
    const/4 v0, 0x2

    sput v0, Lcom/mdotm/android/b/c;->g:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/mdotm/android/b/c;->h:I

    .line 93
    const/4 v0, 0x4

    sput v0, Lcom/mdotm/android/b/c;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/mdotm/android/b/c;->l:I

    .line 60
    const-wide/32 v0, 0x13f1407

    iput-wide v0, p0, Lcom/mdotm/android/b/c;->m:J

    .line 64
    const v0, 0x7ed147

    iput v0, p0, Lcom/mdotm/android/b/c;->n:I

    .line 69
    const v0, 0x4f83e7

    iput v0, p0, Lcom/mdotm/android/b/c;->o:I

    .line 95
    iput v2, p0, Lcom/mdotm/android/b/c;->r:I

    .line 96
    iput v2, p0, Lcom/mdotm/android/b/c;->s:I

    .line 97
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mdotm/android/b/c;->t:I

    .line 99
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 100
    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mdotm/android/b/c;->u:Ljava/util/concurrent/BlockingQueue;

    .line 103
    const/16 v0, 0xc8

    iput v0, p0, Lcom/mdotm/android/b/c;->w:I

    .line 124
    iput-object p2, p0, Lcom/mdotm/android/b/c;->y:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->d()V

    .line 128
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/mdotm/android/b/c;->p:I

    return v0
.end method

.method private a(Ljava/io/File;I)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 944
    const-string v0, "bla"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bla manage cache"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    if-nez p1, :cond_1

    .line 965
    :cond_0
    return p2

    .line 947
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_0

    .line 955
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 956
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 957
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    invoke-direct {p0, v2, p2}, Lcom/mdotm/android/b/c;->a(Ljava/io/File;I)I

    move-result p2

    .line 955
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 960
    :cond_2
    int-to-long v3, p2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v2, v3, v5

    long-to-int p2, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/mdotm/android/b/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;)Lcom/mdotm/android/b/c;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lcom/mdotm/android/b/c;->k:Lcom/mdotm/android/b/c;

    if-nez v0, :cond_0

    .line 114
    const-string v0, ""

    const-string v1, "**Creating new manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/mdotm/android/b/c;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/b/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mdotm/android/b/c;->k:Lcom/mdotm/android/b/c;

    .line 119
    :goto_0
    sget-object v0, Lcom/mdotm/android/b/c;->k:Lcom/mdotm/android/b/c;

    return-object v0

    .line 117
    :cond_0
    const-string v0, ""

    const-string v1, "**Using existing manager"

    invoke-static {v0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/mdotm/android/d/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 142
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->b()Z

    move-result v0

    sput-boolean v0, Lcom/mdotm/android/b/c;->q:Z

    .line 143
    sget-boolean v0, Lcom/mdotm/android/b/c;->j:Z

    if-eqz v0, :cond_12

    .line 144
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/mdotm/android/a/a;->b()I

    move-result v0

    .line 144
    sput v0, Lcom/mdotm/android/b/c;->p:I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cache location is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/mdotm/android/b/c;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    .line 148
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->e()V

    .line 153
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v4, :cond_4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(Ljava/lang/String;)Z

    .line 178
    :cond_0
    :goto_0
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-eqz v1, :cond_9

    .line 179
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v6, :cond_7

    .line 180
    sget v1, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v1}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is sd card calculating available memory is available "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    if-nez v1, :cond_1

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    const-string v0, "Cache folder doesn\'t exist on sd card"

    .line 188
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 192
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    sput v4, Lcom/mdotm/android/b/c;->p:I

    .line 194
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    sput v5, Lcom/mdotm/android/b/c;->p:I

    .line 282
    :cond_1
    :goto_1
    sget v0, Lcom/mdotm/android/b/c;->p:I

    if-eqz v0, :cond_11

    .line 284
    sget v0, Lcom/mdotm/android/b/c;->p:I

    if-ne v0, v4, :cond_e

    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 299
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v6, :cond_2

    .line 300
    sput v4, Lcom/mdotm/android/b/c;->p:I

    .line 301
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 308
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 316
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v4, :cond_10

    .line 318
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 319
    invoke-virtual {v1, v4}, Lcom/mdotm/android/a/a;->a(I)Z

    .line 328
    :cond_3
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enabled cache location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mdotm/android/b/c;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    const-string v2, " file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    :goto_5
    return-void

    .line 158
    :cond_4
    sget-boolean v1, Lcom/mdotm/android/b/c;->q:Z

    if-eqz v1, :cond_5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 169
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sd card exist is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mdotm/android/b/c;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, " clearing tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 171
    invoke-virtual {v1, v2}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 173
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_0

    .line 199
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a([Ljava/io/File;)V

    .line 201
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 203
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    sput v4, Lcom/mdotm/android/b/c;->p:I

    .line 205
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 213
    :cond_7
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v4, :cond_1

    .line 214
    sget v1, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v1}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is internal calculating available memory is available "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    if-nez v1, :cond_1

    .line 221
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    const-string v0, "Cache folder doesn\'t exist on sd card"

    .line 223
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 227
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 231
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a([Ljava/io/File;)V

    .line 233
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 235
    sget v0, Lcom/mdotm/android/b/c;->p:I

    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 244
    :cond_9
    const-string v0, "Cache is not there initializing the cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget-boolean v0, Lcom/mdotm/android/b/c;->q:Z

    if-eqz v0, :cond_c

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sd card exist is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/mdotm/android/b/c;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, v6}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location is sd card calculating available memory is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    if-eqz v0, :cond_a

    .line 254
    sput v6, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 258
    :cond_a
    invoke-direct {p0, v4}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "memory is not available on sd card checking on internal memory. is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    if-eqz v0, :cond_b

    .line 263
    sput v4, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 265
    :cond_b
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 270
    :cond_c
    invoke-direct {p0, v4}, Lcom/mdotm/android/b/c;->a(I)Z

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sd card not there checking on internal memory. is available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    if-eqz v0, :cond_d

    .line 275
    sput v4, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 277
    :cond_d
    sput v5, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_1

    .line 289
    :cond_e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    :cond_f
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 321
    :cond_10
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v6, :cond_3

    .line 322
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v6}, Lcom/mdotm/android/a/a;->a(I)Z

    goto/16 :goto_4

    .line 335
    :cond_11
    invoke-direct {p0, p1}, Lcom/mdotm/android/b/c;->b(Lcom/mdotm/android/d/a;)V

    .line 336
    invoke-virtual {p1, v5}, Lcom/mdotm/android/d/a;->a(Z)V

    goto/16 :goto_5

    .line 341
    :cond_12
    invoke-direct {p0, p1}, Lcom/mdotm/android/b/c;->b(Lcom/mdotm/android/d/a;)V

    goto/16 :goto_5
.end method

.method private a(Ljava/io/File;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file count "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget v2, p0, Lcom/mdotm/android/b/c;->l:I

    if-lt v0, v2, :cond_0

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 438
    array-length v0, v3

    new-array v4, v0, [J

    move v0, v1

    .line 440
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 457
    :try_start_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 458
    array-length v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-lt v1, v0, :cond_2

    .line 472
    :cond_0
    :goto_2
    return-void

    .line 441
    :cond_1
    aget-object v2, v3, v0

    .line 442
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 444
    :try_start_1
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :catch_0
    move-exception v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while checking file cached time "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 458
    :cond_2
    :try_start_2
    aget-object v2, v3, v1

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "searching file name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleting file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 468
    :catch_1
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 458
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private a([Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 638
    const-string v0, "Clearing cached file"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    if-eqz p1, :cond_0

    .line 640
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 650
    :cond_0
    return-void

    .line 640
    :cond_1
    aget-object v2, p1, v0

    .line 641
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mdotm/android/b/c;->a([Ljava/io/File;)V

    .line 643
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 640
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    .line 477
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->g()J

    move-result-wide v0

    .line 482
    :goto_0
    iget-wide v2, p0, Lcom/mdotm/android/b/c;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 483
    const/4 v0, 0x1

    .line 485
    :goto_1
    return v0

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->h()J

    move-result-wide v0

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 16
    .parameter

    .prologue
    .line 500
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 503
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/b/c;->p:I

    .line 504
    const/4 v1, 0x0

    .line 629
    :goto_0
    return v1

    .line 507
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 506
    invoke-static {v2}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v2

    .line 507
    invoke-virtual {v2}, Lcom/mdotm/android/a/a;->c()[Ljava/lang/String;

    move-result-object v3

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 508
    invoke-static {v2}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Lcom/mdotm/android/a/a;->d()[Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 511
    if-eqz v3, :cond_f

    if-eqz v4, :cond_f

    .line 513
    const/4 v1, 0x0

    .line 514
    if-eqz v3, :cond_1

    .line 515
    array-length v5, v3

    add-int/2addr v1, v5

    .line 517
    :cond_1
    if-eqz v2, :cond_2

    .line 518
    array-length v2, v2

    add-int/2addr v1, v2

    .line 520
    :cond_2
    array-length v2, v4

    .line 521
    if-eq v1, v2, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 526
    invoke-virtual {v1, v2}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 528
    const-string v1, "file count missmatch clearing"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mdotm/android/b/c;->a([Ljava/io/File;)V

    .line 530
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/b/c;->p:I

    .line 531
    const/4 v1, 0x0

    goto :goto_0

    .line 534
    :cond_3
    sget v1, Lcom/mdotm/android/b/c;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 545
    :goto_1
    if-eqz v3, :cond_4

    .line 546
    array-length v5, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_7

    .line 576
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 575
    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Lcom/mdotm/android/a/a;->d()[Ljava/lang/String;

    move-result-object v5

    .line 577
    if-eqz v5, :cond_5

    .line 578
    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-lt v3, v6, :cond_a

    .line 618
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 539
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 546
    :cond_7
    aget-object v6, v3, v2

    .line 547
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 550
    invoke-virtual {v1, v6}, Lcom/mdotm/android/a/a;->b(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 553
    invoke-virtual {v1, v6}, Lcom/mdotm/android/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 554
    if-eqz v7, :cond_8

    .line 555
    array-length v8, v7

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v8, :cond_9

    .line 546
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 555
    :cond_9
    aget-object v9, v7, v1

    .line 558
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v10}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v10

    .line 560
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 561
    sget v12, Lcom/mdotm/android/b/c;->p:I

    .line 559
    invoke-virtual {v10, v9, v11, v12, v6}, Lcom/mdotm/android/a/a;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 562
    :catch_0
    move-exception v9

    .line 565
    const-string v9, "Exception while delting the resources"

    .line 564
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 578
    :cond_a
    aget-object v1, v5, v3

    .line 579
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v2}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v2

    .line 583
    invoke-virtual {v2, v1}, Lcom/mdotm/android/a/a;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 584
    if-eqz v7, :cond_b

    .line 585
    array-length v8, v7

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-lt v2, v8, :cond_c

    .line 578
    :cond_b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    .line 585
    :cond_c
    aget-object v9, v7, v2

    .line 586
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 588
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 590
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 591
    invoke-virtual {v1, v9}, Lcom/mdotm/android/a/a;->b(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v9}, Lcom/mdotm/android/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 596
    array-length v11, v10

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v11, :cond_e

    .line 585
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 596
    :cond_e
    aget-object v12, v10, v1

    .line 599
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 598
    invoke-static {v13}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v13

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    .line 603
    sget v15, Lcom/mdotm/android/b/c;->p:I

    .line 600
    invoke-virtual {v13, v12, v14, v15, v9}, Lcom/mdotm/android/a/a;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 596
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 605
    :catch_1
    move-exception v12

    .line 608
    const-string v12, "Exception while delting the resources"

    .line 607
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 626
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/a/a;->b(Landroid/content/Context;)V

    .line 627
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mdotm/android/b/c;->a([Ljava/io/File;)V

    .line 628
    const/4 v1, 0x0

    sput v1, Lcom/mdotm/android/b/c;->p:I

    .line 629
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/mdotm/android/b/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mdotm/android/b/c;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/mdotm/android/d/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/mdotm/android/d/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    sget-boolean v0, Lcom/mdotm/android/b/c;->q:Z

    if-eqz v0, :cond_2

    .line 354
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    sget-object v2, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    sput v3, Lcom/mdotm/android/b/c;->p:I

    .line 367
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 369
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v3, :cond_0

    .line 370
    sput v4, Lcom/mdotm/android/b/c;->p:I

    .line 371
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 377
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 422
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/c;->a(Ljava/io/File;)V

    .line 426
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp cache location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/mdotm/android/b/c;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string v2, " file path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    return-void

    .line 362
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    sput v4, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_0

    .line 382
    :cond_3
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 387
    :cond_4
    sget-boolean v0, Lcom/mdotm/android/b/c;->q:Z

    if-eqz v0, :cond_5

    .line 388
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    sget-object v2, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    sput v3, Lcom/mdotm/android/b/c;->p:I

    .line 401
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 403
    sget v1, Lcom/mdotm/android/b/c;->p:I

    if-ne v1, v3, :cond_0

    .line 404
    sput v4, Lcom/mdotm/android/b/c;->p:I

    .line 405
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v1, "unable to create folder on sd card so creating on internal memory"

    .line 411
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1

    .line 396
    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    sput v4, Lcom/mdotm/android/b/c;->p:I

    goto/16 :goto_2

    .line 416
    :cond_6
    const-string v1, "File created "

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 659
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 660
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->c()Z

    move-result v0

    .line 663
    if-eqz v0, :cond_0

    .line 664
    const-string v1, "SD card exist and writable"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    :goto_0
    return v0

    .line 666
    :cond_0
    const-string v1, "SD card exist and not permission"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    const-string v1, "SD card exist but not writable"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_2
    const-string v1, "SD card not exist"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 681
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 682
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 683
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 688
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 689
    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/mdotm/android/b/c;->u:Ljava/util/concurrent/BlockingQueue;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 688
    iput-object v0, p0, Lcom/mdotm/android/b/c;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 690
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 896
    const-string v0, "manage cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    sget v0, Lcom/mdotm/android/b/c;->p:I

    if-eqz v0, :cond_1

    .line 901
    sget v0, Lcom/mdotm/android/b/c;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 902
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 904
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 905
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 906
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 907
    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, v0, v3}, Lcom/mdotm/android/b/c;->a(Ljava/io/File;I)I

    move-result v1

    .line 908
    iget v0, p0, Lcom/mdotm/android/b/c;->o:I

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 911
    iget-object v3, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 912
    sget-object v3, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 910
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    :goto_0
    if-le v1, v0, :cond_1

    .line 929
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    invoke-direct {p0}, Lcom/mdotm/android/b/c;->e()V

    .line 931
    :cond_0
    const-string v0, "manage cache loop"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    :cond_1
    return-void

    .line 914
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 915
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 916
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 917
    sget-object v2, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-direct {p0, v0, v3}, Lcom/mdotm/android/b/c;->a(Ljava/io/File;I)I

    move-result v1

    .line 918
    iget v0, p0, Lcom/mdotm/android/b/c;->n:I

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " manage cache size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 924
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 924
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max cache size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 926
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    sget v2, Lcom/mdotm/android/b/c;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;I)Z

    move-result v0

    .line 940
    return v0
.end method

.method private g()J
    .locals 4

    .prologue
    .line 970
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 971
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 973
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 974
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private h()J
    .locals 4

    .prologue
    .line 979
    sget-boolean v0, Lcom/mdotm/android/b/c;->q:Z

    if-eqz v0, :cond_0

    .line 980
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 981
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 983
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 984
    mul-long/2addr v0, v2

    .line 986
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/mdotm/android/c/e;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/mdotm/android/b/c;->a:Lcom/mdotm/android/c/e;

    .line 695
    return-void
.end method

.method public a(Lcom/mdotm/android/d/a;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 699
    const-string v0, "** Send request"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/mdotm/android/d/a;->c()Z

    move-result v0

    sput-boolean v0, Lcom/mdotm/android/b/c;->j:Z

    .line 703
    invoke-direct {p0, p1}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/d/a;)V

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/mdotm/android/b/c;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 706
    iget-object v6, p0, Lcom/mdotm/android/b/c;->v:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mdotm/android/b/d;

    new-instance v1, Lcom/mdotm/android/e/e;

    .line 707
    iget-object v2, p0, Lcom/mdotm/android/b/c;->x:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mdotm/android/e/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/mdotm/android/e/e;->a(Lcom/mdotm/android/d/a;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mdotm/android/b/d;-><init>(Lcom/mdotm/android/b/c;Ljava/lang/StringBuffer;Lcom/mdotm/android/d/a;J)V

    .line 706
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    const-string v0, "**Reject Exception"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 713
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    iget-object v1, p0, Lcom/mdotm/android/b/c;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 715
    :catch_1
    move-exception v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 718
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Lcom/mdotm/android/b/c;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
