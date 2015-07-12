.class public Lcom/etermax/tools/social/twitter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:I


# instance fields
.field a:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ltwitter4j/Twitter;

.field private e:Ltwitter4j/auth/RequestToken;

.field private f:Ltwitter4j/auth/AccessToken;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/etermax/tools/social/twitter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x193

    sput v0, Lcom/etermax/tools/social/twitter/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->e:Ltwitter4j/auth/RequestToken;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a;->e:Ltwitter4j/auth/RequestToken;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->e()V

    .line 144
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->e:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v0}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/etermax/tools/social/twitter/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/AccessToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/etermax/tools/social/twitter/a;->a(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method private a(Ltwitter4j/auth/AccessToken;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 203
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->g:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->h:Ljava/lang/String;

    .line 205
    return-void
.end method

.method static synthetic b(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/etermax/tools/social/twitter/a;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/tools/social/twitter/a;->f:Ltwitter4j/auth/AccessToken;

    return-object p1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/etermax/tools/social/twitter/a$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/tools/social/twitter/a$2;-><init>(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method static synthetic b(Lcom/etermax/tools/social/twitter/a;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/etermax/tools/social/twitter/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v2}, Ltwitter4j/Twitter;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 139
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    .line 135
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/Twitter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/tools/social/twitter/a;)Lcom/etermax/tools/social/twitter/c;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->j:Lcom/etermax/tools/social/twitter/c;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->j:Lcom/etermax/tools/social/twitter/c;

    const-string v1, "Login error"

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/twitter/c;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/a;->b()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->j:Lcom/etermax/tools/social/twitter/c;

    invoke-interface {v0}, Lcom/etermax/tools/social/twitter/c;->a()V

    .line 197
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->f()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/etermax/tools/social/twitter/a;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->g:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->h:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->f()V

    .line 211
    return-void
.end method

.method static synthetic f(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tw_access_token"

    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tw_access_secret"

    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method static synthetic g(Lcom/etermax/tools/social/twitter/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/tools/social/twitter/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->d()V

    return-void
.end method

.method static synthetic i(Lcom/etermax/tools/social/twitter/a;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->f:Ltwitter4j/auth/AccessToken;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/social/twitter/b;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/social/twitter/b;

    invoke-interface {v0}, Lcom/etermax/tools/social/twitter/b;->r()Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/social/twitter/b;

    invoke-interface {v0}, Lcom/etermax/tools/social/twitter/b;->s()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Ltwitter4j/TwitterFactory;

    invoke-direct {v2}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v2

    iput-object v2, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    .line 73
    iget-object v2, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v2, v1, v0}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->a:Landroid/content/Context;

    const-string v1, "TW_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->c:Landroid/content/SharedPreferences;

    .line 75
    iput-object v3, p0, Lcom/etermax/tools/social/twitter/a;->f:Ltwitter4j/auth/AccessToken;

    .line 76
    iput-object v3, p0, Lcom/etermax/tools/social/twitter/a;->e:Ltwitter4j/auth/RequestToken;

    .line 78
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/social/twitter/b;

    invoke-interface {v0}, Lcom/etermax/tools/social/twitter/b;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/a;->i:Ljava/lang/String;

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationTWManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Activity;Lcom/etermax/tools/social/twitter/c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    const-string v0, "TwitterManager"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lcom/etermax/tools/social/twitter/a;->j:Lcom/etermax/tools/social/twitter/c;

    .line 88
    new-instance v0, Lcom/etermax/tools/social/twitter/a$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/tools/social/twitter/a$1;-><init>(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/etermax/tools/social/twitter/a$1;->a(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    new-instance v0, Lcom/etermax/tools/social/twitter/a$3;

    invoke-direct {v0, p0, p1}, Lcom/etermax/tools/social/twitter/a$3;-><init>(Lcom/etermax/tools/social/twitter/a;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    if-eqz p2, :cond_1

    .line 229
    :try_start_0
    new-instance v0, Ltwitter4j/StatusUpdate;

    invoke-direct {v0, p1}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 230
    const-string v1, "move"

    invoke-virtual {v0, v1, p2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 231
    iget-object v1, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v1, v0}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    sget v2, Lcom/etermax/tools/social/twitter/a;->b:I

    if-eq v1, v2, :cond_0

    .line 237
    throw v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/a;->a()V

    .line 215
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/a;->e()V

    .line 216
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/social/twitter/a;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 224
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/a;->d:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->createFriendship(Ljava/lang/String;)Ltwitter4j/User;

    .line 244
    return-void
.end method
