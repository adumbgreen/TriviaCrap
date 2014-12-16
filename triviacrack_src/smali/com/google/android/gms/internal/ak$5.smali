.class final Lcom/google/android/gms/internal/ak$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ak;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fz;->d()Lcom/google/android/gms/internal/bx;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "A GMSG tried to use a custom close button on something that wasn\'t an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "1"

    const-string v2, "custom_close"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bx;->b(Z)V

    goto :goto_0
.end method
