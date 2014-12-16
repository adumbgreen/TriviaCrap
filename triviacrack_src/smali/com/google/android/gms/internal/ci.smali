.class public final Lcom/google/android/gms/internal/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cb;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/cf;

.field public final c:Lcom/google/android/gms/internal/iz;

.field public final d:Lcom/google/android/gms/internal/cc;

.field public final e:Lcom/google/android/gms/internal/fz;

.field public final f:Lcom/google/android/gms/internal/ai;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/ch;

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/ew;

.field public final o:Lcom/google/android/gms/internal/an;

.field public final p:Ljava/lang/String;

.field public final q:Lcom/google/android/gms/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ci;->CREATOR:Lcom/google/android/gms/internal/cb;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/cf;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/internal/w;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    invoke-static {p3}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    invoke-static {p4}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    invoke-static {p5}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    invoke-static {p6}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ai;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object p7, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ch;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iput p11, p0, Lcom/google/android/gms/internal/ci;->k:I

    iput p12, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/ew;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ci;->k:I

    iput v2, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILjava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/an;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iput p7, p0, Lcom/google/android/gms/internal/ci;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iput-object p10, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/an;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object p9, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iput p7, p0, Lcom/google/android/gms/internal/ci;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iput-object p11, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ILcom/google/android/gms/internal/ew;Ljava/lang/String;Lcom/google/android/gms/internal/w;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iput p5, p0, Lcom/google/android/gms/internal/ci;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    iput-object p7, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILcom/google/android/gms/internal/ew;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ci;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->b:Lcom/google/android/gms/internal/cf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ci;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    iput p6, p0, Lcom/google/android/gms/internal/ci;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ci;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ci;->n:Lcom/google/android/gms/internal/ew;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->q:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ci;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ci;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/ci;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->c:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->d:Lcom/google/android/gms/internal/cc;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->e:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->f:Lcom/google/android/gms/internal/ai;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->o:Lcom/google/android/gms/internal/an;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method f()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->j:Lcom/google/android/gms/internal/ch;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/ci;Landroid/os/Parcel;I)V

    return-void
.end method
