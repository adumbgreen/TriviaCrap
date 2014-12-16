.class Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(JLandroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/NewGameActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/gamescommon/j;

.field final synthetic c:Landroid/widget/BaseAdapter;

.field final synthetic d:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;JLcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->d:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iput-wide p2, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->a:J

    iput-object p4, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->b:Lcom/etermax/gamescommon/j;

    iput-object p5, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->c:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 312
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->b:Lcom/etermax/gamescommon/j;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 313
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 314
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->b:Lcom/etermax/gamescommon/j;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 307
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 308
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->d:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->j:Lcom/etermax/gamescommon/datasource/e;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/e;->a(Ljava/lang/Long;)V

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method
