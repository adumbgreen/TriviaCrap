.class Lcom/google/android/gms/internal/eg$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/eg;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ei;

.field final synthetic b:Lcom/google/android/gms/internal/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    iput-object p2, p0, Lcom/google/android/gms/internal/eg$4;->a:Lcom/google/android/gms/internal/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->a(Lcom/google/android/gms/internal/eg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->c(Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/dv;->e:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->d(Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/gc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$4;->a:Lcom/google/android/gms/internal/ei;

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$4;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v2}, Lcom/google/android/gms/internal/eg;->c(Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/dv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/dv;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
