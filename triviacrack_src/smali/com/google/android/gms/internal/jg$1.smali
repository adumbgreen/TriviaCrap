.class Lcom/google/android/gms/internal/jg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/ja;Lcom/google/android/gms/internal/jh;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ja;

.field final synthetic b:Lcom/google/android/gms/internal/jg;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ja;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/internal/ja;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/jg$1;->b:Lcom/google/android/gms/internal/jg;

    iput-object p2, p0, Lcom/google/android/gms/internal/jg$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jg$1;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jg$1;->b:Lcom/google/android/gms/internal/jg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/jg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jg$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ja;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jg$1;->b:Lcom/google/android/gms/internal/jg;

    invoke-static {v1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/jg;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ja;->b(Lcom/google/android/gms/internal/aj;)V

    :cond_0
    return-void
.end method
