.class Lcom/mopub/mobileads/MraidView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$1;->a:Lcom/mopub/mobileads/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$1;->a:Lcom/mopub/mobileads/MraidView;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/ViewGestureDetector;->a(Landroid/view/MotionEvent;)V

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 124
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
