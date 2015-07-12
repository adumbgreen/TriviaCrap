.class Lcom/mdotm/android/vast/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field final synthetic k:Lcom/mdotm/android/vast/f;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/vast/f;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->e:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->f:Z

    .line 205
    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->g:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->h:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->i:Z

    .line 206
    iput-boolean v0, p0, Lcom/mdotm/android/vast/g;->j:Z

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/f;->a(Lcom/mdotm/android/vast/f;Ljava/util/Timer;)V

    .line 229
    const/4 v2, 0x0

    .line 230
    const/16 v4, 0x3e8

    .line 232
    iget-object v0, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->b(Lcom/mdotm/android/vast/f;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/g$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/g$1;-><init>(Lcom/mdotm/android/vast/g;)V

    .line 270
    int-to-long v2, v2

    int-to-long v4, v4

    .line 232
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 271
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->a(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/g;

    move-result-object v0

    iput p1, v0, Lcom/mdotm/android/vast/g;->a:I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared Duration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    invoke-static {v1}, Lcom/mdotm/android/vast/f;->a(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/g;

    move-result-object v1

    iget v1, v1, Lcom/mdotm/android/vast/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/mdotm/android/vast/g;->a:I

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lcom/mdotm/android/vast/g;->a:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/g;->b:I

    .line 217
    iget v0, p0, Lcom/mdotm/android/vast/g;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mdotm/android/vast/g;->c:I

    .line 218
    iget v0, p0, Lcom/mdotm/android/vast/g;->a:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/g;->d:I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quarter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "half position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "three qurter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget v1, p0, Lcom/mdotm/android/vast/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/mdotm/android/vast/g;->a()V

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/vast/g;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/g;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mdotm/android/vast/g;->k:Lcom/mdotm/android/vast/f;

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->e(Lcom/mdotm/android/vast/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/g$2;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/vast/g$2;-><init>(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method
