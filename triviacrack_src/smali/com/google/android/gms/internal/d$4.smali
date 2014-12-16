.class Lcom/google/android/gms/internal/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/d;->b(Lcom/google/android/gms/internal/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/d$4;->a:Lcom/google/android/gms/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fz;Ljava/util/Map;)V
    .locals 2
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

    const-string v0, "pingType"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unloadPing"

    const-string v1, "pingType"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/d$4;->a:Lcom/google/android/gms/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/d$4;->a:Lcom/google/android/gms/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/d;->a(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/d;->c(Lcom/google/android/gms/internal/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistered GMSG handlers for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$4;->a:Lcom/google/android/gms/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/d;->b(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
