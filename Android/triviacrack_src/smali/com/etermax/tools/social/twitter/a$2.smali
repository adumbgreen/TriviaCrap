.class Lcom/etermax/tools/social/twitter/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/twitter/a;->b(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/etermax/tools/social/twitter/a;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    iput-object p2, p0, Lcom/etermax/tools/social/twitter/a$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    new-instance v1, Ltwitter4j/auth/AccessToken;

    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v2}, Lcom/etermax/tools/social/twitter/a;->f(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v3}, Lcom/etermax/tools/social/twitter/a;->g(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->a(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/AccessToken;)V

    .line 155
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->c(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/Twitter;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    .line 156
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/a;->h(Lcom/etermax/tools/social/twitter/a;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a$2;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/etermax/tools/social/twitter/a;->b(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V

    goto :goto_0
.end method
