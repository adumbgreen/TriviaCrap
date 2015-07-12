.class Lcom/smartadserver/android/library/ui/SASAdView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;IIIIZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    iput p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->b:I

    iput p4, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->c:I

    iput p5, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->d:I

    iput p6, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->e:I

    iput-boolean p7, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->f:Z

    iput-boolean p8, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->g:Z

    iput-boolean p9, p0, Lcom/smartadserver/android/library/ui/SASAdView$6;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 922
    const/4 v1, 0x0

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    if-eqz v2, :cond_0

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->l:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/d/a;->f()Z

    move-result v1

    .line 928
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 929
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smartadserver/android/library/ui/SASAdView;->m:Z

    .line 932
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const/4 v1, -0x1

    .line 933
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, -0x1

    .line 937
    :goto_1
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v3, v3, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/g;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    .line 941
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v4

    .line 943
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->b:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->c:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 1057
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->d(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 1061
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1146
    :goto_4
    return-void

    .line 932
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->b:I

    goto :goto_0

    .line 933
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->c:I

    goto :goto_1

    .line 939
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 948
    :cond_8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 949
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 952
    invoke-virtual {v4, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 953
    iget v5, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v12, Landroid/graphics/Rect;->top:I

    .line 954
    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 955
    iget v5, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v12, Landroid/graphics/Rect;->left:I

    .line 956
    iget v5, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v4, v5, v4

    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 959
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v5, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getLocationOnScreen([I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 964
    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v13, Landroid/graphics/Rect;->top:I

    .line 965
    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v13, Landroid/graphics/Rect;->left:I

    .line 967
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->d:I

    .line 968
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->e:I

    .line 972
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->f:Z

    if-eqz v4, :cond_c

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v4

    .line 981
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->g:Z

    if-nez v7, :cond_1d

    .line 983
    const-wide/high16 v7, 0x3ff0

    .line 984
    if-lez v1, :cond_9

    .line 985
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v9, v9

    int-to-double v14, v1

    div-double/2addr v9, v14

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 987
    :cond_9
    if-lez v2, :cond_1c

    .line 988
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v10}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-double v9, v9

    int-to-double v14, v2

    div-double/2addr v9, v14

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    move-wide v9, v7

    .line 991
    :goto_6
    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v9, v7

    if-gez v7, :cond_1b

    .line 993
    if-lez v1, :cond_1a

    .line 994
    int-to-double v7, v1

    mul-double/2addr v7, v9

    double-to-int v8, v7

    .line 997
    :goto_7
    if-lez v2, :cond_a

    .line 998
    int-to-double v1, v2

    mul-double/2addr v1, v9

    double-to-int v2, v1

    .line 1001
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v7, "Resize properties are wider than max size but offscreen is not allowed => cropping"

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v2

    .line 1005
    :goto_8
    if-lez v8, :cond_19

    .line 1006
    iget v1, v13, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1007
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v8

    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1009
    :goto_9
    if-lez v7, :cond_18

    .line 1010
    iget v1, v13, Landroid/graphics/Rect;->top:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v9}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v1, v6

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1011
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    iget v6, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v5, v7

    move v6, v8

    .line 1015
    :goto_a
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1016
    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1019
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_d

    .line 1020
    const/16 v5, 0x50

    .line 1021
    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v1, v5

    .line 1029
    :goto_b
    and-int/lit8 v4, v4, 0x4

    if-gtz v4, :cond_b

    if-gez v6, :cond_e

    .line 1031
    :cond_b
    or-int/lit8 v1, v1, 0x3

    .line 1032
    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1045
    :goto_c
    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1047
    if-eqz v3, :cond_10

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1, v11}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    goto/16 :goto_3

    .line 976
    :cond_c
    const/4 v4, 0x5

    goto/16 :goto_5

    .line 1024
    :cond_d
    const/16 v5, 0x30

    .line 1025
    iget v7, v13, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v1, v5

    goto :goto_b

    .line 1035
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_f

    .line 1036
    or-int/lit8 v1, v1, 0x5

    .line 1037
    iget v4, v12, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    .line 1041
    :cond_f
    or-int/lit8 v1, v1, 0x3

    .line 1042
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, v6, 0x2

    sub-int/2addr v4, v5

    iget v5, v12, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_c

    .line 1051
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    .line 1068
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededTopPadding()I

    move-result v1

    .line 1069
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->f:Z

    if-eqz v2, :cond_12

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/smartadserver/android/library/ui/SASAdView;->setPadding(IIII)V

    .line 1077
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1078
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1080
    if-eqz v3, :cond_13

    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v11}, Lcom/smartadserver/android/library/ui/SASAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1085
    if-eqz v3, :cond_14

    .line 1086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/g;->setVisibility(I)V

    .line 1091
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/g;->d()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1093
    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$6$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView$6$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$6;Ljava/net/URL;)V

    .line 1121
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->h:Z

    if-eqz v1, :cond_16

    .line 1133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->e(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASAdView$6$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView$6$2;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$6;)V

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 1123
    :catch_0
    move-exception v1

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/String;)V

    goto :goto_d

    .line 1127
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    move v1, v5

    move v6, v8

    move v5, v7

    goto/16 :goto_a

    :cond_19
    move v2, v6

    goto/16 :goto_9

    :cond_1a
    move v8, v1

    goto/16 :goto_7

    :cond_1b
    move v7, v2

    move v8, v1

    goto/16 :goto_8

    :cond_1c
    move-wide v9, v7

    goto/16 :goto_6

    :cond_1d
    move/from16 v16, v5

    move v5, v2

    move v2, v6

    move v6, v1

    move/from16 v1, v16

    goto/16 :goto_a
.end method
