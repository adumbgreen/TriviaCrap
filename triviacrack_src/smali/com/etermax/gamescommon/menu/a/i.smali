.class public Lcom/etermax/gamescommon/menu/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/etermax/gamescommon/menu/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/etermax/gamescommon/menu/a/d;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/String;Lcom/etermax/gamescommon/menu/a/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/i;->a:Ljava/lang/String;

    .line 825
    iput-object p3, p0, Lcom/etermax/gamescommon/menu/a/i;->b:Lcom/etermax/gamescommon/menu/a/f;

    .line 826
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 830
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/i;)Lcom/etermax/gamescommon/menu/a/i;

    .line 831
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v3, p0, Lcom/etermax/gamescommon/menu/a/i;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/etermax/gamescommon/menu/a/i;->b:Lcom/etermax/gamescommon/menu/a/f;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/menu/a/g;-><init>(Lcom/etermax/gamescommon/menu/a/d;Ljava/lang/String;Lcom/etermax/gamescommon/menu/a/f;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/d;Lcom/etermax/gamescommon/menu/a/g;)Lcom/etermax/gamescommon/menu/a/g;

    .line 832
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/d;->e(Lcom/etermax/gamescommon/menu/a/d;)Lcom/etermax/gamescommon/menu/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/i;->c:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/d;->d(Lcom/etermax/gamescommon/menu/a/d;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/g;->a(Ljava/lang/Object;)Z

    .line 833
    return-void
.end method
