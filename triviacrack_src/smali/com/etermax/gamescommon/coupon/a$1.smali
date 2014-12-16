.class Lcom/etermax/gamescommon/coupon/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/coupon/a;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/coupon/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/coupon/a;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/gamescommon/coupon/a$1;->a:Lcom/etermax/gamescommon/coupon/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    packed-switch p2, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a$1;->a:Lcom/etermax/gamescommon/coupon/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/coupon/a;->a(Lcom/etermax/gamescommon/coupon/a;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
