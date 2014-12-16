.class Lcom/google/android/gms/internal/eg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/eg;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fg;

.field final synthetic b:Lcom/google/android/gms/internal/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/fg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eg$2;->b:Lcom/google/android/gms/internal/eg;

    iput-object p2, p0, Lcom/google/android/gms/internal/eg$2;->a:Lcom/google/android/gms/internal/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$2;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->a(Lcom/google/android/gms/internal/eg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$2;->b:Lcom/google/android/gms/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->b(Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/ef;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$2;->a:Lcom/google/android/gms/internal/fg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/fg;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
