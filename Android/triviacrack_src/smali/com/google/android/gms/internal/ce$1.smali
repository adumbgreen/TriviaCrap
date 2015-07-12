.class Lcom/google/android/gms/internal/ce$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cd;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cd;

.field final synthetic b:Lcom/google/android/gms/internal/ce;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/cd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/cd;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ce$1;->b:Lcom/google/android/gms/internal/ce;

    iput-object p2, p0, Lcom/google/android/gms/internal/ce$1;->a:Lcom/google/android/gms/internal/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ce$1;->a:Lcom/google/android/gms/internal/cd;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ce$1;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ce$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ce$1;->b:Lcom/google/android/gms/internal/ce;

    invoke-static {v1}, Lcom/google/android/gms/internal/ce;->a(Lcom/google/android/gms/internal/ce;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ce$1;->b:Lcom/google/android/gms/internal/ce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ce;->b()V

    :cond_0
    return-void
.end method
