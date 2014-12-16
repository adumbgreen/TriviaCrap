.class public Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/profile/image/c;


# instance fields
.field private A:Lcom/etermax/gamescommon/profile/ui/e;

.field private B:Landroid/support/v4/app/Fragment;

.field protected a:Landroid/widget/ViewSwitcher;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

.field protected d:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected h:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/ImageView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/RelativeLayout;

.field protected q:Lcom/etermax/tools/widget/CustomFontTextView;

.field protected r:Landroid/view/View;

.field protected s:Landroid/widget/ImageView;

.field protected t:Landroid/widget/ImageView;

.field protected u:Landroid/view/View;

.field protected v:Lcom/etermax/gamescommon/login/datasource/a;

.field protected w:Lcom/etermax/tools/c/a;

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/profile/ui/k;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Lcom/etermax/gamescommon/profile/image/a;

.field private z:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Lcom/etermax/gamescommon/profile/ui/e;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->A:Lcom/etermax/gamescommon/profile/ui/e;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)[Ljava/lang/String;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 318
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 319
    const/4 v1, 0x0

    move v3, v1

    .line 321
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 322
    const/4 v6, 0x0

    .line 323
    const-wide/16 v4, 0x0

    .line 324
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v4

    if-lez v1, :cond_3

    .line 327
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v11, v4

    move-object v4, v2

    move-wide v1, v11

    :goto_2
    move-object v6, v4

    move-wide v4, v1

    goto :goto_1

    .line 330
    :cond_0
    if-nez v6, :cond_2

    .line 338
    :cond_1
    return-object v7

    .line 333
    :cond_2
    aput-object v6, v7, v3

    .line 334
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 336
    goto :goto_0

    :cond_3
    move-wide v1, v4

    move-object v4, v6

    goto :goto_2
.end method

.method static synthetic b(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->B:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 388
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V

    .line 421
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->B:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/k;)V

    .line 422
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->y:Lcom/etermax/gamescommon/profile/image/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/image/a;->a(IILandroid/content/Intent;)V

    .line 359
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/k;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->B:Landroid/support/v4/app/Fragment;

    .line 146
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->z:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1, p2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 147
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 148
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->y:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->B:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p0}, Lcom/etermax/gamescommon/profile/image/a;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/profile/image/c;)V

    .line 152
    :cond_0
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->isFbShowPicture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_1
    invoke-static {p2}, Lcom/etermax/gamescommon/profile/ui/e;->a(Lcom/etermax/gamescommon/k;)Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->A:Lcom/etermax/gamescommon/profile/ui/e;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$1;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public a(Lcom/etermax/tools/nationality/Nationality;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->s:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/etermax/tools/nationality/NationalityManager;->getFlagResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void

    .line 257
    :cond_0
    if-eqz p2, :cond_1

    .line 258
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->g:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->h:Lcom/etermax/tools/widget/CustomFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->g:Lcom/etermax/tools/widget/CustomFontTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->h:Lcom/etermax/tools/widget/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->q:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->z:Lcom/etermax/gamescommon/dashboard/b;

    .line 132
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->x:Ljava/util/List;

    .line 135
    invoke-static {}, Lcom/etermax/tools/nationality/Nationality;->values()[Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->x:Ljava/util/List;

    new-instance v5, Lcom/etermax/gamescommon/profile/ui/k;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/etermax/tools/nationality/NationalityManager;->getName(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v3, v6}, Lcom/etermax/gamescommon/profile/ui/k;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;Lcom/etermax/tools/nationality/Nationality;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v4

    .line 139
    const-string v4, "NATIONALITY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception loading country name for iso code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 343
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 345
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f19999a

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 351
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 352
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 353
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->d:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAge(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 244
    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->opponents_age:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public setFlags(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 282
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->a(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->j:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getFlagResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->j:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->k:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 293
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->l:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getFlagResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->m:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->l:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 299
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->n:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getFlagResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->o:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 305
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->q:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->player_and_more:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->q:Lcom/etermax/tools/widget/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_3
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setOwnProfile(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->r:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$2;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$3;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSmallName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->d:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setUsernameWithArroba(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsernameWithArroba(Ljava/lang/String;)V

    .line 208
    return-void
.end method
