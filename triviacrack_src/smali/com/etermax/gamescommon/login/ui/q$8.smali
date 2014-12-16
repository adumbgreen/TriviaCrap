.class Lcom/etermax/gamescommon/login/ui/q$8;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/q;->i()Lcom/etermax/gamescommon/b/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/q;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/q$8;->a:Lcom/etermax/gamescommon/login/ui/q;

    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "login_fb_from_password"

    return-object v0
.end method
