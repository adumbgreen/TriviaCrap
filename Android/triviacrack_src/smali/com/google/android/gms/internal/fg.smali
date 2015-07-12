.class public final Lcom/google/android/gms/internal/fg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/aj;

.field public final b:Lcom/google/android/gms/internal/fz;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Lorg/json/JSONObject;

.field public final k:Z

.field public final l:Lcom/google/android/gms/internal/aw;

.field public final m:Lcom/google/android/gms/internal/bj;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/google/android/gms/internal/ay;

.field public final p:Lcom/google/android/gms/internal/ba;

.field public final q:J

.field public final r:Lcom/google/android/gms/internal/am;

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/fz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bj;Ljava/lang/String;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ba;JLcom/google/android/gms/internal/am;JJJLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aj;",
            "Lcom/google/android/gms/internal/fz;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/aw;",
            "Lcom/google/android/gms/internal/bj;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ay;",
            "Lcom/google/android/gms/internal/ba;",
            "J",
            "Lcom/google/android/gms/internal/am;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    iput-object p2, p0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/fg;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/fg;->d:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/fg;->e:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/fg;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/fg;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/fg;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/fg;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/fg;->k:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/fg;->l:Lcom/google/android/gms/internal/aw;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->p:Lcom/google/android/gms/internal/ba;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fg;->q:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/fg;->s:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/fg;->t:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/fg;->u:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->v:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->j:Lorg/json/JSONObject;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
