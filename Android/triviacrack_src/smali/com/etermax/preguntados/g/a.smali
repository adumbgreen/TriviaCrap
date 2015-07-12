.class public Lcom/etermax/preguntados/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field private G:Landroid/util/SparseIntArray;

.field private H:Landroid/media/SoundPool;

.field private I:Landroid/media/MediaPlayer;

.field a:Lcom/etermax/gamescommon/e;

.field b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/etermax/n;->sfx_correcto:I

    sput v0, Lcom/etermax/preguntados/g/a;->c:I

    .line 180
    sget v0, Lcom/etermax/n;->sfx_incorrecto:I

    sput v0, Lcom/etermax/preguntados/g/a;->d:I

    .line 181
    sget v0, Lcom/etermax/n;->sfx_ruleta_giro:I

    sput v0, Lcom/etermax/preguntados/g/a;->e:I

    .line 182
    sget v0, Lcom/etermax/n;->sfx_pregunta_aparicion:I

    sput v0, Lcom/etermax/preguntados/g/a;->f:I

    .line 183
    sget v0, Lcom/etermax/n;->sfx_pregunta_salida:I

    sput v0, Lcom/etermax/preguntados/g/a;->g:I

    .line 184
    sget v0, Lcom/etermax/n;->sfx_cuentaregresiva:I

    sput v0, Lcom/etermax/preguntados/g/a;->h:I

    .line 185
    sget v0, Lcom/etermax/n;->sfx_finalizatiempo:I

    sput v0, Lcom/etermax/preguntados/g/a;->i:I

    .line 186
    sget v0, Lcom/etermax/n;->sfx_powerup_bomba:I

    sput v0, Lcom/etermax/preguntados/g/a;->j:I

    .line 187
    sget v0, Lcom/etermax/n;->sfx_powerup_cambiopregunta:I

    sput v0, Lcom/etermax/preguntados/g/a;->k:I

    .line 188
    sget v0, Lcom/etermax/n;->sfx_powerup_doblechance:I

    sput v0, Lcom/etermax/preguntados/g/a;->l:I

    .line 189
    sget v0, Lcom/etermax/n;->sfx_powerup_tiempo:I

    sput v0, Lcom/etermax/preguntados/g/a;->m:I

    .line 190
    sget v0, Lcom/etermax/n;->sfx_tiro_extra:I

    sput v0, Lcom/etermax/preguntados/g/a;->n:I

    .line 191
    sget v0, Lcom/etermax/n;->sfx_duelo_gano:I

    sput v0, Lcom/etermax/preguntados/g/a;->o:I

    .line 192
    sget v0, Lcom/etermax/n;->sfx_duelo_perdio:I

    sput v0, Lcom/etermax/preguntados/g/a;->p:I

    .line 193
    sget v0, Lcom/etermax/n;->sfx_partida_gano:I

    sput v0, Lcom/etermax/preguntados/g/a;->q:I

    .line 194
    sget v0, Lcom/etermax/n;->sfx_partida_perdio:I

    sput v0, Lcom/etermax/preguntados/g/a;->r:I

    .line 195
    sget v0, Lcom/etermax/n;->sfx_cargapunto:I

    sput v0, Lcom/etermax/preguntados/g/a;->s:I

    .line 196
    sget v0, Lcom/etermax/n;->sfx_trash:I

    sput v0, Lcom/etermax/preguntados/g/a;->t:I

    .line 197
    sget v0, Lcom/etermax/n;->sfx_corona:I

    sput v0, Lcom/etermax/preguntados/g/a;->u:I

    .line 198
    sget v0, Lcom/etermax/n;->sfx_categoria:I

    sput v0, Lcom/etermax/preguntados/g/a;->v:I

    .line 199
    sget v0, Lcom/etermax/n;->sfx_aviso:I

    sput v0, Lcom/etermax/preguntados/g/a;->w:I

    .line 200
    sget v0, Lcom/etermax/n;->sfx_chat:I

    sput v0, Lcom/etermax/preguntados/g/a;->x:I

    .line 201
    sget v0, Lcom/etermax/n;->sfx_inicioapp:I

    sput v0, Lcom/etermax/preguntados/g/a;->y:I

    .line 202
    sget v0, Lcom/etermax/n;->sfx_play:I

    sput v0, Lcom/etermax/preguntados/g/a;->z:I

    .line 203
    sget v0, Lcom/etermax/n;->sfx_oponentealeatorio:I

    sput v0, Lcom/etermax/preguntados/g/a;->A:I

    .line 204
    sget v0, Lcom/etermax/n;->sfx_nocoins:I

    sput v0, Lcom/etermax/preguntados/g/a;->B:I

    .line 205
    sget v0, Lcom/etermax/n;->sfx_send_message:I

    sput v0, Lcom/etermax/preguntados/g/a;->C:I

    .line 206
    sget v0, Lcom/etermax/n;->sfx_lift:I

    sput v0, Lcom/etermax/preguntados/g/a;->D:I

    .line 207
    sget v0, Lcom/etermax/n;->sfx_duelo_grupal_victoria:I

    sput v0, Lcom/etermax/preguntados/g/a;->E:I

    .line 208
    sget v0, Lcom/etermax/n;->sfx_duelo_grupal_derrota:I

    sput v0, Lcom/etermax/preguntados/g/a;->F:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    .line 39
    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    .line 40
    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->I:Landroid/media/MediaPlayer;

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 172
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 175
    :cond_0
    return-void
.end method

.method private a(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 168
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/g/a;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/g/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/g/a;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/g/a;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etermax/preguntados/g/a$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/g/a$1;-><init>(Lcom/etermax/preguntados/g/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->c:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->c:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->d:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->d:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->e:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->e:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->f:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->f:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->g:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->g:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->h:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->h:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->i:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->i:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->j:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->j:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->k:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->k:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->l:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->l:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->m:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->m:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->n:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->n:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->o:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->o:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->p:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->p:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->q:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->q:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->r:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->r:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->w:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->w:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->s:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->s:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->t:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->t:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->u:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->u:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->v:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->v:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->z:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->z:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->A:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->A:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->B:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->B:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->x:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->x:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->C:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->C:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->y:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->y:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->D:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->D:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->E:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->E:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    sget v1, Lcom/etermax/preguntados/g/a;->F:I

    iget-object v2, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/preguntados/g/a;->F:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/etermax/preguntados/g/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/g/a$2;-><init>(Lcom/etermax/preguntados/g/a;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    .line 48
    invoke-direct {p0}, Lcom/etermax/preguntados/g/a;->c()V

    .line 50
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->a:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->d:Lcom/etermax/gamescommon/g;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/etermax/preguntados/g/a;->a(III)V

    .line 104
    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->H:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/etermax/preguntados/g/a;->G:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    int-to-float v6, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->a:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->d:Lcom/etermax/gamescommon/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->b:Landroid/content/Context;

    sget v1, Lcom/etermax/preguntados/g/a;->y:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/g/a;->I:Landroid/media/MediaPlayer;

    .line 139
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->I:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/etermax/preguntados/g/a;->e()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/g/a;->I:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/g/a;->a(Landroid/media/MediaPlayer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method
