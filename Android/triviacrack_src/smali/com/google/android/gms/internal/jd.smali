.class final Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/jb;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ik;

.field public final e:Lcom/google/android/gms/internal/ew;

.field public f:Lcom/google/android/gms/internal/o;

.field public g:Lcom/google/android/gms/internal/fo;

.field public h:Lcom/google/android/gms/internal/am;

.field public i:Lcom/google/android/gms/internal/fg;

.field public j:Lcom/google/android/gms/internal/fh;

.field public k:Lcom/google/android/gms/internal/y;

.field public l:Lcom/google/android/gms/internal/du;

.field public m:Lcom/google/android/gms/internal/dh;

.field public n:Lcom/google/android/gms/internal/dc;

.field public o:Lcom/google/android/gms/internal/fm;

.field public p:Z

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/ew;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/jd;->o:Lcom/google/android/gms/internal/fm;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jd;->p:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/jd;->q:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iput-object p3, p0, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    new-instance v0, Lcom/google/android/gms/internal/ik;

    new-instance v1, Lcom/google/android/gms/internal/jc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/android/gms/internal/jd;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/gw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jd;->d:Lcom/google/android/gms/internal/ik;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/jb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget v1, p2, Lcom/google/android/gms/internal/am;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget v1, p2, Lcom/google/android/gms/internal/am;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->q:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/jd;->q:Ljava/util/HashSet;

    return-void
.end method
