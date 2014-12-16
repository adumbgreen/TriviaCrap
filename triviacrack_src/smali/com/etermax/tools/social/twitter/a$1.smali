.class Lcom/etermax/tools/social/twitter/a$1;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/twitter/a;->a(Landroid/app/Activity;Lcom/etermax/tools/social/twitter/c;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Landroid/app/Activity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/etermax/tools/social/twitter/a;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iput-object p3, p0, Lcom/etermax/tools/social/twitter/a$1;->a:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/a$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/social/twitter/a$1;->b(Z)V

    .line 101
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 102
    instance-of v0, p2, Ltwitter4j/TwitterException;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->d(Lcom/etermax/tools/social/twitter/a;)Lcom/etermax/tools/social/twitter/c;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/etermax/tools/social/twitter/c;->a(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_0
    return-void
.end method

.method protected a(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->e(Lcom/etermax/tools/social/twitter/a;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tw_access_token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->e(Lcom/etermax/tools/social/twitter/a;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tw_access_secret"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->b(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->f(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->g(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->b(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/social/twitter/a$1;->a(Landroid/app/Activity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p1, Landroid/app/Activity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/social/twitter/a$1;->a(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->c(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/Twitter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/etermax/tools/social/twitter/a$1;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v3}, Lcom/etermax/tools/social/twitter/a;->b(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
