.class public Lcom/google/android/gms/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/f;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ew;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V

    const/4 v4, 0x0

    move-object v0, p1

    move v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/h$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/h$1;-><init>(Lcom/google/android/gms/internal/h;Lcom/google/android/gms/internal/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/gc;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    return-void
.end method
