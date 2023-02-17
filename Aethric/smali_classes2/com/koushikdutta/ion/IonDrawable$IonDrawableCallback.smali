.class Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;
.super Ljava/lang/Object;
.source "IonDrawable.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IonDrawableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapKey:Ljava/lang/String;

.field private ion:Lcom/koushikdutta/ion/Ion;

.field private ionDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/koushikdutta/ion/IonDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/IonDrawable;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->ionDrawableRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private unregister(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0, p2, p0}, Lcom/koushikdutta/async/util/HashList;->removeItem(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 140
    instance-of v0, p2, Lcom/koushikdutta/ion/TransformBitmap;

    if-eqz v0, :cond_1

    .line 141
    move-object v0, p2

    check-cast v0, Lcom/koushikdutta/ion/TransformBitmap;

    .line 142
    iget-object v1, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v2, v0, Lcom/koushikdutta/ion/TransformBitmap;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/HashList;->remove(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 145
    iget-object v1, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v2, v0, Lcom/koushikdutta/ion/TransformBitmap;->downloadKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/util/HashList;->removeItem(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object p2, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v0, v0, Lcom/koushikdutta/ion/TransformBitmap;->downloadKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 151
    :cond_1
    instance-of v0, p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    if-eqz v0, :cond_2

    .line 152
    check-cast p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    .line 153
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object p2, p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/HashList;->remove(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->processDeferred()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->ionDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/IonDrawable;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v1, p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 167
    invoke-virtual {v0, p2, v1}, Lcom/koushikdutta/ion/IonDrawable;->setBitmap(Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/ResponseServedFrom;)Lcom/koushikdutta/ion/IonDrawable;

    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lcom/koushikdutta/ion/IonDrawable;->updateLayers()Lcom/koushikdutta/ion/IonDrawable;

    .line 169
    invoke-static {v0}, Lcom/koushikdutta/ion/IonDrawable;->access$000(Lcom/koushikdutta/ion/IonDrawable;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 171
    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method public register(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->bitmapKey:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->ion:Lcom/koushikdutta/ion/Ion;

    .line 119
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->ion:Lcom/koushikdutta/ion/Ion;

    if-ne v2, p1, :cond_0

    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->ion:Lcom/koushikdutta/ion/Ion;

    .line 122
    iput-object p2, p0, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->bitmapKey:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/util/HashList;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/ion/IonDrawable$IonDrawableCallback;->unregister(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;)V

    return-void
.end method
