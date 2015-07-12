.class final Lcom/google/android/gms/internal/ex$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ex;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dv;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/dt;

.field final synthetic c:Lcom/google/android/gms/internal/fa;

.field final synthetic d:Lcom/google/android/gms/internal/gc;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/fa;Lcom/google/android/gms/internal/gc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ex$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ex$1;->b:Lcom/google/android/gms/internal/dt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ex$1;->c:Lcom/google/android/gms/internal/fa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ex$1;->d:Lcom/google/android/gms/internal/gc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ex$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ex$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ex$1;->b:Lcom/google/android/gms/internal/dt;

    iget-object v5, v3, Lcom/google/android/gms/internal/dt;->k:Lcom/google/android/gms/internal/ew;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ex$1;->c:Lcom/google/android/gms/internal/fa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fa;->a(Lcom/google/android/gms/internal/fz;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/ex$1;->c:Lcom/google/android/gms/internal/fa;

    iget-object v3, v3, Lcom/google/android/gms/internal/fa;->a:Lcom/google/android/gms/internal/al;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/ex$1;->c:Lcom/google/android/gms/internal/fa;

    iget-object v3, v3, Lcom/google/android/gms/internal/fa;->b:Lcom/google/android/gms/internal/al;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/al;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ex$1;->d:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/gc;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ex$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
