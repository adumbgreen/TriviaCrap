.class public Lcom/etermax/gamescommon/notification/gcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/notification/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/etermax/gamescommon/login/datasource/c;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 19
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/etermax/gamescommon/notification/gcm/b;

    move-object v1, v0

    invoke-interface {v1}, Lcom/etermax/gamescommon/notification/gcm/b;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/google/android/gcm/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-virtual {p2, v1}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method
