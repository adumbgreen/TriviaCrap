.class Lcom/etermax/tools/social/twitter/a$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/twitter/a;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/tools/social/twitter/a;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    iput-object p2, p0, Lcom/etermax/tools/social/twitter/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->c(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/Twitter;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v2}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/RequestToken;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/tools/social/twitter/a$3;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->b(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;

    .line 176
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->i(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/AccessToken;)V

    .line 177
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->h(Lcom/etermax/tools/social/twitter/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->d(Lcom/etermax/tools/social/twitter/a;)Lcom/etermax/tools/social/twitter/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$3;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v1}, Lcom/etermax/tools/social/twitter/a;->d(Lcom/etermax/tools/social/twitter/a;)Lcom/etermax/tools/social/twitter/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/etermax/tools/social/twitter/c;->a(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
