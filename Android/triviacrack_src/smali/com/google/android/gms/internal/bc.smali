.class public final Lcom/google/android/gms/internal/bc;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/aw;

.field public final c:Lcom/google/android/gms/internal/bj;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/ba;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bj;Ljava/lang/String;Lcom/google/android/gms/internal/ba;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bj;Ljava/lang/String;Lcom/google/android/gms/internal/ba;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bc;->b:Lcom/google/android/gms/internal/aw;

    iput-object p2, p0, Lcom/google/android/gms/internal/bc;->c:Lcom/google/android/gms/internal/bj;

    iput-object p3, p0, Lcom/google/android/gms/internal/bc;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bc;->e:Lcom/google/android/gms/internal/ba;

    iput p5, p0, Lcom/google/android/gms/internal/bc;->a:I

    return-void
.end method
