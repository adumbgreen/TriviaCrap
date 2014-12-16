.class Lcom/etermax/gamescommon/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/m;->a(Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/m;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/m;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/etermax/gamescommon/m$1;->a:Lcom/etermax/gamescommon/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/etermax/gamescommon/m$1;->a:Lcom/etermax/gamescommon/m;

    iget-object v0, v0, Lcom/etermax/gamescommon/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/etermax/gamescommon/m$1;->a:Lcom/etermax/gamescommon/m;

    iget-object v0, v0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/m$1;->a:Lcom/etermax/gamescommon/m;

    iget-object v1, v1, Lcom/etermax/gamescommon/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method
