.class Lcom/etermax/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private final c:Landroid/database/DataSetObservable;

.field private final d:Landroid/widget/ListAdapter;

.field private e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/widget/e;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/f;->c:Landroid/database/DataSetObservable;

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/etermax/widget/f;->e:I

    .line 241
    iput-object p2, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    .line 242
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/etermax/widget/f;->f:Z

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    .line 249
    iget-object v0, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etermax/widget/f;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/widget/f;->b:Z

    .line 250
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/widget/e;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/e;

    .line 274
    iget-boolean v0, v0, Lcom/etermax/widget/e;->c:Z

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iget v0, p0, Lcom/etermax/widget/f;->e:I

    if-eq v0, p1, :cond_1

    .line 266
    iput p1, p0, Lcom/etermax/widget/f;->e:I

    .line 267
    invoke-virtual {p0}, Lcom/etermax/widget/f;->b()V

    .line 269
    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 310
    iget-boolean v1, p0, Lcom/etermax/widget/f;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/etermax/widget/f;->c:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 474
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/etermax/widget/f;->f:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    .line 342
    if-ge p1, v0, :cond_1

    .line 343
    iget v0, p0, Lcom/etermax/widget/f;->e:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/e;

    iget-object v0, v0, Lcom/etermax/widget/e;->b:Ljava/lang/Object;

    .line 355
    :goto_0
    return-object v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :cond_1
    sub-int v0, p1, v0

    .line 352
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 354
    if-ge v0, v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 366
    sub-int v0, p1, v0

    .line 367
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 368
    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 372
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    .line 420
    if-ge p1, v0, :cond_1

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    rem-int v1, p1, v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 422
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    if-lt p1, v0, :cond_2

    .line 425
    sub-int v0, p1, v0

    .line 426
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 427
    if-ge v0, v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 432
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    .line 387
    if-ge p1, v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/e;

    iget-object v0, v0, Lcom/etermax/widget/e;->a:Landroid/view/ViewGroup;

    .line 390
    iget v1, p0, Lcom/etermax/widget/f;->e:I

    rem-int v1, p1, v1

    if-nez v1, :cond_0

    move-object p2, v0

    .line 410
    :goto_0
    return-object p2

    .line 393
    :cond_0
    if-nez p2, :cond_1

    .line 394
    new-instance p2, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 398
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 405
    :cond_2
    sub-int v0, p1, v0

    .line 407
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 409
    if-ge v0, v1, :cond_3

    .line 410
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 414
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/etermax/widget/f;->a()I

    move-result v0

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    mul-int/2addr v0, v1

    .line 320
    if-ge p1, v0, :cond_1

    .line 321
    iget v0, p0, Lcom/etermax/widget/f;->e:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/f;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/etermax/widget/f;->e:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/e;

    iget-boolean v0, v0, Lcom/etermax/widget/e;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_1
    sub-int v0, p1, v0

    .line 328
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 330
    if-ge v0, v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 335
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/etermax/widget/f;->c:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 449
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/etermax/widget/f;->c:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/etermax/widget/f;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 457
    :cond_0
    return-void
.end method
