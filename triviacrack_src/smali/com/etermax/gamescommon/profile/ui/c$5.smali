.class Lcom/etermax/gamescommon/profile/ui/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/etermax/gamescommon/profile/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/c;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/c$5;->b:Lcom/etermax/gamescommon/profile/ui/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/profile/ui/c$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$5;->b:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Landroid/os/IBinder;)V

    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$5;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$5;->b:Lcom/etermax/gamescommon/profile/ui/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
