.class final Lcom/google/android/gms/internal/ce;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ce;->b:Z

    new-instance v0, Lcom/google/android/gms/internal/ce$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ce$1;-><init>(Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/internal/cd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ce;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ce;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ce;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ce;->b:Z

    sget-object v0, Lcom/google/android/gms/internal/fw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ce;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/fw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ce;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
