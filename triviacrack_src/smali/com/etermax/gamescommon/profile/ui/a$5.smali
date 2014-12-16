.class Lcom/etermax/gamescommon/profile/ui/a$5;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/a;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/profile/ui/a",
        "<*>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/gamescommon/profile/ui/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->b:Lcom/etermax/gamescommon/profile/ui/a;

    iput-wide p3, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->a:J

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/a$5;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/profile/ui/a",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 195
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/profile/ui/a",
            "<*>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->b:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/ui/h;->setBlocked(Z)V

    .line 201
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->b:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->d()V

    .line 203
    new-instance v0, Lcom/etermax/gamescommon/b/au;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/au;-><init>()V

    .line 204
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/au;->a(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->b:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/a;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 206
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    check-cast p1, Lcom/etermax/gamescommon/profile/ui/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$5;->a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    check-cast p1, Lcom/etermax/gamescommon/profile/ui/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/a$5;->a(Lcom/etermax/gamescommon/profile/ui/a;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->b:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->d:Lcom/etermax/gamescommon/datasource/e;

    iget-wide v1, p0, Lcom/etermax/gamescommon/profile/ui/a$5;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->d(J)Ljava/lang/Void;

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method
