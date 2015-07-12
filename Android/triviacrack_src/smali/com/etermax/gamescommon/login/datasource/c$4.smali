.class Lcom/etermax/gamescommon/login/datasource/c$4;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

.field final synthetic b:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/c$4;->a:Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$4;->b:Lcom/etermax/gamescommon/login/datasource/c;

    new-instance v1, Lcom/etermax/gamescommon/login/datasource/c$4$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/datasource/c$4$1;-><init>(Lcom/etermax/gamescommon/login/datasource/c$4;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 344
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/login/datasource/c$4;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
