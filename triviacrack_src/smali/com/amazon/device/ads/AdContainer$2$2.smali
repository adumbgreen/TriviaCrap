.class Lcom/amazon/device/ads/AdContainer$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdContainer$2;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$2$2;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 537
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2$2;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    iget-object v0, v0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2$2;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    iget-object v1, v1, Lcom/amazon/device/ads/AdContainer$2;->val$closePressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2$2;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    iget-object v0, v0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2$2;->this$1:Lcom/amazon/device/ads/AdContainer$2;

    iget-object v1, v1, Lcom/amazon/device/ads/AdContainer$2;->val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
