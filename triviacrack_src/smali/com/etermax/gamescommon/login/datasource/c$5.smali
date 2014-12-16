.class Lcom/etermax/gamescommon/login/datasource/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/a;->a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V

    .line 415
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Ljava/lang/String;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->b(Ljava/lang/String;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->a(Z)V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$5;->e:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/c;->a()Z

    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
