.class public abstract Lcom/google/android/gms/internal/em;
.super Lcom/google/android/gms/internal/fo;


# instance fields
.field private final a:Lcom/google/android/gms/internal/dt;

.field private final b:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/el;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/em;->a:Lcom/google/android/gms/internal/dt;

    iput-object p2, p0, Lcom/google/android/gms/internal/em;->b:Lcom/google/android/gms/internal/el;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/et;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/et;->a(Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/em;->d()Lcom/google/android/gms/internal/et;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/em;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/em;->b:Lcom/google/android/gms/internal/el;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/el;->a(Lcom/google/android/gms/internal/dv;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/em;->a:Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/em;->a(Lcom/google/android/gms/internal/et;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/em;->c()V

    throw v0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/em;->c()V

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()Lcom/google/android/gms/internal/et;
.end method
