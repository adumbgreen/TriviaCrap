.class public abstract Lcom/google/android/gms/internal/fo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fo$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fo$1;-><init>(Lcom/google/android/gms/internal/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fo;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fo;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/fp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fo;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
