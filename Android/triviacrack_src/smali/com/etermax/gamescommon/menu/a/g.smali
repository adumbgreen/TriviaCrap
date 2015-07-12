.class public Lcom/etermax/gamescommon/menu/a/g;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/d;

.field private b:Ljava/lang/String;

.field private c:Lcom/etermax/gamescommon/menu/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/menu/a/f",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


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
    .line 842
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/g;->a:Lcom/etermax/gamescommon/menu/a/d;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    .line 843
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/g;->b:Ljava/lang/String;

    .line 844
    iput-object p3, p0, Lcom/etermax/gamescommon/menu/a/g;->c:Lcom/etermax/gamescommon/menu/a/f;

    .line 845
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 852
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/g;->a:Lcom/etermax/gamescommon/menu/a/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/d;->a:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/g;->c:Lcom/etermax/gamescommon/menu/a/f;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/menu/a/f;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 862
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/g;->c:Lcom/etermax/gamescommon/menu/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/menu/a/f;->a(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 836
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/g;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 836
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/menu/a/g;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/g;->d:Z

    .line 877
    return-void
.end method
