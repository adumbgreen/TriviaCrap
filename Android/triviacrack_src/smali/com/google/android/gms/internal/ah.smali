.class public final Lcom/google/android/gms/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/al;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ah;->a:Lcom/google/android/gms/internal/ai;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fz;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "App event with no name parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->a:Lcom/google/android/gms/internal/ai;

    const-string v1, "info"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
