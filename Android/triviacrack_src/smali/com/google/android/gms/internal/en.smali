.class public final Lcom/google/android/gms/internal/en;
.super Lcom/google/android/gms/internal/em;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/el;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/em;-><init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/el;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/en;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/google/android/gms/internal/et;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ag;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/en;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/au;

    invoke-direct {v2}, Lcom/google/android/gms/internal/au;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ff;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ff;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/fe;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    return-object v0
.end method
