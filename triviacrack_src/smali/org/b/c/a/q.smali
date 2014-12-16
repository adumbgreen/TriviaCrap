.class public Lorg/b/c/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/g;


# instance fields
.field private a:Ljava/net/Proxy;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/c/a/q;->b:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/b/c/a/q;->c:I

    .line 48
    iput v1, p0, Lorg/b/c/a/q;->d:I

    .line 50
    iput v1, p0, Lorg/b/c/a/q;->e:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .line 137
    :goto_0
    const-class v1, Ljava/net/HttpURLConnection;

    invoke-static {v1, v0}, Lorg/b/d/a;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 138
    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/net/URI;Lorg/b/c/f;)Lorg/b/c/a/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lorg/b/c/a/q;->a:Ljava/net/Proxy;

    invoke-virtual {p0, v0, v1}, Lorg/b/c/a/q;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 116
    invoke-virtual {p2}, Lorg/b/c/f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/b/c/a/q;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lorg/b/c/a/q;->b:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lorg/b/c/a/p;

    invoke-direct {v0, v1}, Lorg/b/c/a/p;-><init>(Ljava/net/HttpURLConnection;)V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/b/c/a/s;

    iget v2, p0, Lorg/b/c/a/q;->c:I

    invoke-direct {v0, v1, v2}, Lorg/b/c/a/s;-><init>(Ljava/net/HttpURLConnection;I)V

    goto :goto_0
.end method

.method protected a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    iget v0, p0, Lorg/b/c/a/q;->d:I

    if-ltz v0, :cond_0

    .line 152
    iget v0, p0, Lorg/b/c/a/q;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    :cond_0
    iget v0, p0, Lorg/b/c/a/q;->e:I

    if-ltz v0, :cond_1

    .line 155
    iget v0, p0, Lorg/b/c/a/q;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 157
    :cond_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 158
    const-string v0, "GET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 163
    :goto_0
    const-string v0, "PUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "POST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 168
    :goto_1
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    return-void

    .line 161
    :cond_3
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1
.end method
