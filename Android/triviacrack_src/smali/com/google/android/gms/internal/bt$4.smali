.class Lcom/google/android/gms/internal/bt$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bt;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bt$4;->a:Lcom/google/android/gms/internal/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt$4;->a:Lcom/google/android/gms/internal/bt;

    invoke-static {v0}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
