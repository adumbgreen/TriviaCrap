.class public Lcom/etermax/tools/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "base_url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a/a/f;

    invoke-interface {v0, v3}, Lcom/etermax/tools/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "base_url"

    iget-object v2, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a/a/f;

    invoke-interface {v0, v3}, Lcom/etermax/tools/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    const-string v1, "angrygames_url_manager_preferences_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a/a/f;

    invoke-interface {v0, p1}, Lcom/etermax/tools/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/a/a/f;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationURLManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "base_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    iput-object p1, p0, Lcom/etermax/tools/a/a/j;->b:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a/a/f;

    invoke-interface {v0}, Lcom/etermax/tools/a/a/f;->n()V

    .line 69
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/tools/a/a/j;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a/a/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/etermax/tools/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/etermax/tools/a/a/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
