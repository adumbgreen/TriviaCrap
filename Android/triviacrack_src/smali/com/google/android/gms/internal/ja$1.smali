.class Lcom/google/android/gms/internal/ja$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ja;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ja$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;)Lcom/google/android/gms/internal/jd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;)Lcom/google/android/gms/internal/jd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;)Lcom/google/android/gms/internal/jd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja$1;->a:Lcom/google/android/gms/internal/ja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;)Lcom/google/android/gms/internal/jd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->a()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
