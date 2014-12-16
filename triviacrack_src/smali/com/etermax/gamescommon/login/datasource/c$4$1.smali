.class Lcom/etermax/gamescommon/login/datasource/c$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c$4;->a([Ljava/lang/Void;)Ljava/lang/Void;
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
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/c$4;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c$4;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v2, v2, Lcom/etermax/gamescommon/login/datasource/c$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/a;->a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V

    .line 353
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->i:Lcom/etermax/gamescommon/notification/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/gamescommon/login/datasource/c;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/notification/c;->a(Landroid/content/Context;Z)V

    .line 355
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a:Lcom/etermax/gamescommon/login/datasource/c$4;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;->getInstallation_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->f(Ljava/lang/String;)V

    .line 358
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c$4$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
