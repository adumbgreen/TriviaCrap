.class public final Lcom/google/android/gms/internal/hf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# instance fields
.field private final a:Lcom/google/android/gms/common/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hf;->a:Lcom/google/android/gms/common/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->a:Lcom/google/android/gms/common/e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/e;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/hf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->a:Lcom/google/android/gms/common/e;

    check-cast p1, Lcom/google/android/gms/internal/hf;

    iget-object v1, p1, Lcom/google/android/gms/internal/hf;->a:Lcom/google/android/gms/common/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hf;->a:Lcom/google/android/gms/common/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
