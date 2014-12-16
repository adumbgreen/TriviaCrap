.class Lcom/amazon/device/ads/AdContainer$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer;->enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdContainer;

.field final synthetic val$buttonSize:I

.field final synthetic val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$closePressed:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$position:Lcom/amazon/device/ads/RelativePosition;

.field final synthetic val$showImage:Z

.field final synthetic val$tapTargetSize:I


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;IZILcom/amazon/device/ads/RelativePosition;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer$2;->val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/amazon/device/ads/AdContainer$2;->val$closePressed:Landroid/graphics/drawable/BitmapDrawable;

    iput p4, p0, Lcom/amazon/device/ads/AdContainer$2;->val$tapTargetSize:I

    iput-boolean p5, p0, Lcom/amazon/device/ads/AdContainer$2;->val$showImage:Z

    iput p6, p0, Lcom/amazon/device/ads/AdContainer$2;->val$buttonSize:I

    iput-object p7, p0, Lcom/amazon/device/ads/AdContainer$2;->val$position:Lcom/amazon/device/ads/RelativePosition;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdContainer$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 497
    const/4 v0, 0x0

    .line 498
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-nez v2, :cond_0

    .line 503
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0, v2}, Lcom/amazon/device/ads/AdContainer;->access$302(Lcom/amazon/device/ads/AdContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 504
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const-string v2, "nativeCloseButton"

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/amazon/device/ads/AdContainer;->access$402(Lcom/amazon/device/ads/AdContainer;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 506
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v2, "nativeCloseButtonImage"

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 507
    const/4 v0, 0x1

    .line 509
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->val$closeNormal:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 514
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    new-instance v0, Lcom/amazon/device/ads/AdContainer$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdContainer$2$1;-><init>(Lcom/amazon/device/ads/AdContainer$2;)V

    .line 521
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    new-instance v0, Lcom/amazon/device/ads/AdContainer$2$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdContainer$2$2;-><init>(Lcom/amazon/device/ads/AdContainer$2;)V

    .line 541
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 544
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/amazon/device/ads/AdContainer$2;->val$tapTargetSize:I

    iget v2, p0, Lcom/amazon/device/ads/AdContainer$2;->val$tapTargetSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 545
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 546
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 547
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1, v2}, Lcom/amazon/device/ads/AdContainer;->access$602(Lcom/amazon/device/ads/AdContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 548
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string v2, "nativeCloseButtonContainer"

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    :cond_1
    return-object v4

    .line 509
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdContainer$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x9

    const/4 v6, -0x1

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 559
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdContainer$2;->val$showImage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/amazon/device/ads/AdContainer$2;->val$buttonSize:I

    iget v2, p0, Lcom/amazon/device/ads/AdContainer$2;->val$buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 562
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 563
    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/amazon/device/ads/AdContainer$2;->val$tapTargetSize:I

    iget v2, p0, Lcom/amazon/device/ads/AdContainer$2;->val$tapTargetSize:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 576
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->val$position:Lcom/amazon/device/ads/RelativePosition;

    .line 577
    iget-object v2, p0, Lcom/amazon/device/ads/AdContainer$2;->val$position:Lcom/amazon/device/ads/RelativePosition;

    if-nez v2, :cond_2

    .line 579
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    .line 581
    :cond_2
    sget-object v2, Lcom/amazon/device/ads/AdContainer$5;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {v0}, Lcom/amazon/device/ads/RelativePosition;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 611
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 615
    :goto_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$600(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 617
    return-void

    .line 565
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdContainer$2;->val$showImage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/AdContainer;->access$300(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer$2;->this$0:Lcom/amazon/device/ads/AdContainer;

    #getter for: Lcom/amazon/device/ads/AdContainer;->closeButtonImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/amazon/device/ads/AdContainer;->access$400(Lcom/amazon/device/ads/AdContainer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 584
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 585
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 588
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 589
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 592
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 593
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 596
    :pswitch_3
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 599
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 600
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 603
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 604
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 607
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 608
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
