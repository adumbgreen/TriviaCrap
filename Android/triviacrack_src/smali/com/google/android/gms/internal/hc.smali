.class public final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field private final a:Lcom/google/android/gms/common/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/d;->m_()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/hc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    check-cast p1, Lcom/google/android/gms/internal/hc;

    iget-object v1, p1, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/common/d;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
