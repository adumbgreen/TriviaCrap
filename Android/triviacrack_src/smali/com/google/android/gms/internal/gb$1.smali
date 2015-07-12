.class Lcom/google/android/gms/internal/gb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bx;

.field final synthetic b:Lcom/google/android/gms/internal/gb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/internal/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$1;->b:Lcom/google/android/gms/internal/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$1;->a:Lcom/google/android/gms/internal/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$1;->a:Lcom/google/android/gms/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bx;->k()V

    return-void
.end method
